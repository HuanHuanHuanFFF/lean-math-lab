#include <gmpxx.h>
#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <map>
#include <queue>
#include <string>
#include <tuple>
#include <vector>
#include <set>
using namespace std;
int P=32003; double LIMIT=150;auto START=chrono::steady_clock::now();
double elapsed(){return chrono::duration<double>(chrono::steady_clock::now()-START).count();}
using M=uint64_t;using C=mpq_class;
int ex(M m,int i){return int((m>>(20-10*i))&1023);}
M mk(int x,int y,int z){return (M(x)<<20)|(M(y)<<10)|z;}
int deg(M m){return ex(m,0)+ex(m,1)+ex(m,2);}
uint64_t key(M m){return (uint64_t(deg(m))<<40)|((uint64_t(1023-ex(m,2)))<<20)|((uint64_t(1023-ex(m,1)))<<10)|(1023-ex(m,0));}
struct Cmp{bool operator()(M a,M b)const{return key(a)>key(b);}};
using Poly=map<M,C,Cmp>;vector<Poly> GB;vector<M> LM;vector<int> active;
C mod(const C &v){return v;}
C inv(const C &v){return C(1)/v;}
bool mdivides(M a,M b){return ex(a,0)<=ex(b,0)&&ex(a,1)<=ex(b,1)&&ex(a,2)<=ex(b,2);}
M lcmM(M a,M b){return mk(max(ex(a,0),ex(b,0)),max(ex(a,1),ex(b,1)),max(ex(a,2),ex(b,2)));}
bool coprime(M a,M b){return deg(lcmM(a,b))==deg(a)+deg(b);}
void add(Poly &p,M m,C c){if(!c)return;auto it=p.find(m);if(it==p.end())p.emplace(m,c);else{it->second=mod(it->second+c);if(!it->second)p.erase(it);}}
void monic(Poly&p){if(p.empty())return;C c=inv(p.begin()->second);for(auto &t:p)t.second=mod(t.second*c);}
void addmul(Poly&p,const Poly&q,M m,C c){for(auto [n,v]:q)add(p,n+m,mod(c*v));}
int strips=0;
bool linearstrip(Poly&p,int axis){ // divide by variable-1 if exact
 map<M,C> ev; M unit=mk(axis==0,axis==1,axis==2);int maxd=0;
 for(auto [m,c]:p){int d=ex(m,axis);maxd=max(maxd,d);M q=m-d*unit;ev[q]=mod(ev[q]+c);}
 if(maxd==0)return false;for(auto [m,c]:ev)if(c)return false;
 map<M,vector<C>> groups;for(auto [m,c]:p){int d=ex(m,axis);M b=m-d*unit;auto &v=groups[b];if(v.empty())v.resize(maxd+1);v[d]=c;}
 Poly q;for(auto &[m,v]:groups){C b=0;for(int d=maxd;d>=1;--d){b=mod(b+v[d]);if(b)q.emplace(m+(d-1)*unit,b);}}
 p=move(q);return true;
}
void strip(Poly&p){if(p.empty())return;int a=999,b=999,c=999;for(auto [m,v]:p){a=min(a,ex(m,0));b=min(b,ex(m,1));c=min(c,ex(m,2));}if(a+b+c){Poly q;M t=mk(a,b,c);for(auto [m,v]:p)q.emplace(m-t,v);p=move(q);strips+=a+b+c;}
 // original input order (r,u,y): strip (u-1),(y-1)
 for(int i=1;i<=2;i++)while(linearstrip(p,i))++strips;
 monic(p);
}
Poly nf(Poly p,bool dostrip=true){Poly rest;long long steps=0;while(!p.empty()){
 if((++steps&127)==0 && elapsed()>LIMIT)throw string("TIMEOUT");
 auto [m,c]=*p.begin();int hit=-1;
 for(int i:active)if(mdivides(LM[i],m)){hit=i;break;}
 if(hit<0){rest.emplace(m,c);p.erase(p.begin());}
 else{addmul(p,GB[hit],m-LM[hit],mod(-c));}
 }
 if(dostrip)strip(rest);return rest;
}
struct Pair{int i,j,d;M l; bool operator<(const Pair&a)const{if(d!=a.d)return d>a.d;return key(l)>key(a.l);}};
struct PCmp{bool operator()(const Pair&a,const Pair&b)const{if(key(a.l)!=key(b.l))return key(a.l)<key(b.l);return tie(a.i,a.j)<tie(b.i,b.j);}};
set<Pair,PCmp> pairs;
void update(int ih){
 M mh=LM[ih];vector<int> C=active,D;
 while(!C.empty()){
  int ig=C.back();C.pop_back();M mg=LM[ig],l=lcmM(mh,mg);bool keep=coprime(mh,mg);
  if(!keep){keep=true;for(int k:C)if(mdivides(lcmM(mh,LM[k]),l)){keep=false;break;}if(keep)for(int k:D)if(mdivides(lcmM(mh,LM[k]),l)){keep=false;break;}}
  if(keep)D.push_back(ig);
 }
 for(auto it=pairs.begin();it!=pairs.end();){auto q=*it;if(mdivides(mh,q.l)&&lcmM(LM[q.i],mh)!=q.l&&lcmM(LM[q.j],mh)!=q.l)it=pairs.erase(it);else ++it;}
 for(int ig:D)if(!coprime(mh,LM[ig])){M l=lcmM(mh,LM[ig]);pairs.insert({ih,ig,deg(l),l});}
 vector<int> na;for(int ig:active)if(!mdivides(mh,LM[ig]))na.push_back(ig);na.push_back(ih);
 sort(na.begin(),na.end(),[](int i,int j){return key(LM[i])<key(LM[j]);});active=move(na);
}
void put(Poly p){p=nf(p);if(p.empty())return;
 while(true){Poly q=nf(p);if(q==p)break;p=move(q);if(p.empty())return;}
 int i=GB.size();M m=p.begin()->first;int n=p.size();GB.push_back(move(p));LM.push_back(m);update(i);
 cerr<<"add "<<i<<" active="<<active.size()<<" lm="<<ex(m,0)<<","<<ex(m,1)<<","<<ex(m,2)<<" deg="<<deg(m)<<" terms="<<n<<" strips="<<strips<<" pairs="<<pairs.size()<<" sec="<<elapsed()<<"\n";
 int bits=0;for(auto &kv:GB.back())bits=max(bits,int(mpz_sizeinbase(kv.second.get_num_mpz_t(),2)+mpz_sizeinbase(kv.second.get_den_mpz_t(),2)));cerr<<"bits "<<bits<<"\n";
 if(bits>10000)throw string("COEFFICIENT_CAP");if(deg(m)==0)throw string("UNIT");if(n>80000 || GB.size()>3000)throw string("CAP");
}
int main(int argc,char**argv){if(argc>2)P=stoi(argv[2]);if(argc>3)LIMIT=stod(argv[3]);ifstream in(argv[1]);int n;in>>n;vector<Poly> input;for(int j=0;j<n;j++){int k;in>>k;Poly p;for(int t=0;t<k;t++){int a,b,c;C v;in>>a>>b>>c>>v;add(p,mk(a,b,c),mod(v));}strip(p);input.push_back(p);}
 try{for(auto p:input)put(p);long long ct=0;
 while(!pairs.empty()){
 if(elapsed()>LIMIT)throw string("TIMEOUT");auto t=*pairs.begin();pairs.erase(pairs.begin());int i=t.i,j=t.j;
 Poly p;addmul(p,GB[i],t.l-LM[i],1);addmul(p,GB[j],t.l-LM[j],-1);put(p);
 if((++ct%100)==0)cerr<<"pairs processed "<<ct<<" left "<<pairs.size()<<" sec "<<elapsed()<<"\n";
 }
 cerr<<"DONE\n";
 }catch(string s){cerr<<s<<" sec="<<elapsed()<<" basis="<<GB.size()<<"\n";}
 ofstream out(string(argv[1])+".basis");out<<P<<" "<<active.size()<<"\n";for(int idx:active) {auto &p=GB[idx];{out<<p.size()<<"\n";for(auto [m,c]:p)out<<ex(m,0)<<" "<<ex(m,1)<<" "<<ex(m,2)<<" "<<c<<"\n";}}
}
