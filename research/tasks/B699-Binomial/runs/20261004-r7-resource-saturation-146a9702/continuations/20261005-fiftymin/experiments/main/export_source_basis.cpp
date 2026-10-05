// Exact homogeneous Hasse-jet kernel over F_p[N], shifted degree wt(X)=2.
// Input: e L modulus order_mode npoints; then (r,s,weight_t,order) per point.
// No Lean or repository access. Output full pivot trace and shifted basis degrees.
#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <tuple>
#include <vector>
using namespace std;
struct Jet{int r,s,x,a,b,prev,wt,point;};
int powmod(int a,int n,int p){int z=1;for(;n;n/=2,a=int(1LL*a*a%p))if(n&1)z=int(1LL*z*a%p);return z;}
template<int P> int run(int e,int L,int mode,int np,const char* out){
 vector<tuple<int,int,int,int>> pts(np);for(auto &[r,s,w,m]:pts)cin>>r>>s>>w>>m;
 if(mode)reverse(pts.begin(),pts.end());
 vector<Jet> js;
 for(int z=0;z<np;z++){
  auto [r,s,w,m]=pts[z]; vector<vector<int>> id(m,vector<int>(m,-1));
  for(int a=0;a<m;a++)for(int b=0;a+w*b<m;b++){
   id[a][b]=js.size();js.push_back({r,s,s*(r-s),a,b,a?id[a-1][b]:-1,w,z});
  }
 }
 const int M=js.size(),K=e+1; vector<vector<int>> E(K,vector<int>(M));
 vector<vector<int>> C(K,vector<int>(K));
 for(int i=0;i<K;i++){C[i][0]=C[i][i]=1;for(int j=1;j<i;j++)C[i][j]=(C[i-1][j-1]+C[i-1][j])%P;}
 for(int i=0;i<K;i++)for(int t=0;t<M;t++){
  const auto &j=js[t]; if(i<j.a+j.b || (j.wt==1 && j.a))continue;
  int z=C[i][j.b]*C[i-j.b][j.a]%P;
  z=z*powmod(j.x,i-j.b-j.a,P)%P;
  if(j.wt==2)z=z*powmod(j.s,j.a,P)%P;
  E[i][t]=z;
 }
 vector<int> W(K); for(int i=0;i<K;i++)W[i]=2*i;
 vector<int> disc(K);int rank=0;
 struct Op {int pivot,r; vector<int> f;}; vector<Op> ops;
 ofstream trace(string(out)+".trace.tsv");
 trace<<"condition\tpoint\ta\tb\tpivot\tpivot_value\tweight_before\n";
 auto st=chrono::steady_clock::now();
 for(int t=0;t<M;t++){
  int piv=-1;
  for(int i=0;i<K;i++)if((disc[i]=E[i][t]) && (piv<0 || pair(W[i],i)<pair(W[piv],piv)))piv=i;
  if(piv<0){trace<<t<<'\t'<<js[t].point<<'\t'<<js[t].a<<'\t'<<js[t].b<<"\t-1\t0\t-1\n";continue;}
  int d=disc[piv],iv=powmod(d,P-2,P);
 Op op{piv,js[t].r,vector<int>(K)}; for(int i=0;i<K;i++)if(i!=piv)op.f[i]=disc[i]*iv%P;ops.push_back(move(op));

  trace<<t<<'\t'<<js[t].point<<'\t'<<js[t].a<<'\t'<<js[t].b<<'\t'<<piv<<'\t'<<d<<'\t'<<W[piv]<<'\n';
  const int * __restrict__ src=E[piv].data();
  for(int i=0;i<K;i++)if(i!=piv && disc[i]){
   int f=disc[i]*iv%P;int * __restrict__ dst=E[i].data();
   for(int k=t;k<M;k++)dst[k]=(dst[k]+P*P-f*src[k])%P;
  }
  // Multiplication by N-r: traverse backwards, preserving old predecessor jets.
  int rr=js[t].r;
  for(int k=M-1;k>=t;k--){
   int z=js[k].r-rr;if(z<0)z+=P;
   int prior=(js[k].prev<0 || js[k].prev<t)?0:E[piv][js[k].prev];
   E[piv][k]=(z*E[piv][k]+prior)%P;
  }
  W[piv]++;rank++;
  if(t%1000==0)cerr<<"jet "<<t<<"/"<<M<<" elapsed "<<chrono::duration<double>(chrono::steady_clock::now()-st).count()<<"\n";
 }

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

int dim=0;for(int w:W)dim+=max(0,L-w+1);
 ofstream o(string(out)+".json");o<<"{\n\"prime\":"<<P<<",\"e\":"<<e<<",\"L\":"<<L<<",\"mode\":"<<mode<<",\"conditions\":"<<M<<",\"nonredundant\":"<<rank<<",\"dimension\":"<<dim<<",\"min_weight\":"<<*min_element(W.begin(),W.end())<<",\"weights\":[";
 for(int i=0;i<K;i++){if(i)o<<',';o<<W[i];}o<<"],\"seconds\":"<<chrono::duration<double>(chrono::steady_clock::now()-st).count()<<"}\n";
 cout<<"e="<<e<<" L="<<L<<" p="<<P<<" mode="<<mode<<" conditions="<<M<<" dimension="<<dim<<" min_weight="<<*min_element(W.begin(),W.end())<<"\n";return 0;
}
int main(int argc,char**argv){try{if(argc!=2)throw runtime_error("output prefix required");int e,L,p,mode,np;if(!(cin>>e>>L>>p>>mode>>np)||e<0||e>200||np!=21)throw runtime_error("bad input");if(p==257)return run<257>(e,L,mode,np,argv[1]);if(p==263)return run<263>(e,L,mode,np,argv[1]);throw runtime_error("unsupported prime");}catch(const exception&e){cerr<<e.what()<<'\n';return 1;}}
