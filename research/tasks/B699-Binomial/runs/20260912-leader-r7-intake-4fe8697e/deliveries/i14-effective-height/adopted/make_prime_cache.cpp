// Streaming prime/prefix cache. No per-prime floating logs or large powers.
#include <gmpxx.h>
#include <vector>
#include <fstream>
#include <iostream>
#include <string>
#include <chrono>
#include <cstdint>
#include <stdexcept>
#include <cmath>
#include <sys/resource.h>
void req(bool b,const char*m){if(!b)throw std::runtime_error(m);}
int main(int argc,char**argv){try{
 req(argc==3,"usage: segmented_weight_cache limit directory");uint64_t lim=std::stoull(argv[1]);std::string dir=argv[2];req(lim<4294967296ULL&&lim>=1000,"uint32 cache limit");
 uint32_t root=0;while(uint64_t(root+1)*(root+1)<=lim)++root;
 std::vector<uint8_t> is(root+1,1);is[0]=is[1]=0;std::vector<uint32_t> base;
 for(uint32_t p=2;p<=root;++p)if(is[p]){base.push_back(p);for(uint64_t v=uint64_t(p)*p;v<=root;v+=p)is[v]=0;}
 std::vector<uint64_t> threshold(1026);threshold[0]=1;
 for(int k=1;k<=1025;++k){mpz_class n=1,z;mpz_mul_2exp(n.get_mpz_t(),n.get_mpz_t(),k);int exact=mpz_root(z.get_mpz_t(),n.get_mpz_t(),32);if(!exact)++z;threshold[k]=z.get_ui();mpz_class t;mpz_pow_ui(t.get_mpz_t(),z.get_mpz_t(),32);req(t>=n,"root upper");--z;mpz_pow_ui(t.get_mpz_t(),z.get_mpz_t(),32);req(t<n,"root lower");}
 std::ofstream pf(dir+"/primes.u32",std::ios::binary),wf(dir+"/weights.u64",std::ios::binary);req(bool(pf)&&bool(wf),"open cache files");uint64_t total=0,count=0,zero=0;wf.write((char*)&zero,8);uint32_t two=2;uint64_t weight=32;pf.write((char*)&two,4);wf.write((char*)&weight,8);count=1;total=32;int exp=32;uint32_t last=2;
 auto ts=std::chrono::steady_clock::now();const uint64_t S=1<<20;uint64_t segments=0;
 for(uint64_t lo=3;lo<=lim;lo+=2*S){uint64_t hi=std::min(lim,lo+2*S-2);if(!(hi&1))--hi;uint64_t len=(hi-lo)/2+1;std::vector<uint8_t> good(len,1);
  for(uint32_t p:base){if(p==2)continue;if(uint64_t(p)*p>hi)break;uint64_t first=std::max(uint64_t(p)*p,((lo+p-1)/p)*p);if(!(first&1))first+=p;if(first>hi)continue;for(uint64_t j=(first-lo)/2;j<len;j+=p)good[j]=0;}
  std::vector<uint32_t> ps;std::vector<uint64_t> ws;ps.reserve(len/8);ws.reserve(len/8);
  for(uint64_t j=0;j<len;++j)if(good[j]){uint32_t p=uint32_t(lo+2*j);while(exp<1024&&threshold[exp+1]<=p)++exp;req(threshold[exp]<=p&&threshold[exp+1]>p,"weight threshold");total+=exp;++count;last=p;ps.push_back(p);ws.push_back(total);}
  pf.write((char*)ps.data(),ps.size()*4);wf.write((char*)ws.data(),ws.size()*8);req(bool(pf)&&bool(wf),"write cache");++segments;
  if(segments%64==0)std::cerr<<"CACHE_PROGRESS "<<hi<<" "<<count<<"\n";
 }
 pf.close();wf.close();struct rusage ru{};getrusage(RUSAGE_SELF,&ru);double sec=std::chrono::duration<double>(std::chrono::steady_clock::now()-ts).count();
 std::ofstream meta(dir+"/metadata.json");meta<<"{\"limit\":"<<lim<<",\"count\":"<<count<<",\"last\":"<<last<<",\"weight_power\":32,\"total\":"<<total<<",\"byteorder\":\"little\",\"seconds\":"<<sec<<",\"peak_rss_kib\":"<<ru.ru_maxrss<<",\"segments\":"<<segments<<"}\n";
 std::cout<<"PASS_STREAMING_CACHE count="<<count<<" last="<<last<<" total="<<total<<" seconds="<<sec<<" peak_rss_kib="<<ru.ru_maxrss<<"\n";
 }catch(const std::exception&e){std::cerr<<"ERROR "<<e.what()<<"\n";return 1;}}
