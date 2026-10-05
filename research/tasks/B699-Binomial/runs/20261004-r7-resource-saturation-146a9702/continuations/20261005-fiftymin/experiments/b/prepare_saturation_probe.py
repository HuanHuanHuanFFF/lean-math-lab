from pathlib import Path
import hashlib
src=Path('research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/objects/6d/6d5becdaa815ef40b080801b7db8090fd5b1424e18bf41d73ac661941f4980d5.cpp')
s=src.read_text();assert hashlib.sha256(src.read_bytes()).hexdigest()=='6d5becdaa815ef40b080801b7db8090fd5b1424e18bf41d73ac661941f4980d5'
s=s.replace('int P=32003; double LIMIT=150;','int P=32003; double LIMIT=120;')
s=s.replace('int strips=0;','int strips=0; vector<Poly> gateUnits; long long storedTerms=0; int nonlinearStrips=0;')
s=s.replace('void strip(Poly&p){',r'''bool nonlinearstrip(Poly &p,const Poly &g){
 if(p.empty()||g.empty()||!mdivides(g.begin()->first,p.begin()->first))return false;
 Poly cur=p,q; long long steps=0;
 while(!cur.empty()){
  if((++steps&255)==0&&elapsed()>LIMIT)throw string("TIMEOUT");
  auto [m,c]=*cur.begin();auto [gm,gc]=*g.begin();
  if(!mdivides(gm,m))return false;
  M z=m-gm;C a=mod((long long)c*inv(gc));add(q,z,a);addmul(cur,g,z,mod(-a));
  if(cur.size()>100000||q.size()>100000)throw string("POLY_CAP");
 }
 p=move(q);nonlinearStrips++;return true;
}
void strip(Poly&p){''')
s=s.replace('monic(p);\n}', 'for(auto &g:gateUnits)while(nonlinearstrip(p,g))++strips;\n monic(p);\n}')
s=s.replace('if((++steps&8191)==0 && elapsed()>LIMIT)', 'if((++steps&1023)==0 && elapsed()>LIMIT)')
s=s.replace('GB.push_back(move(p));LM.push_back(m);update(i);', 'storedTerms+=n;if(storedTerms>1000000)throw string("STORED_TERM_CAP");GB.push_back(move(p));LM.push_back(m);update(i);')
s=s.replace('if(n>80000 || GB.size()>3000)', 'if(n>100000 || GB.size()>1500)')
start=s.index('int main(')
s=s[:start]+r'''int main(int argc,char**argv){
 if(argc!=5)return 2;P=stoi(argv[2]);LIMIT=stod(argv[3]);ifstream in(argv[1]);int n;if(!(in>>n)||n!=9)return 3;vector<Poly> all;
 for(int j=0;j<n;j++){string name;int k;in>>name>>k;Poly p;for(int t=0;t<k;t++){int a,b,c;long long v;in>>a>>b>>c>>v;add(p,mk(c,a,b),mod(v));}all.push_back(p);}if(!in)return 4;string extra;if(in>>extra)return 5;
 Poly E;add(E,mk(0,1,1),1);add(E,mk(0,0,1),P-1);add(E,mk(0,0,0),1);vector<Poly> units{E,all[6],all[8],all[7]};
 try{
 for(auto g:units){strip(g);gateUnits.push_back(g);}
 for(int j=0;j<6;j++)put(all[j]);long long ct=0;
 while(!pairs.empty()){
 if(elapsed()>LIMIT)throw string("TIMEOUT");auto t=*pairs.begin();pairs.erase(pairs.begin());int i=t.i,j=t.j;
 Poly p;addmul(p,GB[i],t.l-LM[i],1);addmul(p,GB[j],t.l-LM[j],P-1);put(p);
 if((++ct%100)==0)cerr<<"pairs processed "<<ct<<" left "<<pairs.size()<<" sec "<<elapsed()<<"\n";
 }
 cerr<<"DONE\n";
 }catch(string s){cerr<<s<<" sec="<<elapsed()<<" basis="<<GB.size()<<" stored_terms="<<storedTerms<<" nonlinear_strips="<<nonlinearStrips<<"\n";}
 ofstream out(argv[4]);out<<P<<" "<<active.size()<<"\n";for(int idx:active){auto &p=GB[idx];out<<p.size()<<"\n";for(auto [m,c]:p)out<<ex(m,0)<<" "<<ex(m,1)<<" "<<ex(m,2)<<" "<<c<<"\n";}
}
'''
out=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/b');(out/'saturated_probe.cpp').write_text(s,encoding='utf-8');print({'new_source_bytes':len(s.encode()),'source_parent_sha256':hashlib.sha256(src.read_bytes()).hexdigest()})
