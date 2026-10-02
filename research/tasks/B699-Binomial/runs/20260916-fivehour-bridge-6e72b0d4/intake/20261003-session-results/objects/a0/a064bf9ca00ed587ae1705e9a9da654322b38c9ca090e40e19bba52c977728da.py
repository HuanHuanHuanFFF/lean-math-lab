p='/mnt/data/r5_work/gb_sat.cpp';s=open(p).read();a=s.index('int main(')
s=s[:a]+r'''
int main(int argc,char**argv){
 if(argc<4)return 2;P=stoi(argv[2]);int maxD=stoi(argv[3]);if(argc>4)LIMIT=stod(argv[4]);ifstream in(argv[1]);int dummy,n;in>>dummy>>n;
 for(int j=0;j<n;j++){int k;in>>k;Poly p;for(int t=0;t<k;t++){int a,b,c;long long v;in>>a>>b>>c>>v;add(p,mk(a,b,c),mod(v));}monic(p);GB.push_back(p);LM.push_back(p.begin()->first);active.push_back(j);}
 sort(active.begin(),active.end(),[](int i,int j){return key(LM[i])<key(LM[j]);});
 int axis=argc>5?stoi(argv[5]):0;int shift=argc>6?stoi(argv[6]):0;
 vector<M> mons;for(int d=0;d<=maxD;d++)for(int a=0;a<=d;a++)for(int b=0;b<=d-a;b++){M m=mk(a,b,d-a-b);bool bad=false;for(M g:LM)if(mdivides(g,m)){bad=true;break;}if(!bad)mons.push_back(m);}
 sort(mons.begin(),mons.end(),[](M a,M b){return key(a)<key(b);});
 cerr<<"standard monomials "<<mons.size()<<"\n";
 struct Row{Poly p,h;};map<M,Row,Cmp> rows;vector<Poly> kernels;
 try{int ct=0;for(M m:mons){
 if(elapsed()>LIMIT)throw string("TIMEOUT");
 Poly pp;pp.emplace(m+mk(axis==0,axis==1,axis==2),1);if(shift)add(pp,m,mod(-shift));Poly q=nf(pp,false),h;h.emplace(m,1);
 while(!q.empty()){
 auto [lm,lc]=*q.begin();auto it=rows.find(lm);
 if(it==rows.end()){C iv=inv(lc);for(auto &kv:q)kv.second=mod((long long)kv.second*iv);for(auto &kv:h)kv.second=mod((long long)kv.second*iv);rows.emplace(lm,Row{move(q),move(h)});break;}
 addmul(q,it->second.p,0,mod(-lc));addmul(h,it->second.h,0,mod(-lc));
 }
 if(q.empty() && !h.empty()){
 strip(h);kernels.push_back(h);cerr<<"KERNEL "<<kernels.size()<<" terms="<<h.size()<<" deg="<<deg(h.begin()->first)<<" time="<<elapsed()<<"\n";
 }
 if(++ct%200==0)cerr<<"processed="<<ct<<" rows="<<rows.size()<<" kernels="<<kernels.size()<<" sec="<<elapsed()<<"\n";
 }
 cerr<<"DONE\n";
 }catch(string e){cerr<<e<<"\n";}
 ofstream out(string(argv[1])+".colon"+to_string(axis)+"_"+to_string(shift));out<<kernels.size()<<"\n";
 for(auto &p:kernels){out<<p.size()<<"\n";for(auto[m,c]:p)out<<ex(m,0)<<" "<<ex(m,1)<<" "<<ex(m,2)<<" "<<c<<"\n";}
}
'''
# ensure inserted-row does not look like kernel: moved h empty guaranteed standard map moved from not guaranteed but generally; explicit flag preferred
s=s.replace('Poly q=nf(pp,false),h;h.emplace(m,1);','Poly q=nf(pp,false),h;h.emplace(m,1);bool inserted=false;')
s=s.replace('rows.emplace(lm,Row{move(q),move(h)});break;','rows.emplace(lm,Row{move(q),move(h)});inserted=true;break;')
s=s.replace('if(q.empty() && !h.empty())','if(!inserted && q.empty() && !h.empty())')
open('/mnt/data/r5_work/colon_probe.cpp','w').write(s)
