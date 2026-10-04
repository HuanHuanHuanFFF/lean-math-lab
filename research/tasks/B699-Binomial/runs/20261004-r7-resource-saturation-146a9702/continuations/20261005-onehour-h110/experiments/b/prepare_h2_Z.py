from pathlib import Path
import sys,json,hashlib
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110/experiments/b');d=json.loads((out/'r2-compact-certificate.json').read_text());Z=rs.R.from_dict({tuple(e):rs.QQ(c) for e,c in d['Z']});h=r*u*(u-1)*y*(y-1)*gs['D']*gs['N']*gs['K'];target=h*h;tmp=Path('D:/Temp/b699-r7-onehour-h110-20261005');p=tmp/'b-h2-with-Z.txt'
with p.open('w',newline='\n') as f:
 f.write('26 20 12 56 7\n')
 for F in list(fs.values())+[Z,target]:
  st=rs.stats(F);f.write(' '.join(map(str,[st['total_degree']]+st['degrees']+[len(F)]))+'\n')
  for e,c in sorted(F.items()):assert c.denominator==1 and abs(int(c))<2**63;f.write(' '.join(map(str,[*e,int(c)]))+'\n')
s=(old/'rectangular_membership.cpp').read_text().replace('ng!=6','ng!=7');(out/'h2_with_Z.cpp').write_text(s,encoding='utf-8');print({'input_bytes':p.stat().st_size,'input_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'Z_source_sha256':hashlib.sha256((out/'r2-compact-certificate.json').read_bytes()).hexdigest()})
