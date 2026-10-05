from pathlib import Path
import sys,json,hashlib
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r
prior=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/b');raw=(prior/'one-step-N-colon.json').read_bytes();assert hashlib.sha256(raw).hexdigest()=='9151546b31ec8f2e6882acf142364c234226ce55eefee12ee70a151fa1d2d45f';w=json.loads(raw);W=rs.R.from_dict({tuple(e):rs.QQ(c) for e,c in w['W']})
out=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110/experiments/b');tmp=Path('D:/Temp/b699-r7-onehour-h110-20261005');p=32003;path=tmp/'b-with-W-32003.txt'
with path.open('w',newline='\n') as f:
 f.write('10\n')
 for name,F in list(fs.items())+[('W',W)]+list(gs.items()):
  data=[(e,int(c)%p) for e,c in sorted(F.items()) if int(c)%p];f.write(name+' '+str(len(data))+'\n')
  for e,c in data:f.write(' '.join(map(str,[*e,c]))+'\n')
code=(prior/'saturated_probe.cpp').read_text()
code=code.replace('vector<Poly> GB;', 'vector<vector<pair<M,C>>> GB;')
code=code.replace('void addmul(Poly &p,const Poly&q', 'template<class Seq> void addmul(Poly &p,const Seq&q')
code=code.replace('void addmul(Poly&p,const Poly&q', 'template<class Seq> void addmul(Poly&p,const Seq&q')
code=code.replace('GB.push_back(move(p));', 'GB.emplace_back(p.begin(),p.end());')
code=code.replace('storedTerms>1000000','storedTerms>4000000')
code=code.replace('n!=9','n!=10').replace('for(int j=0;j<6;j++)put(all[j]);','for(int j=0;j<7;j++)put(all[j]);')
code=code.replace('vector<Poly> units{E,all[6],all[8],all[7]};','vector<Poly> units{E};')
(out/'packed_with_W.cpp').write_text(code,encoding='utf-8')
receipt={'prime':p,'input_bytes':path.stat().st_size,'input_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'W_source_sha256':hashlib.sha256(raw).hexdigest(),'raw_W_coefficient_bits':rs.stats(W)['coefficient_bits'],'input_reduced_before_int64_parse':True,'generator_order':list(fs)+['W']+list(gs),'source_provenance':prov,'resource':rs.memory()};(out/'prepared-input.json').write_text(json.dumps(receipt,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:v for k,v in receipt.items() if k!='source_provenance'}))
