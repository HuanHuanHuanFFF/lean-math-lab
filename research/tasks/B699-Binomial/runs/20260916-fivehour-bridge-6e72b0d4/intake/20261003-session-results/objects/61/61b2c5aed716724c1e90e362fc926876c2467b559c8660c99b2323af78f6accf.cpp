#include <bits/stdc++.h>
using namespace std; const int P=32003;
using M=array<int,3>;
struct Ord{bool operator()(M const&a,M const&b)const{int da=a[0]+a[1]+a[2], db=b[0]+b[1]+b[2]; if(da!=db)return da>db;for(int i=2;i>=0;i--)if(a[i]!=b[i])return a[i]<b[i];return false;}};
using Poly=map<M,int,Ord>;
int add(int a,int b){int r=a+b; if(r>=P)r-=P; if(r<0)r+=P;return r;}
int mul(int a,int b){return int((long long)a*b%P);}int powi(int a,int n){int v=1;while(n){if(n&1)v=mul(v,a);a=mul(a,a);n>>=1;}return v;}
M plusm(M a,M b){for(int i=0;i<3;i++)a[i]+=b[i];return a;}M minusm(M a,M b){for(int i=0;i<3;i++)a[i]-=b[i];return a;}
bool mdivides(M a,M b){for(int i=0;i<3;i++)if(a[i]>b[i])return false;return true;}
void term(Poly &p,M m,int c){if(!c)return;auto it=p.find(m);if(it==p.end())p[m]=c;else{int v=add(it->second,c);if(v)it->second=v;else p.erase(it);}}
void submul(Poly&p,Poly const&q,M m,int c){for(auto const &it:q)term(p,plusm(it.first,m),-mul(it.second,c));}
Poly monic(Poly p){if(p.empty())return p;int iv=powi(p.begin()->second,P-2);for(auto &t:p)t.second=mul(t.second,iv);return p;}
Poly reduce(Poly p,vector<Poly>const&bs,Poly*qt=nullptr){Poly rem;long steps=0;while(!p.empty()){auto lm=p.begin()->first;int lc=p.begin()->second; bool did=false;for(int i=0;i<(int)bs.size();i++){auto &b=bs[i];if(b.empty()||!mdivides(b.begin()->first,lm))continue;M m=minusm(lm,b.begin()->first);int co=mul(lc,powi(b.begin()->second,P-2));if(qt)term(*qt,m,co);submul(p,b,m,co);did=true;break;}if(!did){rem[lm]=lc;p.erase(p.begin());}if(++steps>2000000)throw runtime_error("step budget");}return rem;}
vector<Poly> gates;
Poly strip(Poly p){if(p.empty())return p;bool changed=true;while(changed){changed=false;M mins{INT_MAX,INT_MAX,INT_MAX};for(auto &t:p)for(int i=0;i<3;i++)mins[i]=min(mins[i],t.first[i]);if(mins!=M{0,0,0}){Poly np;for(auto&t:p)np[minusm(t.first,mins)]=t.second;p=move(np);changed=true;}for(int i=0;i<(int)gates.size();i++){Poly qt;Poly rem=reduce(p,vector<Poly>{gates[i]},&qt);if(rem.empty()){p=move(qt);changed=true;cerr<<" factor "<<i;}}}return monic(p);}
struct Pair{int i,j,deg;M l;};struct PO{bool operator()(Pair const&a,Pair const&b)const{if(a.deg!=b.deg)return a.deg>b.deg;return a.i+a.j>b.i+b.j;}};
Poly readp(){int n;cin>>n;Poly p;for(int j=0;j<n;j++){int a,b,c,k;cin>>a>>b>>c>>k;p[{a,b,c}]=k;}return monic(p);}
void save(Poly const&p,string path){ofstream f(path);f<<p.size()<<"\n";for(auto&t:p)f<<t.first[0]<<' '<<t.first[1]<<' '<<t.first[2]<<' '<<t.second<<'\n';}
int main(int argc,char**argv){try{int nb,ng;cin>>nb>>ng;vector<Poly> ins;for(int i=0;i<nb;i++)ins.push_back(readp());for(int i=0;i<ng;i++)gates.push_back(readp());vector<Poly>B;priority_queue<Pair,vector<Pair>,PO> pairs;auto start=chrono::steady_clock::now();string out=argv[1];ofstream trace(out+"/trace.tsv");auto append=[&](Poly p,int pa,int pb){p=strip(reduce(p,B));if(p.empty())return false;int idx=B.size();save(p,out+"/p"+to_string(idx)+".txt");trace<<idx<<'\t'<<pa<<'\t'<<pb<<'\t'<<p.size()<<'\n';trace.flush();cerr<<"\nADD "<<idx<<" from "<<pa<<","<<pb<<" terms "<<p.size()<<" degree "<<accumulate(p.begin()->first.begin(),p.begin()->first.end(),0)<<" LM ";for(int k:p.begin()->first)cerr<<k<<",";cerr<<" pairs "<<pairs.size()<<endl;
 if(p.size()==1&&p.begin()->first==M{0,0,0}){cerr<<"UNIT MOD "<<P<<"\n";return true;}
 for(int i=0;i<idx;i++){M lm=B[i].begin()->first,l=p.begin()->first;bool cop=true;for(int k=0;k<3;k++){if(min(lm[k],l[k])>0)cop=false;l[k]=max(l[k],lm[k]);}if(!cop)pairs.push({i,idx,l[0]+l[1]+l[2],l});}B.push_back(move(p));return false;};for(int i=0;i<nb;i++)if(append(ins[i],-1,i))return 0;int done=0;while(!pairs.empty()){auto pair=pairs.top();pairs.pop();auto &a=B[pair.i],&b=B[pair.j];Poly s;submul(s,a,minusm(pair.l,a.begin()->first),P-1);submul(s,b,minusm(pair.l,b.begin()->first),1);if(append(s,pair.i,pair.j))return 0;if(++done%20==0)cerr<<"processed "<<done<<" size "<<B.size()<<endl;if(B.size()>110||chrono::duration<double>(chrono::steady_clock::now()-start).count()>120){cerr<<"BUDGET STOP\n";return 0;}}cerr<<"FINAL NONUNIT "<<B.size()<<endl;}catch(exception&e){cerr<<"ERROR "<<e.what()<<endl;return 1;}}
