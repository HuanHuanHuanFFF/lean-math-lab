from pathlib import Path
import hashlib,subprocess,json,ast
ROOT=Path.cwd();R=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';C=R/'continuations/20261005-fiftymin';B=C/'experiments/main/kernel108';B.mkdir(exist_ok=True);T=Path('D:/Temp/b699-r7-fiftymin-20261005/kernel108');T.mkdir(parents=True,exist_ok=True)
src=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/objects/ce/cecfba9614de808b8388f0c73360115dd8fb74246262d2b4597b93a2108fc0f4.cpp';assert hashlib.sha256(src.read_bytes()).hexdigest()=='cecfba9614de808b8388f0c73360115dd8fb74246262d2b4597b93a2108fc0f4'
s=src.read_text(encoding='utf-8-sig');anchor='vector<int> disc(K);int rank=0;';assert s.count(anchor)==1;s=s.replace(anchor,anchor+'\n struct Op {int pivot,r; vector<int> f;}; vector<Op> ops;\n')
anchor='int d=disc[piv],iv=powmod(d,P-2,P);';assert s.count(anchor)==1;s=s.replace(anchor,anchor+'\n Op op{piv,js[t].r,vector<int>(K)}; for(int i=0;i<K;i++)if(i!=piv)op.f[i]=disc[i]*iv%P;ops.push_back(move(op));\n')
anchor='int dim=0;for(int w:W)dim+=max(0,L-w+1);';assert s.count(anchor)==1
old=ast.parse((C/'experiments/main/export_kernel.py').read_text(encoding='utf-8-sig'))
back=next(ast.literal_eval(n.value) for n in old.body if isinstance(n,ast.Assign) and any(isinstance(t,ast.Name) and t.id=='back' for t in n.targets))
back=back.replace('if(selected.size()!=1 || W[selected[0]]!=L)throw runtime_error("need unique constant direction");','if(selected.size()!=2)throw runtime_error("need two constant directions"); int seq=0; for(int chosen:selected){if(W[chosen]!=L)throw runtime_error("nonconstant direction");')
back=back.replace('selected[0]','chosen').replace('string(out)+".poly.tsv"','string(out)+"."+to_string(seq)+".poly.tsv"')
back+='\nseq++;}\n'
s=s.replace(anchor,back+'\n'+anchor);out=C/'experiments/main/export_source_basis108.cpp';out.write_bytes(s.encode());exe=T/'export_basis108.exe';r=subprocess.run(['D:/CLion/CLion 2025.1.1/bin/mingw/bin/g++.exe','-O2','-std=c++17',str(out),'-o',str(exe)],capture_output=True,text=True,timeout=45);(B/'build.log').write_bytes((r.stdout+r.stderr).encode());assert r.returncode==0,r.stderr[-1000:]
inp=(C/'experiments/main/kernel107/input.txt').read_text().replace('107 305 257','108 305 257',1);(B/'input.txt').write_bytes(inp.encode());pref=T/'basis';r=subprocess.run([str(exe),str(pref)],input=inp,capture_output=True,text=True,timeout=90);(B/'run.log').write_bytes((r.stdout+r.stderr).encode());assert r.returncode==0,r.stderr[-1000:]
for suf in ('.0.poly.tsv','.1.poly.tsv','.json','.trace.tsv'):(B/('basis'+suf)).write_bytes(Path(str(pref)+suf).read_bytes())
print(r.stdout.strip())
