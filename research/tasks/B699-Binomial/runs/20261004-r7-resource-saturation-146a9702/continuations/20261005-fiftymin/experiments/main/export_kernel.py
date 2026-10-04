from pathlib import Path
import hashlib,subprocess,json
ROOT=Path.cwd();R=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';C=R/'continuations/20261005-fiftymin';B=C/'experiments/main/kernel107';B.mkdir(exist_ok=True);T=Path('D:/Temp/b699-r7-fiftymin-20261005/kernel107');T.mkdir(parents=True,exist_ok=True)
src=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/objects/ce/cecfba9614de808b8388f0c73360115dd8fb74246262d2b4597b93a2108fc0f4.cpp';assert hashlib.sha256(src.read_bytes()).hexdigest()=='cecfba9614de808b8388f0c73360115dd8fb74246262d2b4597b93a2108fc0f4'
s=src.read_text(encoding='utf-8-sig');anchor='vector<int> disc(K);int rank=0;';assert s.count(anchor)==1;s=s.replace(anchor,anchor+'\n struct Op {int pivot,r; vector<int> f;}; vector<Op> ops;\n')
anchor='int d=disc[piv],iv=powmod(d,P-2,P);';assert s.count(anchor)==1;s=s.replace(anchor,anchor+'\n Op op{piv,js[t].r,vector<int>(K)}; for(int i=0;i<K;i++)if(i!=piv)op.f[i]=disc[i]*iv%P;ops.push_back(move(op));\n')
anchor='int dim=0;for(int w:W)dim+=max(0,L-w+1);';assert s.count(anchor)==1
back=r'''
 vector<int> selected; for(int i=0;i<K;i++)if(W[i]<=L)selected.push_back(i);
 if(selected.size()!=1 || W[selected[0]]!=L)throw runtime_error("need unique constant direction");
 vector<vector<int>> coeff(K,vector<int>(L+1));coeff[selected[0]][0]=1;vector<int> currentW=W;
 for(auto it=ops.rbegin();it!=ops.rend();++it){
   int p=it->pivot;vector<int> tmp(L+1);int oldBound=L-currentW[p]+1;
   if(oldBound>=0){
    for(int a=0;a<=L-currentW[p];a++){tmp[a]=(tmp[a]+P-it->r*coeff[p][a]%P)%P;tmp[a+1]=(tmp[a+1]+coeff[p][a])%P;}
    for(int i=0;i<K;i++)if(i!=p && it->f[i]){
      int bound=L-currentW[i];for(int a=0;a<=bound;a++)tmp[a]=(tmp[a]+P*P-it->f[i]*coeff[i][a])%P;
    }
   }
   coeff[p]=move(tmp);currentW[p]--;
 }
 ofstream poly(string(out)+".poly.tsv");poly<<"a\tb\tcoefficient\n";int terms=0,xdegree=-1,wdegree=-1;
 for(int b=0;b<K;b++){if(currentW[b]!=2*b)throw runtime_error("reverse weight mismatch");for(int a=0;a<=L;a++)if(coeff[b][a]){if(a+2*b>L)throw runtime_error("degree overflow");poly<<a<<'\t'<<b<<'\t'<<coeff[b][a]<<'\n';terms++;xdegree=max(xdegree,b);wdegree=max(wdegree,a+2*b);}}
 cout<<"EXPORTED terms="<<terms<<" xdegree="<<xdegree<<" wdegree="<<wdegree<<" pivot="<<selected[0]<<" operations="<<ops.size()<<"\n";
'''
s=s.replace(anchor,back+'\n'+anchor);out=C/'experiments/main/export_source_basis.cpp';out.write_text(s,encoding='utf-8');compiler='D:/CLion/CLion 2025.1.1/bin/mingw/bin/g++.exe';exe=T/'export_basis.exe';r=subprocess.run([compiler,'-O2','-std=c++17',str(out),'-o',str(exe)],capture_output=True,text=True,timeout=45);(B/'build.log').write_text(r.stdout+r.stderr);assert r.returncode==0
ip=R/'continuations/20261004-onehour/experiments/main/rigidity107/full-source-e107-d305.input.txt';inp=ip.read_text();(B/'input.txt').write_text(inp);pref=T/'basis';r=subprocess.run([str(exe),str(pref)],input=inp,capture_output=True,text=True,timeout=90);(B/'run.log').write_text(r.stdout+r.stderr);assert r.returncode==0,r.stderr[-1000:]
for suf in ('.poly.tsv','.json'):(B/('basis'+suf)).write_bytes(pref.with_suffix(suf).read_bytes())
print(r.stdout.strip());print('poly_bytes',(B/'basis.poly.tsv').stat().st_size);print('original_trace_matches',hashlib.sha256(pref.with_suffix('.trace.tsv').read_bytes()).hexdigest()=='9ab8c9817c8325054aaa39aeb0f963cd44bbdf3025c3d9192bbbd35fa73bf0e7')
