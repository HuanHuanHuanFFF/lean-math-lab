from pathlib import Path
p=Path('/mnt/data/r6_work');s=(p/'gb_mod.cpp').read_text();s=s.replace('if((++steps&8191)==0','if((++steps&1023)==0')
# strip a partial reduction whenever divisible by a basic gate; restart it with the rest included.
s=s.replace('else{addmul(p,GB[hit],m-LM[hit],mod(-c));}', '''else{addmul(p,GB[hit],m-LM[hit],mod(-c));
 if(dostrip && !p.empty() && (steps%3)==0){Poly all=p;addmul(all,rest,0,1);int before=strips;strip(all);if(strips>before){p=move(all);rest.clear();}}
 }''')
(p/'gb_early.cpp').write_text(s)
import json
D=json.load(open(p/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/generic.json'))
ps=[D['B5']]+[D['low'][str(i)]['stripped']for i in [4,3,2,1,0]]
for order in [[2,0,1],[0,2,1],[0,1,2],[1,0,2],[1,2,0],[2,1,0]]:
 out=[str(len(ps))]
 for poly in ps:
  out.append(str(len(poly)))
  out.extend(' '.join(map(str,[*(e[i]for i in order),c]))for e,c in poly)
 (p/('src_'+''.join(map(str,order))+'.txt')).write_text('\n'.join(out)+'\n')
