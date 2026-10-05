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
using M=uint64_t;using C=int;
const int NV=4;
int ex(M m,int i){return int((m>>(36-12*i))&4095);}
M mk(int a,int b,int c,int d=0){return (M(a)<<36)|(M(b)<<24)|(M(c)<<12)|M(d);}
int deg(M m){return ex(m,0)+ex(m,1)+ex(m,2)+ex(m,3);}
bool greaterM(M a,M b){if(deg(a)!=deg(b))return deg(a)>deg(b);for(int i=3;i>=0;--i){if(ex(a,i)!=ex(b,i))return ex(a,i)<ex(b,i);}return false;}
struct Cmp{bool operator()(M a,M b)const{return greaterM(a,b);}};
using Poly=map<M,C,Cmp>;vector<Poly> GB;vector<M> LM;vector<int> active;
C mod(long long v){v%=P;return v<0?v+P:v;}
C inv(C v){C a=1;int n=P-2;while(n){if(n&1)a=mod((long long)a*v);v=mod((long long)v*v);n/=2;}return a;}
bool mdivides(M a,M b){return ex(a,0)<=ex(b,0)&&ex(a,1)<=ex(b,1)&&ex(a,2)<=ex(b,2)&&ex(a,3)<=ex(b,3);}
M lcmM(M a,M b){return mk(max(ex(a,0),ex(b,0)),max(ex(a,1),ex(b,1)),max(ex(a,2),ex(b,2)),max(ex(a,3),ex(b,3)));}
bool coprime(M a,M b){return deg(lcmM(a,b))==deg(a)+deg(b);}
void add(Poly &p,M m,C c){if(!c)return;auto it=p.find(m);if(it==p.end())p.emplace(m,c);else{it->second=mod((long long)it->second+c);if(!it->second)p.erase(it);}}
void monic(Poly&p){if(p.empty())return;C c=inv(p.begin()->second);for(auto &t:p)t.second=mod((long long)t.second*c);}
void addmul(Poly&p,const Poly&q,M m,C c){for(auto [n,v]:q)add(p,n+m,mod((long long)c*v));}
int strips=0;
bool linearstrip(Poly&p,int axis){ // divide by variable-1 if exact
 map<M,C> ev; M unit=mk(axis==0,axis==1,axis==2,axis==3);int maxd=0;
 for(auto [m,c]:p){int d=ex(m,axis);maxd=max(maxd,d);M q=m-d*unit;ev[q]=mod((long long)ev[q]+c);}
 if(maxd==0)return false;for(auto [m,c]:ev)if(c)return false;
 map<M,vector<C>> groups;for(auto [m,c]:p){int d=ex(m,axis);M b=m-d*unit;auto &v=groups[b];if(v.empty())v.resize(maxd+1);v[d]=c;}
 Poly q;for(auto &[m,v]:groups){C b=0;for(int d=maxd;d>=1;--d){b=mod((long long)b+v[d]);if(b)q.emplace(m+(d-1)*unit,b);}}
 p=move(q);return true;
}
void strip(Poly&p){if(p.empty())return;int mi[4]={4095,4095,4095,4095};for(auto [m,v]:p)for(int j=0;j<4;++j)mi[j]=min(mi[j],ex(m,j));M t=mk(mi[0],mi[1],mi[2],mi[3]);if(t){Poly q;for(auto [m,v]:p)q.emplace(m-t,v);p=move(q);strips+=mi[0]+mi[1]+mi[2]+mi[3];}
 for(int i=2;i<=3;++i)while(linearstrip(p,i))++strips;monic(p);}
Poly nf(Poly p,bool dostrip=true){Poly rest;long long steps=0;while(!p.empty()){
 if((++steps&8191)==0 && elapsed()>LIMIT)throw string("TIMEOUT");
 auto [m,c]=*p.begin();int hit=-1;
 for(int i:active)if(mdivides(LM[i],m)){hit=i;break;}
 if(hit<0){rest.emplace(m,c);p.erase(p.begin());}
 else{addmul(p,GB[hit],m-LM[hit],mod(-c));}
 }
 if(dostrip)strip(rest);return rest;
}
struct Pair{int i,j,d;M l; bool operator<(const Pair&a)const{if(d!=a.d)return d>a.d;return greaterM(l,a.l);}};
struct PCmp{bool operator()(const Pair&a,const Pair&b)const{if(a.l!=b.l)return greaterM(b.l,a.l);return tie(a.i,a.j)<tie(b.i,b.j);}};
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
 sort(na.begin(),na.end(),[](int i,int j){return greaterM(LM[j],LM[i]);});active=move(na);
}
void put(Poly p){p=nf(p);if(p.empty())return;
 while(true){Poly q=nf(p);if(q==p)break;p=move(q);if(p.empty())return;}
 int i=GB.size();M m=p.begin()->first;int n=p.size();GB.push_back(move(p));LM.push_back(m);update(i);
 cerr<<"add "<<i<<" active="<<active.size()<<" lm="<<ex(m,0)<<","<<ex(m,1)<<","<<ex(m,2)<<","<<ex(m,3)<<" deg="<<deg(m)<<" terms="<<n<<" strips="<<strips<<" pairs="<<pairs.size()<<" sec="<<elapsed()<<"\n";
 if(deg(m)==0)throw string("UNIT");if(n>80000 || GB.size()>3000)throw string("CAP");
}
int main(int argc,char**argv){if(argc>2)P=stoi(argv[2]);if(argc>3)LIMIT=stod(argv[3]);ifstream in(argv[1]);int n;in>>n;vector<Poly> input;for(int j=0;j<n;j++){int k;in>>k;Poly p;for(int t=0;t<k;t++){int a,b,c,d;long long v;in>>a>>b>>c>>d>>v;add(p,mk(a,b,c,d),mod(v));}strip(p);input.push_back(p);}
 try{for(auto p:input)put(p);long long ct=0;
 while(!pairs.empty()){
 if(elapsed()>LIMIT)throw string("TIMEOUT");auto t=*pairs.begin();pairs.erase(pairs.begin());int i=t.i,j=t.j;
 Poly p;addmul(p,GB[i],t.l-LM[i],1);addmul(p,GB[j],t.l-LM[j],P-1);put(p);
 if((++ct%100)==0)cerr<<"pairs processed "<<ct<<" left "<<pairs.size()<<" sec "<<elapsed()<<"\n";
 }
 cerr<<"DONE\n";
 }catch(string s){cerr<<s<<" sec="<<elapsed()<<" basis="<<GB.size()<<"\n";}
 ofstream out(string(argv[1])+".basis");out<<P<<" "<<active.size()<<"\n";for(int idx:active) {auto &p=GB[idx];{out<<p.size()<<"\n";for(auto [m,c]:p)out<<ex(m,0)<<" "<<ex(m,1)<<" "<<ex(m,2)<<" "<<ex(m,3)<<" "<<c<<"\n";}}
}
