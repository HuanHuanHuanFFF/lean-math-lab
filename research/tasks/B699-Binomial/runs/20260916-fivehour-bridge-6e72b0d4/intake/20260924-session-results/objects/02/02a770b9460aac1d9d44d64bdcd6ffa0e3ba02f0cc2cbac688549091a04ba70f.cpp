// Complete F_p[N]-module interpolation for the supplied downward-closed jets.
// Exact integer arithmetic. See PROOFS.md for the kernel-basis invariant and
// the (weighted degree, leading X-position) predictable-leading-term argument.
// argv: case_file trace_output reverse_sources
// case_file: quotient X-degree, then all 21 (r,s,order) triples.
// At noncenters order is ordinary; at centers it is weight (1,2).
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
 if(argc!=4)throw runtime_error("input_case trace_output reverse_sources");
 ifstream input(argv[1]); int h;input>>h;if(h<0||h>152)throw runtime_error("h bound");
 for(int d=2;d*d<=p;d++)if(p%d==0)throw runtime_error("nonprime");
 int reverse=stoi(argv[3]);vector<array<int,3>>points;int rr,ss,mm;
 while(input>>rr>>ss>>mm){if(rr<3||rr>8||ss<0||ss>rr/2||mm<0||mm>200)throw runtime_error("bad source");points.push_back({rr,ss,mm});}
 if(points.size()!=21)throw runtime_error("need all 21 points");
 vector<pair<int,int>> seen;for(auto t:points)seen.push_back({t[0],t[1]});sort(seen.begin(),seen.end());
 vector<pair<int,int>> expected;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++)expected.push_back({r,s});
 if(seen!=expected)throw runtime_error("duplicate or missing source point");
 if(reverse)std::reverse(points.begin(),points.end());vector<Jet>jets;
 for(auto v:points){int r=v[0],s=v[1],M=v[2];bool diag=2*s==r;
 for(int j=0;j<M;j++){int prev=-1;for(int i=0;i+(diag?2:1)*j<M;i++){
 jets.push_back({r,s,i,j,diag?s:0,s*(r-s),prev});prev=jets.size()-1;}}
 }
 int J=jets.size(),K=h+1,L=max(306,h+1);
 vector<vector<int>>C(L,vector<int>(L));for(int i=0;i<L;i++){C[i][0]=C[i][i]=1;for(int j=1;j<i;j++)C[i][j]=mod(C[i-1][j-1]+C[i-1][j]);}
 vector<vector<int>>eval(K,vector<int>(J));vector<int>w(K);for(int b=0;b<K;b++){w[b]=2*b;for(int k=0;k<J;k++){
  auto t=jets[k]; if(t.j>b||t.i>b-t.j)continue;
  eval[b][k]=mul(C[b][t.j],mul(C[b-t.j][t.i],mul(pw(t.v,b-t.j-t.i),pw(t.shear,t.i))));
 }}
 ofstream out(argv[2]);if(!out)throw runtime_error("output unavailable");out<<"p "<<p<<" h "<<h<<" constraints "<<J<<"\n";
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
