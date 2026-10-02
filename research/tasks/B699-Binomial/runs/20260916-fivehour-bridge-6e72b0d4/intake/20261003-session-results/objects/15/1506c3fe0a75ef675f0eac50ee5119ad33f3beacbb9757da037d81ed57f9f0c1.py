from pathlib import Path
p=Path('/mnt/data/r6_work');s=(p/'gb_mod.cpp').read_text()
a=s.index('int ex(');b=s.index('using Poly=',a)
s=s[:a]+'''const int NV=4;
int ex(M m,int i){return int((m>>(36-12*i))&4095);}
M mk(int a,int b,int c,int d=0){return (M(a)<<36)|(M(b)<<24)|(M(c)<<12)|M(d);}
int deg(M m){return ex(m,0)+ex(m,1)+ex(m,2)+ex(m,3);}
bool greaterM(M a,M b){if(deg(a)!=deg(b))return deg(a)>deg(b);for(int i=3;i>=0;--i){if(ex(a,i)!=ex(b,i))return ex(a,i)<ex(b,i);}return false;}
struct Cmp{bool operator()(M a,M b)const{return greaterM(a,b);}};
''' +s[b:]
s=s.replace('&&ex(a,2)<=ex(b,2);','&&ex(a,2)<=ex(b,2)&&ex(a,3)<=ex(b,3);')
s=s.replace('max(ex(a,2),ex(b,2)));','max(ex(a,2),ex(b,2)),max(ex(a,3),ex(b,3)));')
s=s.replace('mk(axis==0,axis==1,axis==2)','mk(axis==0,axis==1,axis==2,axis==3)')
a=s.index('void strip(');b=s.index('Poly nf(',a)
s=s[:a]+'''void strip(Poly&p){if(p.empty())return;int mi[4]={4095,4095,4095,4095};for(auto [m,v]:p)for(int j=0;j<4;++j)mi[j]=min(mi[j],ex(m,j));M t=mk(mi[0],mi[1],mi[2],mi[3]);if(t){Poly q;for(auto [m,v]:p)q.emplace(m-t,v);p=move(q);strips+=mi[0]+mi[1]+mi[2]+mi[3];}
 for(int i=2;i<=3;++i)while(linearstrip(p,i))++strips;monic(p);}
''' +s[b:]
s=s.replace('return key(l)>key(a.l);','return greaterM(l,a.l);')
s=s.replace('if(key(a.l)!=key(b.l))return key(a.l)<key(b.l);','if(a.l!=b.l)return greaterM(b.l,a.l);')
s=s.replace('return key(LM[i])<key(LM[j]);','return greaterM(LM[j],LM[i]);')
s=s.replace('<<ex(m,2)<<" deg="','<<ex(m,2)<<","<<ex(m,3)<<" deg="')
s=s.replace('<<ex(m,2)<<" "<<c','<<ex(m,2)<<" "<<ex(m,3)<<" "<<c')
s=s.replace('int a,b,c;long long v;in>>a>>b>>c>>v;add(p,mk(a,b,c)','int a,b,c,d;long long v;in>>a>>b>>c>>d>>v;add(p,mk(a,b,c,d)')
(p/'gb4.cpp').write_text(s)
import json,sympy as sp
D=json.load(open(p/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/generic.json'))
u,y,r,z=sp.symbols('u y r z');ps=[sp.Poly.from_dict({tuple(e[:3]):int(c)for e,c in a},(u,y,r))for a in [D['B5']]+[D['low'][str(i)]['stripped']for i in [4,3,2,1,0]]]
N=sp.Poly.from_dict({tuple(e[:3]):int(c)for e,c in D['N']},(u,y,r));K=sp.Poly.from_dict({tuple(e[:3]):int(c)for e,c in D['K']},(u,y,r))
for name,gate in [('N',N),('NK',N*K)]:
 seq=[sp.Poly(gate.as_expr()*z-1,(z,r,u,y))]+[sp.Poly(a.as_expr(),(z,r,u,y))for a in ps]
 out=[str(len(seq))]
 for a in seq:
  out.append(str(len(a.terms())));out.extend(' '.join(map(str,[*e,c]))for e,c in a.terms())
 (p/f'four_{name}.txt').write_text('\n'.join(out)+'\n')
