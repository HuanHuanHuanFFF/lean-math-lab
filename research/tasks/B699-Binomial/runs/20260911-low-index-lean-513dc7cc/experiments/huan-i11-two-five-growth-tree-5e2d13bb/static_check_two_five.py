from __future__ import annotations
import hashlib
import json
import re
from fractions import Fraction
from math import comb
from pathlib import Path

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[1]
REPO = RUN.parents[4]
INPUT = RUN / "experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-00.json"
OTHER_MAP = RUN / "experiments/huan-i11-other-edge-reuse-5e2d13bb/SOURCE_MAP.json"
TEMPLATE = RUN / "experiments/huan-i11-five-three-growth-tree-5e2d13bb/generate_i11_five_three.py"
PLAN_PATH = EXP / "generation-plan.json"
STATIC_PATH = EXP / "static-checks-independent.json"

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def trim(a):
    a = list(a)
    while len(a) > 1 and a[-1] == 0:
        a.pop()
    return a

def add(a, b):
    out = [Fraction(0)] * max(len(a), len(b))
    for i, x in enumerate(a):
        out[i] += x
    for i, x in enumerate(b):
        out[i] += x
    return trim(out)

def mul(a, b):
    out = [Fraction(0)] * (len(a) + len(b) - 1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            out[i + j] += x * y
    return trim(out)

def scale(c, a):
    return trim([c * x for x in a])

def power(a, n):
    out = [Fraction(1)]
    for _ in range(n):
        out = mul(out, a)
    return out

def comp(p, q):
    out = [Fraction(0)]
    for c in reversed(p):
        out = add([c], mul(out, q))
    return trim(out)

def affine(a, b):
    return [a, b - a]

def core(family, z):
    x = [Fraction(0), Fraction(1)]
    one = [Fraction(1), Fraction(-1)]
    if family == "Q":
        return mul(mul(power(x, 1), power(one, 4)), power([Fraction(1), z - 1], 4))
    return mul(mul(power(x, 4), power(one, 4)), power([Fraction(1), -z], 1))

def bernstein(bs, degree):
    x = [Fraction(0), Fraction(1)]
    one = [Fraction(1), Fraction(-1)]
    out = [Fraction(0)]
    for k, value in enumerate(bs):
        out = add(out, scale(comb(degree, k) * value, mul(power(x, k), power(one, degree - k))))
    return out

def gap_basis(gaps, degree):
    x = [Fraction(0), Fraction(1)]
    one = [Fraction(1), Fraction(-1)]
    out = [Fraction(0)]
    for k, value in enumerate(gaps):
        out = add(out, scale(value, mul(power(x, k), power(one, degree - k))))
    return out

data = json.loads(INPUT.read_text(encoding="utf-8"))
plan = json.loads(PLAN_PATH.read_text(encoding="utf-8"))
assert data["row_index"] == 0
assert data["z"] == "3/128"
assert data["Q"]["degree"] == data["E"]["degree"] == 9
assert data["Q"]["lambda"] == "3471657440109699659204039683/79228162514264337593543950336"
assert data["E"]["lambda"] == "305863978762465520211566521/79228162514264337593543950336"
assert plan["input_sha256"] == sha(INPUT)
assert plan["seed"] == {"p": 2, "q": 5, "k0": 7, "l0": 3, "a": 1, "b": 1, "D0": 3, "c": 5, "d": 4, "z": "3/128"}
assert plan["families"]["Q"]["leaves"] == 10
assert plan["families"]["E"]["leaves"] == 9
assert plan["fully_qualified_leaf_refs"] == 38
assert plan["formula"] == "gapCoeff[k]=choose(N,k)*(lambda-b[k])"

checks_by_family = {"Q": [], "E": []}
for check in plan["checks"]:
    checks_by_family[check["family"]].append(check)
for family, expected_count in (("Q", 10), ("E", 9)):
    leaves = data[family]["leaves"]
    assert len(leaves) == expected_count
    intervals = sorted((Fraction(x["a"]), Fraction(x["b"])) for x in leaves)
    assert intervals[0][0] == 0 and intervals[-1][1] == 1
    assert all(right == intervals[i + 1][0] for i, (_, right) in enumerate(intervals[:-1]))
    lam = Fraction(data[family]["lambda"])
    z = Fraction(data["z"])
    degree = data[family]["degree"]
    assert len(checks_by_family[family]) == expected_count
    for leaf, check in zip(leaves, sorted(checks_by_family[family], key=lambda x: x["leaf"])):
        assert check["identity"] is True and check["tamper_rejected"] is True
        denominator = int(leaf["bernstein_denominator"])
        bs = [Fraction(int(x), denominator) for x in leaf["bernstein_numerators"]]
        actual = comp(core(family, z), affine(Fraction(leaf["a"]), Fraction(leaf["b"])))
        assert actual == bernstein(bs, degree)
        gaps = [comb(degree, k) * (lam - bs[k]) for k in range(degree + 1)]
        assert gap_basis(gaps, degree) == add([lam], scale(Fraction(-1), actual))
        assert all(value >= 0 for value in gaps)
        tampered = list(gaps)
        tampered[0] += 1
        assert gap_basis(tampered, degree) != add([lam], scale(Fraction(-1), actual))

source_map = plan["source_map"]
candidate_sources = {
    "I11TwoFiveShared.lean": EXP / "candidate/lean/Growth/I11TwoFiveShared.lean",
    "I11TwoFiveLeaves.lean": EXP / "candidate/lean/Growth/I11TwoFiveLeaves.lean",
    "I11TwoFiveTree.lean": EXP / "candidate/lean/Growth/I11TwoFiveTree.lean",
}
for name, path in candidate_sources.items():
    assert path.is_file()
    assert source_map[name]["sha256"] == sha(path)
shared = candidate_sources["I11TwoFiveShared.lean"].read_text(encoding="utf-8")
leaves = candidate_sources["I11TwoFiveLeaves.lean"].read_text(encoding="utf-8")
tree = candidate_sources["I11TwoFiveTree.lean"].read_text(encoding="utf-8")
assert "Math.B699.I11TwoFiveGrowth.Shared" in shared
assert "def qSeedC : ℕ := 5" in shared and "def qSeedD : ℕ := 4" in shared
assert "def eSeedC : ℕ := 5" in shared and "def eSeedD : ℕ := 4" in shared
assert shared.count("def qLam : ℚ") == 1 and shared.count("def eLam : ℚ") == 1
assert "3471657440109699659204039683" in shared
assert "305863978762465520211566521" in shared
assert leaves.count("namespace Math.B699.I11TwoFiveGrowth.QLeaf") == 10
assert leaves.count("namespace Math.B699.I11TwoFiveGrowth.ELeaf") == 9
assert leaves.count("def gapCoeff0 : ℚ") == 19
assert leaves.count("def gapCoeff9 : ℚ") == 19
assert "I11FiveThree" not in shared + leaves + tree
assert not re.search(r"\b(native_decide|sorry|admit|axiom)\b", shared + leaves + tree)
refs = re.findall(r"using Math\.B699\.I11TwoFiveGrowth\.[QE]Leaf\d{3}\.", tree)
assert len(refs) == 38
assert set(re.findall(r"theorem ([qe]_tree_delta[01])\b", tree)) == {
    "q_tree_delta0", "q_tree_delta1", "e_tree_delta0", "e_tree_delta1"
}
comp_type_lines = [line for line in tree.splitlines() if " : GrowthTree " in line and ".comp " in line]
assert comp_type_lines
assert all(re.search(r"GrowthTree [qe]Lam \(\([qe]SeedWeight[01]\)\.comp ", line) for line in comp_type_lines)
assert not re.search(r"GrowthTree [qe]Lam \([qe]SeedWeight[01]\)\.comp ", tree)

result = {
    "status": "independent_static_checks_passed_uncompiled",
    "input_sha256": sha(INPUT),
    "input_bytes": INPUT.stat().st_size,
    "source_map_sha256": sha(OTHER_MAP),
    "template_generator_sha256": sha(TEMPLATE),
    "degree": 9,
    "Q_leaves": 10,
    "E_leaves": 9,
    "fraction_identity_checks": 19,
    "tamper_rejection_checks": 19,
    "fully_qualified_leaf_refs": 38,
    "tree_roots": ["q_tree_delta0", "q_tree_delta1", "e_tree_delta0", "e_tree_delta1"],
    "full_comp_parentheses": True,
    "old_row00_data_reused": False,
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
}
STATIC_PATH.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

frozen_files = {}
for path in sorted(EXP.rglob("*")):
    if path.is_file() and path.name != "FREEZE.json":
        frozen_files[str(path.relative_to(EXP)).replace("\\", "/")] = {
            "bytes": path.stat().st_size,
            "sha256": sha(path),
        }
freeze = {
    "status": "frozen_uncompiled_candidate",
    "scope": "i11 (2,5) Q/E degree-9 GrowthTree; Q10 + E9 leaves; four delta roots",
    "source_input": str(INPUT).replace("\\", "/"),
    "source_input_sha256": sha(INPUT),
    "source_map_sha256": sha(OTHER_MAP),
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
    "files": frozen_files,
}
(EXP / "FREEZE.json").write_text(json.dumps(freeze, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
source_map = {
    "status": "candidate_source_map",
    "seed": {"p": 2, "q": 5, "k0": 7, "l0": 3, "a": 1, "b": 1, "D0": 3, "c": 5, "d": 4, "z": "3/128"},
    "input": {
        "path": str(INPUT).replace("\\", "/"),
        "bytes": INPUT.stat().st_size,
        "sha256": sha(INPUT),
        "row_index": data["row_index"],
        "degree": {"Q": data["Q"]["degree"], "E": data["E"]["degree"]},
        "leaves": {"Q": len(data["Q"]["leaves"]), "E": len(data["E"]["leaves"])},
        "lambda": {"Q": data["Q"]["lambda"], "E": data["E"]["lambda"]},
    },
    "frozen_context": {
        "path": str(OTHER_MAP).replace("\\", "/"),
        "sha256": sha(OTHER_MAP),
        "source_row_binding": "qe-certificates/row-00.json",
    },
    "template": {
        "path": str(TEMPLATE).replace("\\", "/"),
        "sha256": sha(TEMPLATE),
        "data_only_reused": False,
        "construction_pattern_only": True,
    },
    "candidate_sources": {
        name: {
            "path": str(path).replace("\\", "/"),
            "bytes": path.stat().st_size,
            "sha256": sha(path),
            "future_target": source_map[name]["target"],
        }
        for name, path in candidate_sources.items()
    },
    "formula": "gapCoeff[k]=choose(degree,k)*(lambda-b[k])",
    "status_boundary": "Python Fraction/static candidate only; Lean and Git not run.",
}
(EXP / "SOURCE_MAP.json").write_text(json.dumps(source_map, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(json.dumps(result, ensure_ascii=False))
