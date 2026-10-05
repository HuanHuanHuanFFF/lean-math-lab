// Exhaustive labelled triangle-free graphs, n<=7. Exact integer checks only.
// Compile: g++ -O2 -std=c++17 audit_small.cpp -o audit_small
// Each unordered edge is counted once. No solver, no random choices.
#include <algorithm>
#include <chrono>
#include <cstdint>
#include <iostream>
#include <vector>
using ll = long long; using i128=__int128_t;
int pc(unsigned x){return __builtin_popcount(x);}
struct Cert { ll num,den; unsigned core; int center; };
ll edges_inside(const std::vector<unsigned>& a,unsigned S){ll z=0;for(int u=0;u<(int)a.size();u++)if(S>>u&1)z+=pc(a[u]&S);return z/2;}
Cert core_direction(const std::vector<unsigned>& a,unsigned B){
 ll b=pc(B),m0=edges_inside(a,B); if(!m0)return {0,1,B,-1};
 unsigned H=B;ll h=b,m=m0;
 while(true){int kill=-1;for(int v=0;v<(int)a.size();v++)if(H>>v&1){if((ll)pc(a[v]&H)*h<m){kill=v;break;}}
  if(kill<0)break;ll d=pc(a[kill]&H);H^=1u<<kill;m-=d;--h;}
 Cert best={0,1,H,-1};
 for(int v=0;v<(int)a.size();v++)if(H>>v&1){ll d=pc(a[v]&H),L=0;for(int w=0;w<(int)a.size();w++)if((a[v]&H)>>w&1)L+=pc(a[w]&H);ll g=h*L-m*d,M=std::max(d,h-d),num=d*g,den=M*M;
  if((i128)num*best.den>(i128)best.num*den)best={num,den,H,v};}
 if((i128)best.num*(b*b-m0)*(b*b-m0)<(i128)4*m0*m0*m0*best.den){std::cerr<<"CORE_BOUND_FAIL\n";std::exit(2);}
 if(best.num<0 || best.num>m0*best.den){std::cerr<<"CORE_RANGE_FAIL\n";std::exit(3);}
 return best;
}
ll fractional_half_twice(const std::vector<unsigned>& a){int n=a.size();ll best=100000;for(unsigned S=0;S<(1u<<n);S++)if(pc(S)==n/2){ll twice=2*edges_inside(a,S);if(n%2){for(int v=0;v<n;v++)if(!(S>>v&1))best=std::min(best,twice+pc(a[v]&S));}else best=std::min(best,twice);}return best;}
int main(){auto t0=std::chrono::steady_clock::now();ll total_tf=0,total_local=0,total_core=0;
 for(int n=0;n<=7;n++){std::vector<std::pair<int,int>> pairs;for(int u=0;u<n;u++)for(int v=u+1;v<n;v++)pairs.push_back({u,v});ll count=0,locals=0,cores=0;
 for(unsigned mask=0;mask<(1u<<pairs.size());mask++){
  std::vector<unsigned>a(n,0);ll m=0;for(int k=0;k<(int)pairs.size();k++)if(mask>>k&1){auto[u,v]=pairs[k];a[u]|=1u<<v;a[v]|=1u<<u;++m;}
  bool tf=true;for(auto[u,v]:pairs)if((a[u]>>v&1)&&(a[u]&a[v])){tf=false;break;}if(!tf)continue;++count;
  unsigned all=(1u<<n)-1;auto cert=core_direction(a,all);if(m)++cores;
  ll half2=fractional_half_twice(a);
  // C2 = 27/1024 - 2*(163/25600)^3/(1-2*163/25600)^2.
  // Check without substituting a rounded decimal; common denominator is exact.
  const ll DEN=8176320972800LL;
  const ll NUM=27*(DEN/1024)-4330747LL;
  if((i128)half2*DEN>(i128)2*n*n*NUM){std::cerr<<"GLOBAL_FAIL n="<<n<<" mask="<<mask<<"\n";return 4;}
  if((i128)half2*4196188620800LL>(i128)2*n*n*110637361403LL){std::cerr<<"REFINED_GLOBAL_FAIL\n";return 9;}
  int alpha=0;
  for(unsigned S=0;S<(1u<<n);S++)if(pc(S)>alpha && edges_inside(a,S)==0)alpha=pc(S);
  if(n && 2*alpha>=n && half2!=0){std::cerr<<"INDEPENDENT_HALF_FAIL\n";return 10;}
  if(n && 8*alpha>=3*n && 2*alpha<=n && 2*half2>alpha*(n-2*alpha)){std::cerr<<"R3_FINITE_FAIL\n";return 11;}
  ll tr4=0,sumcross=0,sumbedges=0,J=0;
  for(int u=0;u<n;u++)for(int v=0;v<n;v++){ll c=pc(a[u]&a[v]);tr4+=c*c;}
  for(int i=0;i<n;i++)for(int j=i+1;j<n;j++)for(int k=j+1;k<n;k++)for(int l=k+1;l<n;l++){unsigned T=(1u<<i)|(1u<<j)|(1u<<k)|(1u<<l);if(pc(a[i]&T)==1&&pc(a[j]&T)==1&&pc(a[k]&T)==1&&pc(a[l]&T)==1)++J;}
  int maxdeg=0;for(auto row:a)maxdeg=std::max(maxdeg,pc(row));
  for(auto[u,v]:pairs)if(a[u]>>v&1){unsigned B=all&~(a[u]|a[v]);ll cross=0;for(int x=0;x<n;x++)if(a[u]>>x&1)cross+=pc(a[x]&a[v]);sumcross+=cross;sumbedges+=edges_inside(a,B);
   if(2*maxdeg<n){auto z=core_direction(a,B);if(z.num)++cores;ll X=m-cross;
    if((i128)4*half2*z.den>(i128)2*X*z.den-z.num){std::cerr<<"LOCAL_FAIL n="<<n<<" mask="<<mask<<" u="<<u<<" v="<<v<<"\n";return 5;}++locals;
   }
  }
  if(tr4!=2*sumcross || sumbedges!=2*J){std::cerr<<"COUNT_IDENTITY_FAIL\n";return 6;}
  // R1 and R2 finite checks (not a proof of the external published inequalities).
  // C4=3 tr4/n^4, rho=2m/n^2, M4=24J/n^4.
  if(n&& (i128)768*tr4 <(i128)1536*m*m-(i128)162*m*n*n){std::cerr<<"R1_FAIL\n";return 7;}
  if(n&& (i128)75*tr4+(i128)1200*J <(i128)150*m*m-(i128)12*m*n*n){std::cerr<<"R2_FAIL\n";return 8;}
 }
 total_tf+=count;total_local+=locals;total_core+=cores;std::cout<<"{\"n\":"<<n<<",\"triangle_free_labelled_graphs\":"<<count<<",\"local_edge_tests\":"<<locals<<",\"nonempty_core_tests\":"<<cores<<"}"<<std::endl;
 }
 auto sec=std::chrono::duration<double>(std::chrono::steady_clock::now()-t0).count();std::cout<<"PASS total_graphs="<<total_tf<<" local_tests="<<total_local<<" core_tests="<<total_core<<" elapsed_seconds="<<sec<<"\n";
}
