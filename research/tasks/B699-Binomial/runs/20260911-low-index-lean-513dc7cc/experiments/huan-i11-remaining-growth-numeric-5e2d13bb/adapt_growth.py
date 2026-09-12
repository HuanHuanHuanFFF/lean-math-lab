import sys
from pathlib import Path

configs = {
    "row02": {"compact": "row-02.json", "ns": "I11Row02", "c": 23, "d": 15, "z": "1/9",
              "qpow": (8, 15), "epow": (15, 8)},
    "row04": {"compact": "row-04.json", "ns": "I11Row04", "c": 11, "d": 7, "z": "1/50",
              "qpow": (4, 7), "epow": (7, 4)},
}
key = sys.argv[1]
p = Path(sys.argv[2])
cfg = configs[key]
s = p.read_text(encoding="utf-8")
s = s.replace("row-01.json", cfg["compact"]).replace("I11SevenTwo", cfg["ns"])
s = s.replace("i11_seven_two", key)
s = s.replace('"seedC":9,"seedD":5,"seedZ":"1/49"',
              f'"seedC":{cfg["c"]},"seedD":{cfg["d"]},"seedZ":"{cfg["z"]}"')
s = s.replace('if fam=="Q":return mul(mul(power(x,4),power(one,5)),power([Fraction(1),z-1],5))',
              f'if fam=="Q":return mul(mul(power(x,{cfg["qpow"][0]}),power(one,{cfg["qpow"][1]})),power([Fraction(1),z-1],{cfg["qpow"][1]}))')
s = s.replace('return mul(mul(power(x,5),power(one,5)),power([Fraction(1),-z],4))',
              f'return mul(mul(power(x,{cfg["epow"][0]}),power(one,{cfg["epow"][1]})),power([Fraction(1),-z],{cfg["epow"][1]}))')
s = s.replace("def qSeedC : ℕ := 9", f"def qSeedC : ℕ := {cfg['c']}")
s = s.replace("def qSeedD : ℕ := 5", f"def qSeedD : ℕ := {cfg['d']}")
s = s.replace("(1 : ℚ) / 49", f"(1 : ℚ) / {cfg['z'].split('/')[1]}")
s = s.replace("def eSeedC : ℕ := 9", f"def eSeedC : ℕ := {cfg['c']}")
s = s.replace("def eSeedD : ℕ := 5", f"def eSeedD : ℕ := {cfg['d']}")
old_seed = '"seed":{"p":7,"q":2,"k0":2,"l0":4,"a":1,"b":3,"D0":1,"c":9,"d":5,"z":"1/49"'
new_seed = ('"seed":{"p":3,"q":2,"k0":2,"l0":3,"a":1,"b":1,"D0":1,"c":23,"d":15,"z":"1/9"'
            if key == "row02" else
            '"seed":{"p":5,"q":7,"k0":2,"l0":2,"a":2,"b":1,"D0":1,"c":11,"d":7,"z":"1/50"')
s = s.replace(old_seed, new_seed)
old_anchor = f'accepted_imports=[module(RUN/"lean/Growth/Affine.lean"),module(RUN/"lean/Growth/Partition.lean"),"Mathlib.Algebra.Polynomial.Roots","Mathlib.Tactic.NormNum","Mathlib.Tactic.Ring"]\nshared_ns="Math.B699.{cfg["ns"]}Growth.Shared"\nleaves_text=source_multi(accepted_imports+[module(FINAL_SHARED)],leaf_blocks)\nshared_text=source(accepted_imports,shared_body,shared_ns,[])'
new_anchor = f'''accepted_imports=[module(RUN/"lean/Growth/Affine.lean"),module(RUN/"lean/Growth/Partition.lean"),"Mathlib.Algebra.Polynomial.Roots","Mathlib.Tactic.NormNum","Mathlib.Tactic.Ring"]
shared_ns="Math.B699.{cfg["ns"]}Growth.Shared"
leaf_out=OUT/"Leaves";leaf_out.mkdir(parents=True,exist_ok=True)
leaf_sources={{}}
leaf_imports=[]
for leaf_ns,leaf_body,leaf_prints in leaf_blocks:
 leaf_name=leaf_ns.split(".")[-1];leaf_path=leaf_out/(leaf_name+".lean")
 leaf_path.write_text(source(accepted_imports+[module(FINAL_SHARED)],leaf_body,leaf_ns,leaf_prints),encoding="utf-8")
 leaf_sources[leaf_name]={{"candidate":str(leaf_path).replace("\\","/"),"future_target":str(FINAL_LEAF_DIR/(leaf_name+".lean")).replace("\\","/"),"sha256":sha(leaf_path)}}
 leaf_imports.append(module(FINAL_LEAF_DIR/(leaf_name+".lean")))
leaves_text="".join(f"import {{x}}\\n" for x in leaf_imports)+"\\n"
shared_text=source(accepted_imports,shared_body,shared_ns,[])'''
if old_anchor not in s:
    raise SystemExit("leaf split anchor not found")
s = s.replace(old_anchor, new_anchor)
s = s.replace('(EXP/"generation-plan.json").write_text', 'plan["leaf_sources"]=leaf_sources\n(EXP/"generation-plan.json").write_text')
s = s.replace('"fully_qualified_leaf_refs":expected_refs,"formula"',
              '"fully_qualified_leaf_refs":expected_refs,"leaf_module_count":len(leaf_sources),"formula"')
p.write_text(s, encoding="utf-8")
print(key, len(s))
