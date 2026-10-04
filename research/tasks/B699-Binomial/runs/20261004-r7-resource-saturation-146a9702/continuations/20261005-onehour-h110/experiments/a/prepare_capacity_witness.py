from pathlib import Path
import json
BASE=Path(__file__).parent
source=(BASE.parent/'main/export_source_basis110p11.cpp').read_text(encoding='utf-8-sig')
probe=json.loads((BASE/'initial-capacity-probe.json').read_text())
v=next(s['vector'] for r in probe['results'] if r['h']==152 for s in r['samples'] if s['label']=='random1')
begin=source.index(' vector<int> selected;')
end=source.index('int dim=0;',begin)
block=''' vector<int> selected; for(int i=0;i<K;i++)if(W[i]<=L)selected.push_back(i);
 vector<int> alpha={ALPHA}; if(selected.size()!=86 || alpha.size()!=86)throw runtime_error("expected 86 directions");
 vector<vector<int>> coeff(K,vector<int>(L+1));vector<int> currentW=W;
 for(int z=0;z<86;z++){if(W[selected[z]]!=L)throw runtime_error("nonconstant direction");coeff[selected[z]][0]=alpha[z];}
 for(auto it=ops.rbegin();it!=ops.rend();++it){
   int p=it->pivot;vector<int> tmp(L+1);int oldBound=L-currentW[p]+1;
   if(oldBound>=0){for(int a=0;a<=L-currentW[p];a++){tmp[a]=(tmp[a]+P-it->r*coeff[p][a]%P)%P;tmp[a+1]=(tmp[a+1]+coeff[p][a])%P;}
    for(int i=0;i<K;i++)if(i!=p&&it->f[i]){int bound=L-currentW[i];for(int a=0;a<=bound;a++)tmp[a]=(tmp[a]+P*P-it->f[i]*coeff[i][a])%P;}}
   coeff[p]=move(tmp);currentW[p]--;
 }
 ofstream poly(string(out)+".poly.tsv");poly<<"a\\tb\\tcoefficient\\n";int terms=0,xdegree=-1,wdegree=-1;
 for(int b=0;b<K;b++){if(currentW[b]!=2*b)throw runtime_error("reverse weight mismatch");for(int a=0;a<=L;a++)if(coeff[b][a]){if(a+2*b>L)throw runtime_error("degree overflow");poly<<a<<'\\t'<<b<<'\\t'<<coeff[b][a]<<'\\n';terms++;xdegree=max(xdegree,b);wdegree=max(wdegree,a+2*b);}}
 cout<<"EXPORTED terms="<<terms<<" xdegree="<<xdegree<<" wdegree="<<wdegree<<" operations="<<ops.size()<<"\\n";
 '''.replace('ALPHA',','.join(map(str,v)))
(BASE/'export_capacity_witness.cpp').write_text(source[:begin]+block+source[end:],encoding='utf-8')
(BASE/'capacity-witness-vector.json').write_text(json.dumps(dict(prime=11,h=152,label='random1',vector=v,source_probe='initial-capacity-probe.json',expected_capacity=102),indent=2)+'\n')
print('prepared',len(v))
