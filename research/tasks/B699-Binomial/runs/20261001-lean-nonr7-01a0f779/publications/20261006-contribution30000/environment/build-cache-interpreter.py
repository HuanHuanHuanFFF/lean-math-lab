"""Build only the fixed mathlib cache tool's Lean modules, serially.

The retained Windows toolchain intentionally lacks native-linker libraries.
Run Cache/Main.lean with Lean's interpreter after this bootstrap.
"""
from __future__ import annotations

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys


def main() -> None:
    workspace, toolchain, receipt_path = (Path(value).resolve() for value in sys.argv[1:4])
    manifest = json.loads((workspace / "lake-manifest.json").read_text())
    packages = {p["name"]: workspace / ".lake/packages" / p["name"] for p in manifest["packages"]}
    roots = list(packages.values())
    outputs = {root: root / ".lake/build/lib/lean" for root in roots}
    lean_path = os.pathsep.join(str(path) for path in outputs.values())
    environment = os.environ.copy()
    environment["LEAN_PATH"] = lean_path
    built = []
    seen = set()

    def build(module: str) -> None:
        if module in seen or module.split(".")[0] in {"Init", "Lean", "Lake", "Std"}:
            return
        seen.add(module)
        relative = Path(*module.split(".")).with_suffix(".lean")
        matches = [(root, root / relative) for root in roots if (root / relative).is_file()]
        if len(matches) != 1:
            raise RuntimeError(f"source lookup for {module}: {matches}")
        root, source = matches[0]
        text = source.read_text(encoding="utf-8")
        for line in text.splitlines():
            match = re.match(r"\s*(?:public\s+)?import\s+(.+)", line)
            if match:
                for dependency in match[1].split("--", 1)[0].split():
                    build(dependency)
        output = outputs[root] / relative.with_suffix(".olean")
        output.parent.mkdir(parents=True, exist_ok=True)
        command = [str(toolchain / "bin" / ("lean.exe" if os.name == "nt" else "lean")), "--memory=768", "--threads=1",
                   "-R", str(root), "-o", str(output), str(source)]
        result = subprocess.run(command, cwd=root, env=environment, check=False)
        if result.returncode:
            raise RuntimeError(f"{module}: exit {result.returncode}")
        built.append({"module": module, "source": str(source),
                      "sourceSha256": hashlib.sha256(source.read_bytes()).hexdigest(),
                      "output": str(output), "command": command})
        print(f"built {module}", flush=True)

    build("Cache.Main")
    receipt_path.write_text(json.dumps({"serial": True, "modules": built,
                                        "leanPath": lean_path}, indent=2) + "\n", encoding="utf-8")
    print(f"built {len(built)} modules; no native executable link")


if __name__ == "__main__":
    main()
