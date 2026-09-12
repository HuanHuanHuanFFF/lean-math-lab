// Separate full cache acceptance: integer-domain segments (including evens),
// trial-generated base primes, binary-search root brackets, streamed comparison.
#include <gmpxx.h>
#include <vector>
#include <fstream>
#include <iostream>
#include <string>
#include <chrono>
#include <cstdint>
#include <stdexcept>
#include <sys/resource.h>
void must(bool b,const char*m){if(!b)throw std::runtime_error(m);}
mpz_class pow32(uint64_t x){mpz_class z=x,r;mpz_pow_ui(r.get_mpz_t(),z.get_mpz_t(),32);return r;}
int main(int argc,char**argv){try{
 must(argc==3,"usage: check_segmented_weight_cache limit directory");uint64_t lim=std::stoull(argv[1]);std::string path=argv[2];must(lim==100000000ULL,"declared full cache domain");
 uint16_t endian=1;must(*(unsigned char*)&endian==1,"little-endian cache required");uint32_t root=0;while(uint64_t(root+1)*(root+1)<=lim)++root;
 std::vector<uint32_t> base;for(uint32_t x=2;x<=root;++x){bool prime=true;for(uint32_t q:base){if(uint64_t(q)*q>x)break;if(x%q==0){prime=false;break;}}if(prime)base.push_back(x);}
 std::vector<uint64_t> th(1026,1);for(int k=1;k<=1025;++k){mpz_class n=1;mpz_mul_2exp(n.get_mpz_t(),n.get_mpz_t(),k);uint64_t lo=0,hi=1ULL<<((k+31)/32);while(lo+1<hi){uint64_t m=(lo+hi)/2;if(pow32(m)>=n)hi=m;else lo=m;}th[k]=hi;must(pow32(hi)>=n&&pow32(hi-1)<n,"integer-root bracket");}
 std::ifstream primes(path+"/primes.u32",std::ios::binary),weights(path+"/weights.u64",std::ios::binary);must(bool(primes)&&bool(weights),"cache streams");uint64_t first;must(bool(weights.read((char*)&first,8))&&first==0,"prefix starts at zero");
 uint64_t count=0,total=0;uint32_t last=0;int e=0;auto ts=std::chrono::steady_clock::now();const uint64_t S=1<<20;uint64_t segs=0;
 for(uint64_t lo=2;lo<=lim;lo+=S){uint64_t hi=std::min(lim,lo+S-1);std::vector<uint8_t> prime(hi-lo+1,1);
  for(uint32_t p:base){if(uint64_t(p)*p>hi)break;uint64_t begin=std::max(uint64_t(p)*p,((lo+p-1)/p)*p);for(uint64_t v=begin;v<=hi;v+=p)prime[v-lo]=0;}
  for(uint64_t x=lo;x<=hi;++x)if(prime[x-lo]){uint32_t got;uint64_t prefix;must(bool(primes.read((char*)&got,4)),"missing prime");must(got==x,"incomplete or composite prime cache");must(bool(weights.read((char*)&prefix,8)),"missing prefix");while(e<1024&&th[e+1]<=x)++e;must(th[e]<=x&&x<th[e+1],"weight interval");total+=e;must(prefix==total,"wrong exact logarithm-weight prefix");++count;last=got;}
  ++segs;if(segs%256==0)std::cerr<<"VERIFY_PROGRESS "<<hi<<" "<<count<<"\n";
 }
 char c;must(!primes.read(&c,1)&&!weights.read(&c,1),"extra cache records");struct rusage ru{};getrusage(RUSAGE_SELF,&ru);
 std::cout<<"{\"status\":\"PASS_INDEPENDENT_ALL_PRIMES_AND_WEIGHTS\",\"limit\":"<<lim<<",\"count\":"<<count<<",\"last\":"<<last<<",\"total_weight\":"<<total<<",\"segments\":"<<segs<<",\"seconds\":"<<std::chrono::duration<double>(std::chrono::steady_clock::now()-ts).count()<<",\"peak_rss_kib\":"<<ru.ru_maxrss<<"}\n";
 }catch(const std::exception&e){std::cerr<<"REJECT "<<e.what()<<"\n";return 1;}}
