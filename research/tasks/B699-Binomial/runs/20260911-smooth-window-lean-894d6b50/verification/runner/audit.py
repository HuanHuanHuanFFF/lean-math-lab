import re, sys, json
from pathlib import Path
log = Path(sys.argv[1]).read_text()
expected = ["choose_mul_choose", "prime_dvd_choose_transfer", "same_prime_transfer", "strict_transfer_counterexample"]
allowed = {"propext", "Classical.choice", "Quot.sound"}
found = {}
for name in expected:
    full = "B699.SmoothWindow." + name
    m = re.search(re.escape("'" + full + "'") + r" depends on axioms:\s*\[(.*?)\]", log, re.S)
    empty = "'" + full + "' does not depend on any axioms" in log
    if not m and not empty:
        raise SystemExit("Missing transitive audit: " + full)
    axioms = set(x.strip() for x in m.group(1).split(",") if x.strip()) if m else set()
    if not axioms <= allowed:
        raise SystemExit("Unexpected axioms: " + repr(axioms - allowed))
    found[full] = sorted(axioms)
Path(sys.argv[1] + ".axioms.json").write_text(json.dumps(found, indent=2) + "\n")
print(json.dumps(found))
