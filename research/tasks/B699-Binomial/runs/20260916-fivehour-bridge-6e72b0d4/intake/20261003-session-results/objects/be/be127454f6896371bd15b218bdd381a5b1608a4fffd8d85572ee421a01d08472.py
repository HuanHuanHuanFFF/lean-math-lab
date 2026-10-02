from pathlib import Path
import json
w=Path('/mnt/data/r6_work');s=(w/'gb4.cpp').read_text();a=s.index('void strip(');b=s.index('Poly nf(',a);s=s[:a]+'void strip(Poly&p){monic(p);}\n'+s[b:];s=s.replace('if(n>80000 || GB.size()>3000)','if(n>200000 || GB.size()>6000)');(w/'gb_hom.cpp').write_text(s)
d=json.load(open(w/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/generic.json'))
polys=[d['B5']]+[d['low'][str(i)]['stripped']for i in [0,4,3,2,1]]
out=[str(len(polys))]
for p in polys:
 D=max(sum(e[:3])for e,c in p);out.append(str(len(p)));out.extend(' '.join(map(str,[e[2],e[0],e[1],D-sum(e[:3]),c]))for e,c in p)
(w/'hom_input.txt').write_text('\n'.join(out)+'\n')
