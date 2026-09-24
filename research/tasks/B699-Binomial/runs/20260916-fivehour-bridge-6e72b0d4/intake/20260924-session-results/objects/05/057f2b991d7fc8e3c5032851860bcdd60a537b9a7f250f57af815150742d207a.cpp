// Complete F_p[N]-module interpolation for the supplied downward-closed jets.
// Exact integer arithmetic. See PROOFS.md for the kernel-basis invariant and
// the (weighted degree, leading X-position) predictable-leading-term argument.
// argv: h v3 ... v8 K4 K6 K8 S5 trace_path reverse_sources
#include <algorithm>
#include <vector>
#include <array>
#include <iostream>
#include <fstream>
#include <chrono>
#include <stdexcept>
using namespace std;
#ifndef PRIME
#define PRIME 257
#endif
constexpr int p=PRIME;
int mod(int x){x%=p; if(x<0)x+=p; return x;}
int mul(int a,int b){return (int)((long long)a*b%p);}
int pw(int a,int n){int z=1;for(;n;n>>=1,a=mul(a,a))if(n&1)z=mul(z,a);return z;}
struct Jet{int r,s,i,j,shear,v,prev;};
int main(int argc,char**argv){
 if(argc!=14)throw runtime_error("h v3 v4 v5 v6 v7 v8 K4 K6 K8 S5 trace_path reverse_sources");
 int h=stoi(argv[1]); if(h<0||h>152)throw runtime_error("h outside frozen range");
 for(int d=2;d*d<=p;d++)if(p%d==0)throw runtime_error("modulus is not prime");
 
 vector<int>vr;for(int k=2;k<8;k++)vr.push_back(stoi(argv[k]));
 vector<vector<int>>off={{77,74},{67,57},{51,54,46},{40,43,48},{31,34,39,45},{25,28,33,39}};
 vector<int>db={0,56,0,41,0,52};vector<Jet>jets;
 vector<int>ks={0,stoi(argv[8]),0,stoi(argv[9]),0,stoi(argv[10])};int s5=stoi(argv[11]),reverse=stoi(argv[13]);
 for(int x:vr)if(x<0||x>305)throw runtime_error("invalid vertical order");
 for(int x:ks)if(x<0||x>63)throw runtime_error("invalid kappa lower bound");
 if(s5<0||s5>8)throw runtime_error("invalid S5 count");
 for(int step=0;step<6;step++){int a=reverse?5-step:step;int r=a+3;for(int ss=0;ss<=r/2;ss++){int s=reverse?r/2-ss:ss;
  bool diag=(2*s==r);int base=max(0,(diag?db[a]:off[a][s])-vr[a]);int om=diag?(base+ks[a]+1)/2:base;
  int maxj=diag?max((base+1)/2,om):om+((r==5&&s==2)?s5:0);
  for(int j=0;j<maxj;j++){int lim=diag?max(base-2*j,om-j):max(om-j,((r==5&&s==2&&j<om+s5)?1:0));int prev=-1;
   for(int i=0;i<lim;i++){jets.push_back({r,s,i,j,diag?s:0,s*(r-s),prev});prev=jets.size()-1;}
  }
 }}
 int J=jets.size(),K=h+1,L=max(306,h+1);
 // Tail coefficient functionals [X^b]F(N0,X) for non-source N0.
 vector<int> ns; for(int n=0;n<p && (int)ns.size()<6;n++)if(n<3||n>8) ns.push_back(n);
 int JT=J+ns.size()*K;
 vector<vector<int>>C(L,vector<int>(L));for(int i=0;i<L;i++){C[i][0]=C[i][i]=1;for(int j=1;j<i;j++)C[i][j]=mod(C[i-1][j-1]+C[i-1][j]);}
 vector<vector<int>>eval(K,vector<int>(JT));vector<int>w(K);for(int b=0;b<K;b++){w[b]=2*b;for(int k=0;k<J;k++){
  auto t=jets[k]; if(t.j>b||t.i>b-t.j)continue;
  eval[b][k]=mul(C[b][t.j],mul(C[b-t.j][t.i],mul(pw(t.v,b-t.j-t.i),pw(t.shear,t.i))));
 }}
 for(int b=0;b<K;b++)for(int v=0;v<(int)ns.size();v++)eval[b][J+v*K+b]=1;
 ofstream out(argv[12]);out<<"p "<<p<<" h "<<h<<" constraints "<<J<<"\n";
 struct Op {int a,r;vector<int> c;}; vector<Op> history;
 int nonzero=0;auto start=chrono::steady_clock::now();
 for(int k=0;k<J;k++){
  int a=-1;for(int b=0;b<K;b++)if(eval[b][k] && (a<0 || make_pair(w[b],b)<make_pair(w[a],a)))a=b;
  if(a<0){out<<k<<" -1\n"; continue;}
  nonzero++;int inv=pw(eval[a][k],p-2);
  out<<k<<' '<<a<<' '<<eval[a][k]<<' '<<w[a]<<'\n';
  Op op{a,jets[k].r,vector<int>(K)};
  for(int b=0;b<K;b++)if(b!=a)op.c[b]=mul(eval[b][k],inv);
  history.push_back(op);
  for(int b=0;b<K;b++)if(b!=a && eval[b][k]){
   int c=mul(eval[b][k],inv);
   for(int l=k;l<JT;l++)eval[b][l]=mod(eval[b][l]-c*eval[a][l]);
  }
  int r=jets[k].r;
 for(int v=0;v<(int)ns.size();v++)for(int d=0;d<K;d++)eval[a][J+v*K+d]=mod((ns[v]-r)*eval[a][J+v*K+d]);
  for(int l=J-1;l>=k;l--){int prev=jets[l].prev;eval[a][l]=mod((jets[l].r-r)*eval[a][l]+(prev<0?0:eval[a][prev]));}
  if(eval[a][k]!=0)throw runtime_error("new pivot does not satisfy current functional");
  for(int b=0;b<K;b++)if(eval[b][k]!=0)throw runtime_error("current functional not annihilated");
  w[a]++;
 }
 int degree_sum=0;for(int x:w)degree_sum+=x;
 if(degree_sum!=h*(h+1)+nonzero)throw runtime_error("degree/length invariant");
 int nullity=0;for(int b=0;b<K;b++)nullity+=max(0,2*h-w[b]+1);
 // Recover each bounded terminal basis element by reverse (adjoint) replay.
 vector<int> low;for(int b=0;b<K;b++)if(w[b]<=2*h)low.push_back(b);
 for(int b:low)if(w[b]!=2*h)throw runtime_error("expand N-multiples before using this kernel certificate");
 ofstream coeffout(string(argv[12])+".basis");coeffout<<"p "<<p<<" h "<<h<<" dimension "<<low.size()<<'\n';
 for(int target:low){
  int A=2*h;vector<vector<int>> f(K,vector<int>(A+1));vector<int> deg(K,-1);f[target][0]=1;deg[target]=0;
  for(int kk=(int)history.size()-1;kk>=0;kk--){auto &o=history[kk];vector<int> tmp(A+2);int top=deg[o.a]+1;
   for(int d=0;d<=deg[o.a];d++){tmp[d+1]+=f[o.a][d];tmp[d]-=o.r*f[o.a][d];}
   for(int b=0;b<K;b++)if(o.c[b]&&deg[b]>=0){top=max(top,deg[b]);for(int d=0;d<=deg[b];d++)tmp[d]-=o.c[b]*f[b][d];}
   for(int d=0;d<=top;d++)tmp[d]=mod(tmp[d]);while(top>=0&&!tmp[top])top--;
   if(top>A)throw runtime_error("adjoint coefficient degree overflow");fill(f[o.a].begin(),f[o.a].end(),0);
   for(int d=0;d<=top;d++)f[o.a][d]=tmp[d];deg[o.a]=top;
  }
  coeffout<<"BASIS "<<target<<' '<<w[target]<<'\n';
  for(int b=0;b<K;b++){
   if(deg[b]>2*h-2*b)throw runtime_error("weight check failed");
   coeffout<<b<<' '<<deg[b];for(int d=0;d<=deg[b];d++)coeffout<<' '<<f[b][d];coeffout<<'\n';
   for(int v=0;v<(int)ns.size();v++){
    int x=0;for(int d=deg[b];d>=0;d--)x=mod(x*ns[v]+f[b][d]);
    if(x!=eval[target][J+v*K+b])throw runtime_error("adjoint coefficient vs forward specialization mismatch");
   }
  }
 }
 out<<"TAIL "<<ns.size()<<' '<<K<<'\n';
 for(int b=0;b<K;b++)if(w[b]<=2*h){
  for(int v=0;v<(int)ns.size();v++){
   out<<"POLY "<<b<<' '<<w[b]<<' '<<ns[v];
   for(int d=0;d<K;d++)out<<' '<<eval[b][J+v*K+d];out<<'\n';
  }
 }
 out<<"weights";for(int a:w)out<<' '<<a;out<<'\n';
 cout<<"h "<<h<<" constraints "<<J<<" independent "<<nonzero<<" min_weight "<<*min_element(w.begin(),w.end())<<" max_weight "<<*max_element(w.begin(),w.end())<<" nullity "<<nullity<<" w_h "<<w[h]<<endl;
}
