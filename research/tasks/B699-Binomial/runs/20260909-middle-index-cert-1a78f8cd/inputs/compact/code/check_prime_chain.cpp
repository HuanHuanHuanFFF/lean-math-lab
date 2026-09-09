// Independent positive-witness checker. No sieve and no probabilistic primality.
#include <cstdint>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
#include <algorithm>
int main(int argc,char**argv){
 try {
  if(argc!=2) throw std::runtime_error("usage: check_prime_chain certificate.txt");
  std::ifstream in(argv[1]);if(!in)throw std::runtime_error("cannot open certificate");
  std::vector<std::int64_t> xs;std::int64_t x;
  while(in>>x)xs.push_back(x);
  if(!in.eof())throw std::runtime_error("malformed token");
  if(xs.empty()||xs.front()!=2||xs.back()<2000000||xs.back()>2000322)
    throw std::runtime_error("invalid coverage endpoints");
  // Trial-divide every small integer to construct a complete divisor list.
  std::vector<std::int64_t> base;
  for(std::int64_t d=2;d*d<=xs.back();++d){
   bool prime=true;
   for(auto p:base){if(p*p>d)break;if(d%p==0){prime=false;break;}}
   if(prime)base.push_back(d);
  }
  std::int64_t max_gap=0,divisions=0;
  for(std::size_t k=0;k<xs.size();++k){
   auto n=xs[k];if(n<2)throw std::runtime_error("nonpositive prime");
   if(k){auto gap=n-xs[k-1];if(gap<=0||gap>322)throw std::runtime_error("invalid gap");max_gap=std::max(max_gap,gap);}
   for(auto p:base){if(p*p>n)break;++divisions;if(n%p==0)throw std::runtime_error("composite witness "+std::to_string(n));}
  }
  std::cout<<"{\n  \"status\": \"PASS\",\n  \"method\": \"complete trial division of every supplied witness\",\n"
   <<"  \"count\": "<<xs.size()<<",\n  \"first\": "<<xs.front()<<",\n  \"last\": "<<xs.back()
   <<",\n  \"max_gap\": "<<max_gap<<",\n  \"base_prime_count\": "<<base.size()<<",\n  \"integer_divisions\": "<<divisions<<"\n}\n";
 }catch(const std::exception&e){std::cerr<<e.what()<<"\n";return 1;}
 return 0;
}
