from probe_weight5 import *
st=time.time();counts={};patterns=[]
for sel in product(*(list(combinations(V[r],2)) for r in V)):
 pts=[(r,v) for r,z in zip(V,sel) for v in z]
 ker=nullspace([EV[z] for z in pts]);dim=len(ker);counts[dim]=counts.get(dim,0)+1
 patterns.append({'pairs':sel,'nullity':dim})
(ROOT/'evidence/six_double_probe.json').write_text(json.dumps({'counts':counts,'patterns':patterns,'seconds':time.time()-st},indent=2))
print(counts,len(patterns),time.time()-st)
