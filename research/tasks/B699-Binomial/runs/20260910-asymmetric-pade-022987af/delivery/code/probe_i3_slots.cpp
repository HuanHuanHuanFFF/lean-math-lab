#include <iostream>
#include <cstdint>
#include <chrono>
#include <cstdlib>
// Exact falsification probe for a NECESSARY system, not a proof of B699.
// n slot: all odd prime factors of n are avoided, except a single cancelled 3.
// This forces j to be a multiple of oddpart(n)/(3 if v3(n)=1 else 1).
int main(int argc,char**argv){
 const uint64_t N=argc>1?std::strtoull(argv[1],nullptr,10):10000000ULL;
 if(N>1000000000ULL || N<8) return 2;
 uint64_t seeds=0, passD=0, both=0;
 auto begin=std::chrono::steady_clock::now();
 std::cout<<"N "<<N<<"\n";
 for(uint64_t n=8;n<=N;n+=4){
   uint64_t step=n>>__builtin_ctzll(n);
   if(step%3==0 && step%9!=0) step/=3;
   uint64_t start=((4+step-1)/step)*step;
   for(uint64_t j=start;j<=n/2;j+=step){
     ++seeds;
     if((3*j*(j-1))%(n-1)) continue;
     ++passD;
     if(((__uint128_t)6*j*(j-1)*(j-2))%(n-2)) continue;
     ++both;
     std::cout<<"candidate "<<n<<" "<<j<<" step "<<step<<"\n";
   }
 }
 std::cout<<"seeds "<<seeds<<" D_pass "<<passD<<" both_pass "<<both<<"\n";
 std::cout<<"seconds "<<std::chrono::duration<double>(std::chrono::steady_clock::now()-begin).count()<<"\n";
}
