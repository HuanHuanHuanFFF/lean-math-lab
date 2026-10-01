"""Generate *untrusted* literal goals for kernel-checked split sieve certificates.

Only the frozen 115 input rows are used. Python values are never acceptance;
every leaf equality is proved by Lean decide, and every parent by count_step.
"""
import argparse
import functools
import hashlib
import json
from pathlib import Path

cli = argparse.ArgumentParser()
cli.add_argument("--input", required=True)
cli.add_argument("--output", required=True)
cli.add_argument("--mode", choices=["max", "batches"], default="max")
cli.add_argument("--chunk-size", type=int, default=8)
cli.add_argument("--leaf-index", type=int, default=8)
opts = cli.parse_args()
input_path = Path(opts.input).resolve()
output_root = Path(opts.output).resolve()
own_root = Path(__file__).resolve().parent
if output_root != own_root:
    raise ValueError("Output must be the generator's owned tail directory")
data = json.loads(input_path.read_text(encoding="utf-8-sig"))
pool = list(reversed(data["sieving_primes"]))
assert pool == [53,47,43,41,37,31,29,23,19,17,13,11,7,5,3,2]
rows = data["certificates"]
assert len(rows) == 115 and data["q"] == 12
assert rows[0]["b"] == 1023 and rows[-1]["b"] == 131071
assert 1 <= opts.leaf_index <= len(pool)
assert 1 <= opts.chunk_size <= 16

@functools.lru_cache(None)
def value(index, bound):
    if bound == 0:
        return 0
    if index == len(pool):
        return bound
    return value(index+1, bound) - value(index+1, bound // pool[index])

def lean_list(index):
    return "[" + ", ".join(map(str, pool[index:])) + "]"

module_prefix = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail"
generated = []
def emit_file(name, selected):
    nodes = {}
    ordered = []
    def visit(index, bound):
        key = (index, bound)
        if key in nodes:
            return
        if bound and index < opts.leaf_index:
            visit(index+1, bound)
            visit(index+1, bound // pool[index])
        nodes[key] = value(index, bound)
        ordered.append(key)
    for _, row in selected:
        visit(0, row["b"])
    namespace = "B699PrunedSieve." + name
    text = [f"import {module_prefix}.PrunedStep", "",
            "/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/",
            "set_option maxRecDepth 20000", "set_option maxHeartbeats 2000000",
            f"namespace {namespace}", "open B699PrunedSieve", ""]
    for index, bound in ordered:
        n = f"node_{index}_{bound}"
        ps = lean_list(index)
        target = nodes[index, bound]
        text.append(f"theorem {n} : count {ps} {bound} = ({target} : Int) := by")
        if bound == 0:
            text.append(f"  exact count_zero {ps}")
        elif index >= opts.leaf_index:
            text.append("  decide")
        else:
            tail = lean_list(index+1)
            prime = pool[index]
            quotient = bound // prime
            left, right = nodes[index+1, bound], nodes[index+1, quotient]
            text += ["  calc",
                     f"    count {ps} {bound} = count {tail} {bound} - count {tail} ({bound} / {prime}) :=",
                     f"      count_step {prime} {tail} {bound} (by decide)",
                     f"    _ = ({left} : Int) - ({right} : Int) :=",
                     f"      congrArg₂ (fun x y : Int => x - y) node_{index+1}_{bound} node_{index+1}_{quotient}",
                     f"    _ = ({target} : Int) := by decide"]
        text.append("")
    for index, row in selected:
        bound, upper = row["b"], row["T"]
        text += [f"theorem row_{index} : count primes {bound} ≤ ({upper} : Int) - 15 := by",
                 f"  rw [show count primes {bound} = ({nodes[0,bound]} : Int) from node_0_{bound}]",
                 "  decide", ""]
    pairs = ", ".join(f"({row['b']}, {row['T']})" for _, row in selected)
    text += [f"def pairs : List (Nat × Nat) := [{pairs}]",
             "theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by",
             "  intro bt hbt",
             "  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt",
             "  rcases hbt with " + " | ".join("rfl" for _ in selected)]
    text += [f"  · exact row_{index}" for index, _ in selected]
    text += [f"end {namespace}", f"#check @{namespace}.pairs_valid",
             f"#print axioms {namespace}.pairs_valid", ""]
    path = output_root / (name + ".lean")
    if path.exists():
        raise FileExistsError("Will not overwrite an existing candidate or frozen source: " + str(path))
    path.write_text("\n".join(text), encoding="utf-8", newline="\n")
    generated.append({"path": str(path), "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
                      "row_indices": [index for index, _ in selected], "nodes": len(nodes),
                      "leaves": sum(bound != 0 and index >= opts.leaf_index for index, bound in ordered)})

if opts.mode == "max":
    emit_file("DagMax", [(len(rows)-1, rows[-1])])
else:
    for start in range(0, len(rows), opts.chunk_size):
        emit_file(f"DagBatch{start // opts.chunk_size + 1:02}", list(enumerate(rows[start:start+opts.chunk_size], start)))
    names = [Path(item["path"]).stem for item in generated]
    pair_expr = names[-1] + ".pairs"
    for name in reversed(names[:-1]):
        pair_expr = name + ".pairs ++ (" + pair_expr + ")"
    aggregate = [f"import {module_prefix}.{name}" for name in names]
    aggregate += ["", "set_option autoImplicit false", "set_option relaxedAutoImplicit false",
                  "namespace B699PrunedSieve.AllNumeric", "open B699PrunedSieve",
                  f"def pairs : List (Nat × Nat) := {pair_expr}",
                  "theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by",
                  "  intro bt hbt", "  simp only [pairs, List.mem_append] at hbt",
                  "  rcases hbt with " + " | ".join("h" + str(i) for i in range(len(names)))]
    aggregate += [f"  · exact {name}.pairs_valid bt h{i}" for i, name in enumerate(names)]
    aggregate += ["end B699PrunedSieve.AllNumeric", "#check @B699PrunedSieve.AllNumeric.pairs_valid",
                  "#print axioms B699PrunedSieve.AllNumeric.pairs_valid", ""]
    aggregate_path = output_root / "AllNumericCertificates.lean"
    if aggregate_path.exists():
        raise FileExistsError(str(aggregate_path))
    aggregate_path.write_text("\n".join(aggregate), encoding="utf-8", newline="\n")
    generated.append({"path": str(aggregate_path),
                      "sha256": hashlib.sha256(aggregate_path.read_bytes()).hexdigest(),
                      "row_indices": list(range(len(rows))), "nodes": 0, "leaves": 0})
mapping = {"input": str(input_path), "inputSha256": hashlib.sha256(input_path.read_bytes()).hexdigest(),
           "generator": str(Path(__file__).resolve()), "generatorSha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
           "mode": opts.mode, "leafIndex": opts.leaf_index, "chunkSize": opts.chunk_size,
           "valuesAccepted": False, "policy": "Expected values are untrusted proof targets; every node and final bound must pass the Lean kernel. No scan beyond fixed115 rows.",
           "generated": generated}
map_path = output_root / ("dag-" + opts.mode + "-source-map.json")
if map_path.exists():
    raise FileExistsError(str(map_path))
map_path.write_text(json.dumps(mapping, ensure_ascii=False, indent=2), encoding="utf-8")
print(json.dumps({"generatedFiles": len(generated), "nodes": sum(item["nodes"] for item in generated),
                  "leaves": sum(item["leaves"] for item in generated), "map": str(map_path), "valuesAccepted": False}))
