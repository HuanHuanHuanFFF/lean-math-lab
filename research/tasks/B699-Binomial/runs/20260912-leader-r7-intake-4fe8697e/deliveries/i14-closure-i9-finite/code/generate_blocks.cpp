// Discovery only: proposes continuous cubic exponent blocks. Acceptance is separate.
#include <gmpxx.h>
#include <algorithm>
#include <array>
#include <chrono>
#include <cmath>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <vector>
using Z=mpz_class;
struct Block{unsigned long k,len,b;int arg;};
Z powu(unsigned long p,unsigned long k){Z a;mpz_ui_pow_ui(a.get_mpz_t(),p,k);return a;}
long double logz(const Z& a){long e;double m=mpz_get_d_2exp(&e,a.get_mpz_t());return logl((long double)m)+(long double)e*logl(2.L);}
unsigned long floor_power_bound(unsigned p,unsigned long H){
 Z top=Z(1)<<H;unsigned long a=(unsigned long)floorl((long double)H*logl(2.L)/logl((long double)p));Z P=powu(p,a);
 while(P>=top){P/=p;--a;}while(P*p<top){P*=p;++a;}return a;
}
void pair_run(unsigned p,unsigned q,unsigned long H,unsigned C,unsigned D,const std::string&outdir){
 auto started=std::chrono::steady_clock::now();auto seconds=[&](){return std::chrono::duration<double>(std::chrono::steady_clock::now()-started).count();};
 std::string file=outdir+"/blocks_"+std::to_string(p)+"_"+std::to_string(q)+".tsv";
 if(std::filesystem::exists(file)){std::cout<<"SKIP_COMPLETED "<<p<<" "<<q<<"\n"<<std::flush;return;}
 unsigned long top=floor_power_bound(p,H), k=(unsigned long)ceill(64*logl(2.L)/logl((long double)p));
 unsigned long first=k;std::vector<Block> blocks;Z P,Q,target,v,rho,base;
 std::ofstream partial(file+".partial");partial<<"# partial discovery, not accepted; C="<<C<<" D="<<D<<" H="<<H<<"\n";
 while(k<=top){
  P=powu(p,k);if(P<=D)throw std::runtime_error("P<=D");target=(P-D)*(P-D);
  long guess=(long)floorl((2.L*k*logl((long double)p)-logl((long double)C))/(3.L*logl((long double)q)));
  if(guess<1)guess=1;Q=powu(q,(unsigned long)guess);
  while(C*Q*Q*Q>target){Q/=q;--guess;}
  while(C*(Q*q)*(Q*q)*(Q*q)<=target){Q*=q;++guess;}
  if(guess<1)throw std::runtime_error("B0<1");
  if(!mpz_invert(v.get_mpz_t(),P.get_mpz_t(),Q.get_mpz_t()))throw std::runtime_error("noninvertible");
  rho=Q;int arg=0;Z r=0;
  for(unsigned d=1;d<=D;++d){r+=v;if(r>=Q)r-=Q;if(r>0&&r<rho){rho=r;arg=d;}Z rr=Q-r;if(rr>0&&rr<rho){rho=rr;arg=-(int)d;}}
  Z square=rho*rho;
  long len=(long)floorl((2*logz(rho)-logl((long double)C)-k*logl((long double)p))/(3*logl((long double)p)));
  if(len<0){blocks.clear();first=++k;partial<<"RESET_PREFIX "<<first<<"\n"<<std::flush;continue;}
  len=std::min<long>(len,(long)(top-k));base=C*powu(p,k+3*(unsigned long)len);
  while(square<=base&&len>=0){base/=p*p*p;--len;}
  if(len<0){blocks.clear();first=++k;partial<<"RESET_PREFIX "<<first<<"\n"<<std::flush;continue;}
  while(k+(unsigned long)len<top&&square>base*p*p*p){base*=p*p*p;++len;}
  blocks.push_back({k,(unsigned long)len,(unsigned long)guess,arg});
  partial<<k<<"\t"<<len<<"\t"<<guess<<"\t"<<arg<<"\n"<<std::flush;
  if(blocks.size()%30==0||k+(unsigned long)len==top)std::cout<<"PROGRESS "<<p<<" "<<q<<" blocks="<<blocks.size()<<" last="<<k+(unsigned long)len<<"/"<<top<<" seconds="<<seconds()<<"\n"<<std::flush;
  k+=(unsigned long)len+1;
 }
 unsigned long h=(unsigned long)ceill((logl((long double)C)+3*(first-1)*logl((long double)p))/(2*logl(2.L)))+1;
 Z prefix=C*powu(p,3*(first-1));
 while((((Z(1)<<h)-D)*((Z(1)<<h)-D))<=prefix)++h;
 while(h>1&&(Z(1)<<(h-1))>D&&(((Z(1)<<(h-1))-D)*((Z(1)<<(h-1))-D))>prefix)--h;
 std::ofstream f(file);f<<"B699_CUBIC_BLOCKS_V1\t"<<p<<"\t"<<q<<"\t"<<C<<"\t"<<D<<"\t"<<H<<"\t"<<first<<"\t"<<top<<"\t"<<h<<"\t"<<blocks.size()<<"\n";
 for(auto b:blocks)f<<b.k<<"\t"<<b.len<<"\t"<<b.b<<"\t"<<b.arg<<"\n";
 f.close();partial.close();std::filesystem::remove(file+".partial");
 std::cout<<"PAIR_DONE "<<p<<" "<<q<<" first="<<first<<" h="<<h<<" blocks="<<blocks.size()<<" seconds="<<seconds()<<"\n"<<std::flush;
}
int main(int argc,char**argv){try{if(argc<2)throw std::runtime_error("usage: generate_blocks outdir [H=14000001] [p q]");std::string out=argv[1];std::filesystem::create_directories(out);unsigned long H=argc>2?std::stoul(argv[2]):14000001;unsigned C=216,D=13;
 if(argc==5){pair_run(std::stoul(argv[3]),std::stoul(argv[4]),H,C,D,out);return 0;}
 std::array<unsigned,6> ps={2,3,5,7,11,13};for(int i=0;i<6;++i)for(int j=i+1;j<6;++j)pair_run(ps[i],ps[j],H,C,D,out);
 }catch(const std::exception&e){std::cerr<<"ERROR "<<e.what()<<"\n";return 1;}}
