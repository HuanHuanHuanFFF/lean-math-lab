// Exhaustive necessary-condition probe, NOT a proof of B699.
#include <algorithm>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <numeric>
#include <stdexcept>
#include <string>
using u64=uint64_t; using u128=__uint128_t;
u128 gcd128(u128 a,u128 b){while(b){u128 r=a%b;a=b;b=r;}return a;}
u128 ch3(u64 x){return (u128)x*(x-1)*(x-2)/6;}
std::string dec(u128 x){std::string s;do{s.push_back('0'+x%10);x/=10;}while(x);std::reverse(s.begin(),s.end());return s;}
int main(int argc,char**argv){
 if(argc!=3)throw std::runtime_error("usage: probe N output.tsv");
 const u64 N=std::stoull(argv[1]);
 // This explicit guard keeps every cubic product far below 2^128.
 if(N<8 || N>100000000)throw std::runtime_error("require 8 <= N <= 100000000");
 std::ofstream out(argv[2]);if(!out)throw std::runtime_error("output");
 u64 tested=0,passed=0;out<<"n\tj\tcontent\tquotient\n";
 for(u64 n=8;n<=N;n++){
  u64 odd=n;while(odd%2==0)odd/=2;u64 step=odd/std::gcd(odd,(u64)3);
  for(u64 j=(4+step-1)/step*step;j<=n/2;j+=step){
   u64 k=n-j;tested++;
   u128 h=gcd128(ch3(j),ch3(k));
   h=gcd128(h,(u128)j*k*(k-1)/2);
   h=gcd128(h,(u128)k*j*(j-1)/2);
   u128 C=ch3(n); if(C%h)throw std::runtime_error("Vandermonde");
   u128 q=C/h;
   if((q&(q-1))==0){passed++;out<<n<<'\t'<<j<<'\t'<<dec(h)<<'\t'<<dec(q)<<'\n';}
  }
 }
 std::cout<<"N="<<N<<" tested="<<tested<<" shadow_survivors="<<passed<<"\n";
}
