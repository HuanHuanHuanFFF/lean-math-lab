// Exact bounded regression. Floating cbrt only seeds an integer-adjusted root.
#include <cmath>
#include <cstdint>
#include <iostream>
#include <string>
#include <stdexcept>
using U=__uint128_t;
std::string dec(U x){ if(!x)return "0";std::string s;while(x){s.insert(s.begin(),char('0'+x%10));x/=10;}return s;}
int main(int argc,char**argv){
 unsigned long parsed=argc>1?std::stoul(argv[1]):5000;
 if(parsed<8 || parsed>20000)throw std::runtime_error("require 8 <= limit <= 20000 (checked uint128 range)");
 unsigned limit=static_cast<unsigned>(parsed);
 uint64_t count=0,hit=0;
 for(uint64_t n=8;n<=limit;++n)for(uint64_t j=4;j<=n/2;++j){
  uint64_t k=n-j;
  U base=U(n)*j*k;
  U M=base*base*(n-2)*(j-1)*(k-1);
  uint64_t r=uint64_t(cbrtl((long double)M));
  auto cube=[](uint64_t a)->U{return U(a)*a*a;};
  while(cube(r)<M)++r;while(cube(r)>M)--r;
  ++count;
  if(cube(r)==M){++hit;std::cout<<n<<","<<j<<","<<r<<"\n";}
 }
 std::cerr<<"pairs="<<count<<" hits="<<hit<<" limit="<<limit<<"\n";
}
