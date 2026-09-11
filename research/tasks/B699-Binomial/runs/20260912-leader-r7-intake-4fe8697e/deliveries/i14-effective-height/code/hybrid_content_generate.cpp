// Complete blocks using exact low primes and BFT theta bounds above 10^8.
// Generates a necessary-source certificate; no floating acceptance.
#include <algorithm>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <vector>
#include <string>
#include <stdexcept>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/resource.h>
#include <fcntl.h>
#include <unistd.h>
#include <chrono>
using U=__uint128_t;using I=__int128_t;
void req(bool b,const char*s){if(!b)throw std::runtime_error(s);}
std::string text(U v){if(!v)return "0";std::string s;while(v){s.push_back(char('0'+v%10));v/=10;}std::reverse(s.begin(),s.end());return s;}
struct Map{int fd;void*p;size_t n;Map(std::string f){fd=open(f.c_str(),O_RDONLY);req(fd>=0,"open cache");struct stat st;req(!fstat(fd,&st),"stat");n=st.st_size;p=mmap(0,n,PROT_READ,MAP_SHARED,fd,0);req(p!=MAP_FAILED,"mmap");}~Map(){munmap(p,n);close(fd);}};
struct Cell{uint64_t div,cn,cd;};struct Block{uint64_t a,b;U lower;};
int main(int argc,char**argv){try{
 req(argc==5,"usage catalog cache_dir blocks_out meta_out");
 std::ifstream cat(argv[1]);uint64_t count,N,M,gn,gd;cat>>count>>N>>M>>gn>>gd;req(bool(cat)&&count<=40000&&N<=512&&M<=1000000000ULL&&gn<=1000000&&gd&&gd<=1000000,"catalog domain");
 std::vector<Cell> cells(count);for(auto&c:cells){cat>>c.div>>c.cn>>c.cd;req(c.div&&c.cd&&c.cn<=1000000&&c.cd<=100000000,"cell");}req(bool(cat),"catalog data");std::string extra;req(!(cat>>extra),"extra catalog");
 const uint64_t cutoff=100000000ULL,scale=3200000000000ULL,L2num=69314718055ULL,etaScale=68160000ULL;
 req((U)N*M<100000000000ULL*2,"finite theta upper range");
 Map pm(std::string(argv[2])+"/primes.u32"),wm(std::string(argv[2])+"/weights.u64");size_t np=pm.n/4;req(pm.n%4==0&&wm.n==(np+1)*8&&np==5761455,"cache shape");auto ps=(uint32_t*)pm.p;auto wt=(uint64_t*)wm.p;req(ps[np-1]==99999989&&wt[0]==0&&wt[np]==4613180990ULL,"cache endpoints");
 Map dm(std::string(argv[2])+"/dense.u64");req(dm.n==(cutoff+1)*8,"dense shape");auto dense=(uint64_t*)dm.p;auto pref=[&](uint64_t x){req(x<=cutoff,"uncached prime query");return dense[x];};uint64_t calls=0,crossCalls=0,highCalls=0;
 auto lower=[&](uint64_t a,uint64_t b){++calls;U sum=0;
  for(auto c:cells){uint64_t hi=(N*a-2)/c.div,lo=c.cn*b/c.cd;if(hi<=lo)continue;I v;
   if(hi<=cutoff)v=(I)(pref(hi)-pref(lo))*L2num;
   else{req(hi<=100000000000ULL,"theta finite upper domain");if(lo>=cutoff){++highCalls;v=(I)hi*(scale-etaScale)-(I)lo*scale;}else{++crossCalls;v=(I)(wt[np]-pref(lo))*L2num+(I)hi*(scale-etaScale)-(I)cutoff*scale;}}
   if(v>0)sum+=(U)v;
  }return sum;};
 auto good=[&](uint64_t b,U s){return s*gd>(U)b*gn*scale;};
 auto ts=std::chrono::steady_clock::now();uint64_t a=500,failed=0,lastFail=499;std::vector<Block> blocks;
 while(a<M){uint64_t b=std::min(M-1,a+std::max(uint64_t(1),a/4096));U s=lower(a,b);
  while(!good(b,s)&&b>a){b=a+(b-a)/2;s=lower(a,b);}
  if(!good(b,s)){lastFail=a;++failed;blocks.clear();++a;continue;}
  blocks.push_back({a,b,s});a=b+1;
  if(blocks.size()%20000==0)std::cerr<<"BLOCKS "<<blocks.size()<<" NEXT "<<a<<" M0 "<<lastFail<<" CALLS "<<calls<<"\n";
 }
 req(!blocks.empty()&&blocks.front().a==lastFail+1&&blocks.back().b==M-1,"coverage");
 std::ofstream out(argv[3]);out<<"B699_HYBRID_G_V1 "<<N<<" "<<M<<" "<<gn<<" "<<gd<<" "<<lastFail<<" "<<blocks.size()<<"\n";for(auto b:blocks)out<<b.a<<" "<<b.b<<" "<<text(b.lower)<<"\n";req(bool(out),"output");
 struct rusage ru{};getrusage(RUSAGE_SELF,&ru);double sec=std::chrono::duration<double>(std::chrono::steady_clock::now()-ts).count();
 std::ofstream meta(argv[4]);meta<<"{\"status\":\"PASS_EXACT_HYBRID_FINITE_COVER\",\"m0\":"<<lastFail<<",\"M\":"<<M<<",\"blocks\":"<<blocks.size()<<",\"failed_singletons\":"<<failed<<",\"calls\":"<<calls<<",\"cross_endpoint_calls\":"<<crossCalls<<",\"both_high_endpoint_calls\":"<<highCalls<<",\"cutoff\":"<<cutoff<<",\"seconds\":"<<sec<<",\"peak_rss_kib\":"<<ru.ru_maxrss<<"}\n";req(bool(meta),"metadata");std::cout<<"PASS blocks="<<blocks.size()<<" m0="<<lastFail<<" seconds="<<sec<<" RSS="<<ru.ru_maxrss<<"\n";
}catch(std::exception&e){std::cerr<<"REJECT "<<e.what()<<"\n";return 1;}}
