#!/usr/bin/env python3
"""Bundle generated Lean row modules without changing their declarations.

The generator used for the B699 low-index rows deliberately emits one Lean
source file per small certificate.  On Windows, starting Lean for every such
file dominates the cost of an otherwise serial verification.  This utility is
an intentionally small, text-only transformation:

* the frozen ``outputs`` order is treated as a topological order;
* adjacent source files are concatenated into blocks of four or eight;
* an import whose target is in the same block is removed;
* an import whose target is in an earlier block is replaced by that block's
  module name;
* all other imports and all source text after the imports are retained.

It does not parse or rewrite Lean expressions.  The manifest and static audit
are therefore part of the candidate: a real Lean compile at the generated
``Original.lean`` root remains required before acceptance.
"""

from __future__ import annotations

import argparse
import collections
import hashlib
import json
import re
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Sequence


IMPORT_RE = re.compile(r"(?m)^import[ \t]+([^\r\n]*?)[ \t]*(?:\r?\n|$)")
DECL_RE = re.compile(
    r"(?m)^\s*(?:theorem|def|abbrev|opaque|structure|class|inductive|instance|example)"
    r"\s+(?:\([^\n]*?\)\s+)?([A-Za-z_][A-Za-z0-9_']*)"
)
OPTION_RE = re.compile(r"(?m)^\s*set_option\s+[^\r\n]+")
PRINT_RE = re.compile(r"(?m)^\s*#print axioms\s+[^\r\n]+")
FORBIDDEN_RE = re.compile(r"\b(?:axiom|native_decide|sorry\w*|admit)\b|Lean\.ofReduceBool")
IDENT_RE = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*$")


@dataclass(frozen=True)
class SourceUnit:
    """One source listed by the frozen row plan."""

    index: int
    path: Path
    module: str
    text: str
    imports: tuple[str, ...]
    body: str
    declarations: tuple[str, ...]
    options: tuple[str, ...]
    prints: tuple[str, ...]


@dataclass(frozen=True)
class RenderedBlock:
    index: int
    path: Path
    module: str
    source_indices: tuple[int, ...]
    source_modules: tuple[str, ...]
    imports: tuple[str, ...]
    text: str


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def quote_module_part(part: str) -> str:
    return part if IDENT_RE.fullmatch(part) else f"«{part}»"


def module_name(path: Path, repo_root: Path) -> str:
    """Return the Lean module name used by the repository's runner."""

    relative = path.resolve().relative_to(repo_root.resolve()).with_suffix("")
    return ".".join(quote_module_part(part) for part in relative.parts)


def parse_imports(text: str) -> tuple[str, ...]:
    return tuple(match.group(1).strip() for match in IMPORT_RE.finditer(text))


def strip_import_lines(text: str) -> str:
    return IMPORT_RE.sub("", text)


def command_names(pattern: re.Pattern[str], text: str) -> tuple[str, ...]:
    return tuple(match.group(1) for match in pattern.finditer(text))


def parse_source(index: int, path: Path, repo_root: Path) -> SourceUnit:
    text = path.read_text(encoding="utf-8")
    body = strip_import_lines(text).strip()
    return SourceUnit(
        index=index,
        path=path,
        module=module_name(path, repo_root),
        text=text,
        imports=parse_imports(text),
        body=body,
        declarations=command_names(DECL_RE, text),
        options=tuple(match.group(0).strip() for match in OPTION_RE.finditer(text)),
        prints=tuple(match.group(0).strip() for match in PRINT_RE.finditer(text)),
    )


def safe_write(path: Path, text: str) -> None:
    """Write a candidate file, preserving an existing different file."""

    path.parent.mkdir(parents=True, exist_ok=True)
    data = text.encode("utf-8")
    if path.exists():
        if path.read_bytes() != data:
            raise RuntimeError(f"existing differing candidate is preserved: {path}")
        return
    path.write_bytes(data)


def plan_paths(plan: dict) -> list[Path]:
    outputs = plan.get("outputs")
    if not isinstance(outputs, list) or not outputs:
        raise ValueError("row plan has no outputs")
    result = []
    for item in outputs:
        if not isinstance(item, dict) or not isinstance(item.get("path"), str):
            raise ValueError("row plan output entry lacks path")
        result.append(Path(item["path"].replace("\\", "/")))
    if len(set(result)) != len(result):
        raise ValueError("row plan has duplicate output paths")
    return result


def load_units(repo_root: Path, plan_path: Path) -> tuple[dict, list[SourceUnit], str]:
    plan_bytes = plan_path.read_bytes()
    plan = json.loads(plan_bytes.decode("utf-8"))
    paths = plan_paths(plan)
    expected = {
        item["path"]: item.get("sha256")
        for item in plan["outputs"]
        if isinstance(item, dict)
    }
    units: list[SourceUnit] = []
    for index, relative in enumerate(paths):
        path = (repo_root / relative).resolve()
        try:
            path.relative_to(repo_root.resolve())
        except ValueError as exc:
            raise ValueError(f"source escapes repository root: {relative}") from exc
        if not path.is_file():
            raise FileNotFoundError(path)
        actual = sha256_bytes(path.read_bytes())
        frozen = expected.get(str(relative))
        if frozen is None:
            # JSON may use the platform separator; accept the exact output
            # entry matched by position in that case.
            frozen = plan["outputs"][index].get("sha256")
        if frozen and actual != frozen:
            raise ValueError(f"source hash changed for {relative}: {actual} != {frozen}")
        units.append(parse_source(index, path, repo_root))
    modules = [unit.module for unit in units]
    if len(set(modules)) != len(modules):
        raise ValueError("source output paths do not have unique Lean module names")
    unit_by_module = {unit.module: unit for unit in units}
    unit_index = {unit.module: unit.index for unit in units}
    for unit in units:
        for imported in unit.imports:
            target = unit_by_module.get(imported)
            if target is None:
                continue
            if target.index >= unit.index:
                raise ValueError(
                    f"frozen outputs are not topological: {unit.path} imports {imported}"
                )
    return plan, units, sha256_bytes(plan_bytes)


def output_module(path: Path, repo_root: Path) -> str:
    return module_name(path, repo_root)


def render_blocks(
    units: Sequence[SourceUnit],
    *,
    block_size: int,
    output_dir: Path,
    repo_root: Path,
) -> list[RenderedBlock]:
    if block_size < 1:
        raise ValueError("block_size must be positive")
    if not units:
        raise ValueError("cannot render an empty source set")

    unit_by_module = {unit.module: unit for unit in units}
    block_of_index: dict[int, int] = {}
    blocks_units: list[tuple[SourceUnit, ...]] = []
    for block_index, start in enumerate(range(0, len(units), block_size)):
        group = tuple(units[start : start + block_size])
        blocks_units.append(group)
        for unit in group:
            block_of_index[unit.index] = block_index

    rendered: list[RenderedBlock] = []
    for block_index, group in enumerate(blocks_units):
        filename = "Original.lean" if block_index == len(blocks_units) - 1 else f"Block{block_index:03d}.lean"
        path = output_dir / filename
        module = output_module(path, repo_root)
        imports: list[str] = []
        for unit in group:
            for imported in unit.imports:
                target = unit_by_module.get(imported)
                if target is None:
                    mapped = imported
                else:
                    target_block = block_of_index[target.index]
                    if target_block == block_index:
                        continue
                    if target_block > block_index:
                        raise ValueError(
                            f"forward block edge: {unit.module} -> {imported}"
                        )
                    mapped = rendered[target_block].module
                if mapped not in imports:
                    imports.append(mapped)
        import_text = "".join(f"import {item}\n" for item in imports)
        body_text = "\n\n".join(unit.body for unit in group)
        text = import_text + ("\n" if import_text else "") + body_text + "\n"
        rendered.append(
            RenderedBlock(
                index=block_index,
                path=path,
                module=module,
                source_indices=tuple(unit.index for unit in group),
                source_modules=tuple(unit.module for unit in group),
                imports=tuple(imports),
                text=text,
            )
        )
    return rendered


def flatten(values: Iterable[Iterable[str]]) -> list[str]:
    result: list[str] = []
    for group in values:
        result.extend(group)
    return result


def static_audit(
    *,
    units: Sequence[SourceUnit],
    blocks: Sequence[RenderedBlock],
    repo_root: Path,
    source_plan: dict,
    plan_hash: str,
    output_dir: Path,
    block_size: int,
) -> dict:
    source_declarations = collections.Counter(flatten(unit.declarations for unit in units))
    source_options = collections.Counter(flatten(unit.options for unit in units))
    source_prints = collections.Counter(flatten(unit.prints for unit in units))
    output_declarations = collections.Counter()
    output_options = collections.Counter()
    output_prints = collections.Counter()
    output_imports: dict[str, tuple[str, ...]] = {}
    for block in blocks:
        output_declarations.update(command_names(DECL_RE, block.text))
        output_options.update(match.group(0).strip() for match in OPTION_RE.finditer(block.text))
        output_prints.update(match.group(0).strip() for match in PRINT_RE.finditer(block.text))
        output_imports[block.module] = parse_imports(block.text)
        forbidden = FORBIDDEN_RE.search(block.text)
        if forbidden:
            raise ValueError(f"forbidden token in generated candidate: {forbidden.group(0)}")

    if source_declarations != output_declarations:
        raise ValueError("declaration multiset changed during bundling")
    if source_options != output_options:
        raise ValueError("set_option multiset changed during bundling")
    if source_prints != output_prints:
        raise ValueError("#print axioms multiset changed during bundling")

    candidate_modules = {block.module: block.index for block in blocks}
    for block in blocks:
        for imported in output_imports[block.module]:
            if imported in candidate_modules and candidate_modules[imported] >= block.index:
                raise ValueError(f"candidate import is not backward: {block.module} -> {imported}")
    source_modules = {unit.module for unit in units}
    leaked = sorted(source_modules.intersection(flatten(output_imports.values())))
    if leaked:
        raise ValueError(f"original 239-module import leaked into candidate: {leaked[0]}")

    target_i = int(source_plan.get("i", -1))
    if target_i != 29 and not 35 <= target_i <= 184:
        raise ValueError("Only phase-A source plans are allowed")
    target = f"common_i{target_i:03d}"
    original = next((unit for unit in units if unit.path.name == "Original.lean"), None)
    if original is None:
        raise ValueError("row plan has no Original.lean source")
    root = blocks[-1]
    if f"theorem {target}" not in root.text:
        raise ValueError("candidate root lost common_i046")
    if f"#print axioms B699LowIndex.LowIndexLean513dc7cc.{target}" not in root.text:
        raise ValueError("candidate root lost common_i046 axiom print")
    theorem_start = original.text.index(f"theorem {target}")
    original_theorem = original.text[theorem_start:].strip()
    if original_theorem not in root.text:
        raise ValueError("common_i046 source text was not retained verbatim")

    if len(blocks) >= len(units):
        raise ValueError("bundling did not reduce module count")
    if any(len(block.source_indices) > block_size for block in blocks):
        raise ValueError("a block exceeds the requested size")

    external_imports = collections.Counter()
    for unit in units:
        for imported in unit.imports:
            if imported not in source_modules:
                external_imports[imported] += 1

    source_by_index = {unit.index: unit for unit in units}
    manifest = {
        "schema_version": 1,
        "kind": "b699_generated_row_text_bundle_candidate",
        "acceptance_status": "uncompiled_candidate",
        "mathematical_target": target,
        "i": target_i,
        "statement_source": str(next(unit.path for unit in units if unit.path.name == "Original.lean").relative_to(repo_root)).replace("\\", "/"),
        "source_plan": str(Path(source_plan.get("root", "")).as_posix()),
        "source_plan_sha256": plan_hash,
        "frozen_source_sha256": source_plan.get("frozen_source_sha256"),
        "block_size": block_size,
        "source_module_count": len(units),
        "bundle_module_count": len(blocks),
        "root": str(root.path.relative_to(repo_root)).replace("\\", "/"),
        "root_module": root.module,
        "declaration_count": sum(source_declarations.values()),
        "option_count": sum(source_options.values()),
        "print_axioms_count": sum(source_prints.values()),
        "external_imports": dict(sorted(external_imports.items())),
        "blocks": [],
        "source_to_bundle": [],
    }
    for block in blocks:
        manifest["blocks"].append(
            {
                "index": block.index,
                "path": str(block.path.relative_to(repo_root)).replace("\\", "/"),
                "module": block.module,
                "source_indices": list(block.source_indices),
                "source_paths": [
                    str(source_by_index[index].path.relative_to(repo_root)).replace("\\", "/")
                    for index in block.source_indices
                ],
                "imports": list(block.imports),
                "bytes": len(block.text.encode("utf-8")),
                "sha256": sha256_bytes(block.text.encode("utf-8")),
            }
        )
    for unit in units:
        block = next(block for block in blocks if unit.index in block.source_indices)
        manifest["source_to_bundle"].append(
            {
                "source_index": unit.index,
                "source_path": str(unit.path.relative_to(repo_root)).replace("\\", "/"),
                "source_module": unit.module,
                "bundle_index": block.index,
                "bundle_path": str(block.path.relative_to(repo_root)).replace("\\", "/"),
                "bundle_module": block.module,
            }
        )
    return manifest


def write_mapping_files(
    *,
    output_dir: Path,
    manifest: dict,
) -> None:
    lines = ["source_index\tsource_path\tsource_module\tbundle_index\tbundle_path\tbundle_module"]
    for item in manifest["source_to_bundle"]:
        lines.append(
            "\t".join(
                str(item[key])
                for key in (
                    "source_index",
                    "source_path",
                    "source_module",
                    "bundle_index",
                    "bundle_path",
                    "bundle_module",
                )
            )
        )
    safe_write(output_dir / "source-to-bundle.tsv", "\n".join(lines) + "\n")

    import_lines = ["bundle_index\tbundle_path\tbundle_module\timports"]
    for block in manifest["blocks"]:
        import_lines.append(
            "\t".join(
                [
                    str(block["index"]),
                    block["path"],
                    block["module"],
                    ",".join(block["imports"]),
                ]
            )
        )
    safe_write(output_dir / "bundle-imports.tsv", "\n".join(import_lines) + "\n")

    safe_write(
        output_dir / "bundle-manifest.json",
        json.dumps(manifest, ensure_ascii=False, indent=2) + "\n",
    )


def build(repo_root: Path, plan_path: Path, output_dir: Path, block_size: int) -> dict:
    repo_root = repo_root.resolve()
    plan_path = plan_path.resolve()
    output_dir = output_dir.resolve()
    try:
        output_dir.relative_to(repo_root)
    except ValueError as exc:
        raise ValueError(f"output escapes repository root: {output_dir}") from exc
    source_plan, units, plan_hash = load_units(repo_root, plan_path)
    blocks = render_blocks(
        units,
        block_size=block_size,
        output_dir=output_dir,
        repo_root=repo_root,
    )
    manifest = static_audit(
        units=units,
        blocks=blocks,
        repo_root=repo_root,
        source_plan=source_plan,
        plan_hash=plan_hash,
        output_dir=output_dir,
        block_size=block_size,
    )
    manifest["source_plan"] = plan_path.relative_to(repo_root).as_posix()
    manifest["bundler_sha256"] = sha256_bytes(Path(__file__).read_bytes())
    for block in blocks:
        safe_write(block.path, block.text)
    write_mapping_files(output_dir=output_dir, manifest=manifest)
    return manifest


def self_test() -> None:
    """Run a small in-memory comparison for same-block and cross-block edges."""

    def unit(index: int, name: str, imports: Sequence[str], decl: str) -> SourceUnit:
        text = (
            "\n".join(f"import {item}" for item in imports)
            + "\n\nset_option maxRecDepth 4096\n\nnamespace Demo\n\n"
            + f"theorem {decl} : True := by trivial\n\nend Demo\n\n"
            + f"#print axioms Demo.{decl}\n"
        )
        return SourceUnit(
            index=index,
            path=Path(f"input/{name}.lean"),
            module=f"input.{name}",
            text=text,
            imports=tuple(imports),
            body=strip_import_lines(text).strip(),
            declarations=(decl,),
            options=("set_option maxRecDepth 4096",),
            prints=(f"#print axioms Demo.{decl}",),
        )

    units = [
        unit(0, "B", ("Upstream.Base",), "b"),
        unit(1, "A", ("input.B",), "a"),
        unit(2, "C", ("input.A",), "c"),
    ]
    blocks = render_blocks(
        units,
        block_size=2,
        output_dir=Path("candidate"),
        repo_root=Path("."),
    )
    assert len(blocks) == 2
    assert "import input.B" not in blocks[0].text
    assert blocks[1].imports == (blocks[0].module,)
    assert "import " + blocks[0].module in blocks[1].text
    assert sum(block.text.count("#print axioms") for block in blocks) == 3
    assert sum(block.text.count("set_option maxRecDepth 4096") for block in blocks) == 3
    print("SELF_TEST_OK same-block removal, cross-block mapping, options, and prints")


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, default=Path.cwd())
    parser.add_argument("--plan", type=Path)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--block-size", type=int, choices=(2, 4, 8, 16, 32, 64, 1024), default=8)
    parser.add_argument("--self-test", action="store_true")
    args = parser.parse_args(argv)
    if args.self_test:
        self_test()
        return 0
    if args.plan is None or args.output is None:
        parser.error("--plan and --output are required unless --self-test is used")
    manifest = build(args.repo_root, args.plan, args.output, args.block_size)
    print(
        "BUNDLE_OK "
        + json.dumps(
            {
                "block_size": manifest["block_size"],
                "source_modules": manifest["source_module_count"],
                "bundle_modules": manifest["bundle_module_count"],
                "root": manifest["root"],
                "declarations": manifest["declaration_count"],
                "print_axioms": manifest["print_axioms_count"],
            },
            ensure_ascii=False,
        )
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, RuntimeError, json.JSONDecodeError) as exc:
        print(f"BUNDLE_ERROR {exc}", file=sys.stderr)
        raise SystemExit(2)
