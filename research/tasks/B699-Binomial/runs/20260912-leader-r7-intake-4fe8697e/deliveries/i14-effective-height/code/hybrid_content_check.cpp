// Independent receiver: reconstruct each interval by splitting at the prime
// cutoff, rather than using the generator's three-case expression. No floats
// in acceptance. Catalogue membership is verified by verify_content_resume.py.
#include <algorithm>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
using U=__uint128_t;using I=__int128_t;
void need(bool b,const char* s){if(!b)throw std::runtime_error(s);}
U parse(const std::string&s){need(!s.empty()&&s.size()<38,"integer length");U x=0;for(char c:s){need(c>='0'&&c<='9',"decimal integer");x=10*x+(c-'0');}return x;}
std::string text(U x){if(!x)return "0";std::string s;while(x){s+=char('0'+x%10);x/=10;}std::reverse(s.begin(),s.end());return s;}
struct Mapping{int fd;size_t size;void* data;Mapping(std::string f){fd=open(f.c_str(),O_RDONLY);need(fd>=0,"open cache");struct stat s;need(!fstat(fd,&s),"stat cache");size=s.st_size;data=mmap(nullptr,size,PROT_READ,MAP_SHARED,fd,0);need(data!=MAP_FAILED,"map cache");}~Mapping(){munmap(data,size);close(fd);}};
struct Cell{uint64_t t,c,d;};
int main(int argc,char**argv){try{
 need(argc==4,"usage: verified_catalog cache_dir blocks");
 std::ifstream cat(argv[1]);uint64_t count,N,M,gn,gd;cat>>count>>N>>M>>gn>>gd;
 need(bool(cat)&&count>0&&count<=40000&&N>0&&N<=512&&M<=1000000000&&M>1&&gn>0&&gn<=1000000&&gd>0&&gd<=1000000,"catalogue domain");
 std::vector<Cell> cells(count);for(auto&c:cells){cat>>c.t>>c.c>>c.d;need(bool(cat)&&c.t&&c.d&&c.c<=1000000&&c.d<=100000000,"cell domain");}
 std::string junk;need(!(cat>>junk),"trailing catalogue");
 const uint64_t cutoff=100000000, scale=3200000000000ULL, log2=69314718055ULL;
 Mapping map(std::string(argv[2])+"/dense.u64");need(map.size==(cutoff+1)*8,"dense size");auto prefix=(const uint64_t*)map.data;
 need(prefix[0]==0&&prefix[cutoff]==4613180990ULL,"prefix endpoints");
 std::ifstream cert(argv[3]);std::string tag;uint64_t NN,MM,GG,DD,m0,blocks;
 cert>>tag>>NN>>MM>>GG>>DD>>m0>>blocks;
 need(bool(cert)&&tag=="B699_HYBRID_G_V1"&&NN==N&&MM==M&&GG==gn&&DD==gd&&m0<M-1&&blocks>0&&blocks<2000000,"certificate header");
 uint64_t next=m0+1;U minimum=~U(0);uint64_t max_hi=0;
 for(uint64_t k=0;k<blocks;++k){
  uint64_t a,b;std::string raw;cert>>a>>b>>raw;
  need(bool(cert)&&a==next&&a<=b&&b<M,"gap, overlap, or invalid block");
  U claimed=parse(raw),total=0;
  for(const auto&c:cells){
   uint64_t right=uint64_t((U(N)*a-2)/c.t),left=uint64_t(U(c.c)*b/c.d);
   max_hi=std::max(max_hi,right);need(right<=100000000000ULL,"BFT finite theta domain");
   if(right<=left)continue;
   I lower=0;
   if(left<cutoff){uint64_t r=std::min(cutoff,right);need(prefix[r]>=prefix[left],"corrupt prefix order");lower=I(prefix[r]-prefix[left])*log2;}
   if(right>cutoff){uint64_t l=std::max(cutoff,left);lower+=I(320000)*(I(9999787)*right-I(10000000)*l);}
   if(lower>0)total+=U(lower);
  }
  need(total==claimed,"incorrect certified lower sum");
  U lhs=total*gd,rhs=U(b)*gn*scale;need(lhs>rhs,"nonpositive content margin");minimum=std::min(minimum,lhs-rhs);next=b+1;
 }
 need(next==M&&!(cert>>junk),"incomplete coverage or extra records");
 std::cout<<"{\"status\":\"PASS_INDEPENDENT_EXACT_HYBRID_BLOCKS\",\"m0\":"<<m0<<",\"M\":"<<M<<",\"blocks\":"<<blocks<<",\"max_upper_endpoint\":"<<max_hi<<",\"minimum_integer_margin\":\""<<text(minimum)<<"\",\"margin_denominator\":\""<<text(U(scale)*gd)<<"\"}\n";
 }catch(const std::exception&e){std::cerr<<"REJECT "<<e.what()<<"\n";return 1;}}
