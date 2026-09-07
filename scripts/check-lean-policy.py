#!/usr/bin/env python3
"""Check the source-level policy for the accepted Lean tree."""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

FORBIDDEN_TOKENS = ("sorry", "admit", "sorryAx", "native_decide")
DECLARATION_RE = re.compile(
    r"^\s*(?:(?:private|protected|scoped|noncomputable)\s+)*"
    r"(?:axiom|constant)\b[^\r\n]*$",
    re.MULTILINE,
)


def mask_comments_and_strings(source: str) -> str:
    chars = list(source)
    i = 0
    block_depth = 0
    in_string = False

    def blank(index: int) -> None:
        if chars[index] not in "\r\n":
            chars[index] = " "

    while i < len(chars):
        if block_depth:
            if source.startswith("/-", i):
                blank(i)
                if i + 1 < len(chars):
                    blank(i + 1)
                block_depth += 1
                i += 2
            elif source.startswith("-/", i):
                blank(i)
                if i + 1 < len(chars):
                    blank(i + 1)
                block_depth -= 1
                i += 2
            else:
                blank(i)
                i += 1
            continue
        if in_string:
            if source[i] == "\\":
                blank(i)
                if i + 1 < len(chars):
                    blank(i + 1)
                i += 2
            elif source[i] == '"':
                blank(i)
                in_string = False
                i += 1
            else:
                blank(i)
                i += 1
            continue
        if source.startswith("--", i):
            while i < len(chars) and chars[i] not in "\r\n":
                blank(i)
                i += 1
        elif source.startswith("/-", i):
            blank(i)
            if i + 1 < len(chars):
                blank(i + 1)
            block_depth = 1
            i += 2
        elif source[i] == '"':
            blank(i)
            in_string = True
            i += 1
        else:
            i += 1
    return "".join(chars)


def location(source: str, offset: int) -> tuple[int, int]:
    line = source.count("\n", 0, offset) + 1
    line_start = source.rfind("\n", 0, offset) + 1
    return line, offset - line_start + 1


def scan_text(source: str, display_name: str) -> list[str]:
    masked = mask_comments_and_strings(source)
    violations: list[str] = []
    for token in FORBIDDEN_TOKENS:
        for match in re.finditer(rf"\b{re.escape(token)}\b", masked):
            line, column = location(source, match.start())
            violations.append(
                f"{display_name}:{line}:{column}: forbidden token '{token}'"
            )
    for match in DECLARATION_RE.finditer(masked):
        line, column = location(source, match.start())
        declaration = match.group(0).strip().split(None, 1)[0]
        violations.append(
            f"{display_name}:{line}:{column}: explicit '{declaration}' declaration"
        )
    return violations


def source_files(roots: list[Path]) -> list[Path]:
    files: list[Path] = []
    for root in roots:
        if not root.is_dir():
            raise ValueError(f"Lean policy root does not exist: {root}")
        files.extend(root.rglob("*.lean"))
    return sorted(set(files))


def self_test() -> None:
    clean = """
/- sorry admit native_decide axiom fake -/
def quoted := \"sorry admit native_decide\"
/- outer /- sorry -/ still a comment -/
theorem good : True := by trivial
"""
    assert scan_text(clean, "clean.lean") == []
    bad = """
theorem bad : True := by sorry
theorem also_bad : True := by native_decide
axiom unproved : False
"""
    found = scan_text(bad, "bad.lean")
    assert any("sorry" in item for item in found)
    assert any("native_decide" in item for item in found)
    assert any("explicit 'axiom'" in item for item in found)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--roots", nargs="+", default=["Math", "Tests", "Examples"])
    parser.add_argument("--skip-self-test", action="store_true")
    args = parser.parse_args()
    if not args.skip_self_test:
        self_test()
    files = source_files([Path(item) for item in args.roots])
    violations = [
        violation
        for path in files
        for violation in scan_text(path.read_text(encoding="utf-8"), str(path))
    ]
    if violations:
        print("Lean source policy check failed:", file=sys.stderr)
        for violation in violations:
            print(f"  {violation}", file=sys.stderr)
        return 1
    print(f"Lean source policy passed for {len(files)} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
