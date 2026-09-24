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
 if(p<257||p>263)throw runtime_error("unsupported modulus: use 257 or 263");
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
 vector<vector<int>>C(L,vector<int>(L));for(int i=0;i<L;i++){C[i][0]=C[i][i]=1;for(int j=1;j<i;j++)C[i][j]=mod(C[i-1][j-1]+C[i-1][j]);}
 vector<vector<int>>eval(K,vector<int>(J));vector<int>w(K);for(int b=0;b<K;b++){w[b]=2*b;for(int k=0;k<J;k++){
  auto t=jets[k]; if(t.j>b||t.i>b-t.j)continue;
  eval[b][k]=mul(C[b][t.j],mul(C[b-t.j][t.i],mul(pw(t.v,b-t.j-t.i),pw(t.shear,t.i))));
 }}
 ofstream out(argv[12]);out<<"p "<<p<<" h "<<h<<" constraints "<<J<<"\n";
 int nonzero=0;auto start=chrono::steady_clock::now();
 for(int k=0;k<J;k++){
  int a=-1;for(int b=0;b<K;b++)if(eval[b][k] && (a<0 || make_pair(w[b],b)<make_pair(w[a],a)))a=b;
  if(a<0){out<<k<<" -1\n"; continue;}
  nonzero++;int inv=pw(eval[a][k],p-2);
  out<<k<<' '<<a<<' '<<eval[a][k]<<' '<<w[a]<<'\n';
  for(int b=0;b<K;b++)if(b!=a && eval[b][k]){
   int c=mul(eval[b][k],inv);
   for(int l=k;l<J;l++)eval[b][l]=mod(eval[b][l]-c*eval[a][l]);
  }
  int r=jets[k].r;
  for(int l=J-1;l>=k;l--){int prev=jets[l].prev;eval[a][l]=mod((jets[l].r-r)*eval[a][l]+(prev<0?0:eval[a][prev]));}
  if(eval[a][k]!=0)throw runtime_error("new pivot does not satisfy current functional");
  for(int b=0;b<K;b++)if(eval[b][k]!=0)throw runtime_error("current functional not annihilated");
  w[a]++;
 }
 int degree_sum=0;for(int x:w)degree_sum+=x;
 if(degree_sum!=h*(h+1)+nonzero)throw runtime_error("degree/length invariant");
 int nullity=0;for(int b=0;b<K;b++)nullity+=max(0,2*h-w[b]+1);
 out<<"weights";for(int a:w)out<<' '<<a;out<<'\n';
 cout<<"h "<<h<<" constraints "<<J<<" independent "<<nonzero<<" min_weight "<<*min_element(w.begin(),w.end())<<" max_weight "<<*max_element(w.begin(),w.end())<<" nullity "<<nullity<<" w_h "<<w[h]<<endl;
}
