// Adapted/transcribed from frozen quotient_module.cpp (source provenance in SOURCE_ADOPTION).
// Exact F_p[N] kernel-basis degree interpolation. This run uses NEW input cases only.
#include <bits/stdc++.h>
using namespace std;
#ifndef PRIME
#define PRIME 257
#endif
constexpr int p=PRIME;int md(int x){x%=p;return x<0?x+p:x;}int mul(int a,int b){return (int)(1LL*a*b%p);}int pw(int a,int n){int z=1;for(;n;n>>=1,a=mul(a,a))if(n&1)z=mul(z,a);return z;}
struct Jet{int r,s,i,j,sh,v,prev;};
int main(int ac,char**av){if(ac!=4)throw runtime_error("case trace reverse");ifstream in(av[1]);int h;in>>h;if(!in||h<0||h>152)throw runtime_error("h");for(int d=2;d*d<=p;d++)if(p%d==0)throw runtime_error("prime");vector<array<int,3>>points;int r,s,m;while(in>>r>>s>>m){if(r<3||r>8||s<0||s>r/2||m<0||m>200)throw runtime_error("source");points.push_back({r,s,m});}vector<pair<int,int>>seen,expected;for(auto a:points)seen.emplace_back(a[0],a[1]);sort(seen.begin(),seen.end());for(r=3;r<=8;r++)for(s=0;s<=r/2;s++)expected.emplace_back(r,s);if(seen!=expected)throw runtime_error("sources");if(stoi(av[3]))reverse(points.begin(),points.end());vector<Jet>jets;for(auto a:points){r=a[0];s=a[1];m=a[2];bool dg=2*s==r;for(int j=0;j<m;j++){int prev=-1;for(int i=0;i+(dg?2:1)*j<m;i++){jets.push_back({r,s,i,j,dg?s:0,s*(r-s),prev});prev=jets.size()-1;}}}
int J=jets.size(),K=h+1;vector<vector<int>>C(307,vector<int>(307));for(int i=0;i<307;i++){C[i][0]=C[i][i]=1;for(int j=1;j<i;j++)C[i][j]=md(C[i-1][j-1]+C[i-1][j]);}
vector<vector<int>>a(K,vector<int>(J));vector<int>w(K);for(int b=0;b<K;b++){w[b]=2*b;for(int k=0;k<J;k++){auto t=jets[k];if(t.j>b||t.i>b-t.j)continue;a[b][k]=mul(C[b][t.j],mul(C[b-t.j][t.i],mul(pw(t.v,b-t.j-t.i),pw(t.sh,t.i))));}}
ofstream out(av[2]);out<<p<<' '<<h<<' '<<J<<'\n';int nz=0;for(int k=0;k<J;k++){int t=-1;for(int b=0;b<K;b++)if(a[b][k]&&(t<0||pair<int,int>(w[b],b)<pair<int,int>(w[t],t)))t=b;if(t<0){out<<k<<" -1\n";continue;}nz++;out<<k<<' '<<t<<' '<<a[t][k]<<' '<<w[t]<<'\n';int inv=pw(a[t][k],p-2);for(int b=0;b<K;b++)if(b!=t&&a[b][k]){int c=mul(a[b][k],inv);for(int l=k;l<J;l++)a[b][l]=md(a[b][l]-c*a[t][l]);}r=jets[k].r;for(int l=J-1;l>=k;l--)a[t][l]=md((jets[l].r-r)*a[t][l]+(jets[l].prev<0?0:a[t][jets[l].prev]));for(int b=0;b<K;b++)if(a[b][k])throw runtime_error("annihilation");w[t]++;}
if(accumulate(w.begin(),w.end(),0)!=h*(h+1)+nz)throw runtime_error("degree invariant");int nullity=0;for(int x:w)nullity+=max(0,2*h-x+1);out<<"weights";for(int x:w)out<<' '<<x;out<<'\n';cout<<"p "<<p<<" h "<<h<<" constraints "<<J<<" independent "<<nz<<" min_weight "<<*min_element(w.begin(),w.end())<<" max_weight "<<*max_element(w.begin(),w.end())<<" nullity "<<nullity<<'\n';}
