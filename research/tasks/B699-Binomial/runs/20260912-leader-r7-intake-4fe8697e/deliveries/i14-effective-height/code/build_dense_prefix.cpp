// Deterministically expands an already fully verified sorted prime-weight cache.
#include <fstream>
#include <iostream>
#include <vector>
#include <cstdint>
#include <stdexcept>
int main(int argc,char**argv){try{if(argc!=2)throw std::runtime_error("directory");std::string d=argv[1];std::ifstream p(d+"/primes.u32",std::ios::binary),w(d+"/weights.u64",std::ios::binary);std::ofstream o(d+"/dense.u64",std::ios::binary);if(!p||!w||!o)throw std::runtime_error("open");uint64_t v=0,total=0;w.read((char*)&v,8);if(v)throw std::runtime_error("prefix");uint32_t next;bool more=bool(p.read((char*)&next,4));std::vector<uint64_t>b;const uint64_t lim=100000000;
 for(uint64_t x=0;x<=lim;++x){if(more&&x==next){if(!w.read((char*)&total,8))throw std::runtime_error("weight");more=bool(p.read((char*)&next,4));}b.push_back(total);if(b.size()==1<<18||x==lim){o.write((char*)b.data(),b.size()*8);b.clear();}}
 if(more||total!=4613180990ULL||!o)throw std::runtime_error("end");char c;if(w.read(&c,1))throw std::runtime_error("trailing weight");std::cout<<"PASS 100000001 dense prefix entries, derived from verified prime cache\n";
}catch(std::exception&e){std::cerr<<e.what()<<"\n";return 1;}}
