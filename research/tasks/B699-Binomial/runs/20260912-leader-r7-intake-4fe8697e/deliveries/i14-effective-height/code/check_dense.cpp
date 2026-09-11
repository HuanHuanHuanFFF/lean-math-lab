// Verify every dense prefix entry by the constant intervals between primes.
#include <cstdint>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
void need(bool b,const char*s){if(!b)throw std::runtime_error(s);}
int main(int argc,char**argv){try{
 need(argc==2,"cache directory");std::string d=argv[1];std::ifstream ps(d+"/primes.u32",std::ios::binary),ws(d+"/weights.u64",std::ios::binary);need(bool(ps)&&bool(ws),"cache streams");
 int fd=open((d+"/dense.u64").c_str(),O_RDONLY);need(fd>=0,"dense open");struct stat s;need(!fstat(fd,&s)&&s.st_size==800000008,"dense shape");
 auto dense=(const uint64_t*)mmap(nullptr,s.st_size,PROT_READ,MAP_SHARED,fd,0);need(dense!=MAP_FAILED,"dense map");
 uint64_t start=0,value;need(bool(ws.read((char*)&value,8))&&value==0,"initial weight");uint32_t p;uint64_t n=0;
 while(ps.read((char*)&p,4)){need(p>=start&&p<=100000000,"prime ordering");for(uint64_t x=start;x<p;++x)need(dense[x]==value,"dense mismatch between primes");need(bool(ws.read((char*)&value,8)),"weight record");start=p;++n;}
 for(uint64_t x=start;x<=100000000;++x)need(dense[x]==value,"dense final interval");char extra;need(!ws.read(&extra,1)&&n==5761455&&value==4613180990ULL,"cache endpoint");
 munmap((void*)dense,s.st_size);close(fd);std::cout<<"{\"status\":\"PASS_ALL_DENSE_ENTRIES\",\"entries\":100000001,\"prime_count\":"<<n<<"}\n";
 }catch(const std::exception&e){std::cerr<<"REJECT "<<e.what()<<"\n";return 1;}}
