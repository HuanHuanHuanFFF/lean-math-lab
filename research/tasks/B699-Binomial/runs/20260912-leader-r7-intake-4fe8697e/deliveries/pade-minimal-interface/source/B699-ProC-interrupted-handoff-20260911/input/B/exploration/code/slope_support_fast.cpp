// Diagnostic only. Each bound is on the reduced dyadic denominator, NOT on n globally.
#include <algorithm>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <numeric>
#include <vector>
using U=uint64_t;using W=__uint128_t;
int main(int argc,char**argv){int E=argc>1?std::atoi(argv[1]):18;if(E<0||E>22)return 2;
U A=3ULL<<E;std::vector<unsigned> spf(A+1);for(U i=2;i<=A;i++)if(!spf[i])for(U j=i;j<=A;j+=i)if(!spf[j])spf[j]=i;
U n1=0,n2=0;auto start=std::chrono::steady_clock::now();
for(int e=0;e<=E;e++)for(int ep=0;ep<2;ep++){
U a=(1ULL<<e)*(ep?3:1);if(a<2)continue;for(U b=1;b<=a/2;b++){
if(std::gcd(a,b)>1)continue;std::vector<std::pair<U,int>> fs{{3,1}};
for(U t:{b,a-b})while(t>1){U p=spf[t];int k=0;while(t%p==0)t/=p,++k;bool found=false;for(auto &v:fs)if(v.first==p){v.second+=k;found=true;break;}if(!found)fs.emplace_back(p,k);}
std::vector<U> ds{1};for(auto [p,k]:fs){size_t len=ds.size();U q=1;for(int v=1;v<=k;v++){q*=p;for(size_t x=0;x<len;x++)ds.push_back(ds[x]*q);}}
for(U L:ds){if((L+1)%a)continue;U g=(L+1)/a,n=g*a,j=g*b;if(j<4||2*j>n||n%4)continue;if(ep && (n%3 || n%9==0))continue;++n1;
U N=n-2;U rem=U(W(6)*j%N);rem=U(W(rem)*(j-1)%N);rem=U(W(rem)*(j-2)%N);if(rem)continue;++n2;std::cout<<"CANDIDATE "<<n<<' '<<j<<' '<<a<<' '<<b<<' '<<g<<'\n';}}
std::cerr<<"CHECKPOINT e="<<e<<" epsilon="<<ep<<" first="<<n1<<" second="<<n2<<"\n";
}
std::cout<<"DONE E="<<E<<" first="<<n1<<" second="<<n2<<" seconds="<<std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count()<<'\n';}
