#!/usr/bin/env python3
"""Small in-memory regression checks for ``bundle_row.py``."""

from pathlib import Path

import bundle_row as bundler


def make_unit(index: int, name: str, imports: tuple[str, ...], declaration: str):
    text = (
        "\n".join(f"import {item}" for item in imports)
        + "\n\nset_option maxRecDepth 4096\n\nnamespace Demo\n\n"
        + f"theorem {declaration} : True := by trivial\n\nend Demo\n\n"
        + f"#print axioms Demo.{declaration}\n"
    )
    return bundler.SourceUnit(
        index=index,
        path=Path(f"input/{name}.lean"),
        module=f"input.{name}",
        text=text,
        imports=imports,
        body=bundler.strip_import_lines(text).strip(),
        declarations=(declaration,),
        options=("set_option maxRecDepth 4096",),
        prints=(f"#print axioms Demo.{declaration}",),
    )


def main() -> None:
    units = [
        make_unit(0, "B", ("Upstream.Base",), "b"),
        make_unit(1, "A", ("input.B",), "a"),
        make_unit(2, "C", ("input.A",), "c"),
        make_unit(3, "D", ("input.C",), "d"),
        make_unit(4, "E", ("input.D",), "e"),
    ]
    blocks = bundler.render_blocks(
        units,
        block_size=4,
        output_dir=Path("candidate"),
        repo_root=Path("."),
    )
    assert len(blocks) == 2
    assert "import input.B" not in blocks[0].text
    assert blocks[1].imports == (blocks[0].module,)
    assert "import " + blocks[0].module in blocks[1].text
    assert sum(block.text.count("#print axioms") for block in blocks) == 5
    assert sum(block.text.count("set_option maxRecDepth 4096") for block in blocks) == 5
    print("SELF_TEST_OK same-block removal, cross-block mapping, options, and prints")


if __name__ == "__main__":
    main()
