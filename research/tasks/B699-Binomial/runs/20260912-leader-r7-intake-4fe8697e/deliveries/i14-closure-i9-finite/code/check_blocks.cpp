// Independent exhaustive receiver. No floating point, no discovery decisions.
#include <gmpxx.h>
#include <array>
#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
using Z=mpz_class;
void require(bool x,const char*s){if(!x)throw std::runtime_error(s);}
Z power(unsigned long p,unsigned long e){Z x;mpz_ui_pow_ui(x.get_mpz_t(),p,e);return x;}
struct Result{unsigned p,q;unsigned long first,upper,h,count;double sec;};
Result receive(const std::string&fn,unsigned p,unsigned q){
 auto t0=std::chrono::steady_clock::now();std::ifstream f(fn);require((bool)f,"missing pair certificate");
 std::string tag;unsigned pp,qq,C,D;unsigned long H,first,upper,h,num;
 require((bool)(f>>tag>>pp>>qq>>C>>D>>H>>first>>upper>>h>>num),"bad header");
 require(tag=="B699_CUBIC_BLOCKS_V1"&&pp==p&&qq==q,"pair header mismatch");require(C==216&&D==13&&H==14000001,"unexpected theorem constants");
 require(first>0&&first<=upper&&upper<=H&&h>4&&h<10000&&num>0&&num<5000,"unsafe range");
 Z limit=(Z(1)<<H)-1, lastpower=power(p,upper);require(lastpower<=limit&&lastpower*p>limit,"wrong full exponent ceiling");
 Z end=Z(1)<<h;require((end-D)*(end-D)>C*power(p,3*(first-1)),"prefix height fails");
 unsigned long expected=first;
 for(unsigned long ix=0;ix<num;++ix){
  unsigned long k,l,b;int arg;require((bool)(f>>k>>l>>b>>arg),"missing block");
  require(k==expected&&k<=upper&&l<=upper-k,"gap/overlap/out-of-domain block");require(b>=1&&b<=H&&arg>=-(int)D&&arg<=(int)D,"unsafe q exponent or residue");
  Z P=power(p,k),Q=power(q,b);require(P>D,"P-D must be positive");require(C*Q*Q*Q<=(P-D)*(P-D),"q divisibility lower bound fails");
  Z g,u,v;mpz_gcdext(g.get_mpz_t(),u.get_mpz_t(),v.get_mpz_t(),P.get_mpz_t(),Q.get_mpz_t());require(g==1,"coprime powers required");
  Z minimum=Q,claimed;
  for(int d=-(int)D;d<=(int)D;++d){Z raw=d*u,res;mpz_fdiv_r(res.get_mpz_t(),raw.get_mpz_t(),Q.get_mpz_t());if(res==0)res=Q;if(res<minimum)minimum=res;if(d==arg)claimed=res;}
  require(claimed==minimum,"incorrect discovery argmin");
  require(minimum*minimum>C*power(p,k+3*l),"cubic exclusion fails");
  expected=k+l+1;
 }
 require(expected==upper+1,"last exponent not covered");std::string extra;require(!(f>>extra),"unexpected trailing data");
 return {p,q,first,upper,h,num,std::chrono::duration<double>(std::chrono::steady_clock::now()-t0).count()};
}
int main(int argc,char**argv){try{
 require(argc==3,"usage: check_blocks directory summary.json");std::string dir=argv[1];std::array<unsigned,6> primes={2,3,5,7,11,13};std::vector<Result> rows;unsigned long count=0,H=8;
 // Recompute the scalar finite obligations and constant independently of Python.
 Z fact=1,fprod=1,f13;for(unsigned a=1;a<=13;++a){fact*=a;if(a<=9)fprod*=fact;if(a==13)f13=fact;}
 Z K=(fprod*fprod*fprod)<<90;require(K*power(6,70)>power(2,14)*([](Z z){Z x;mpz_pow_ui(x.get_mpz_t(),z.get_mpz_t(),14);return x;})(f13),"scalar cubic constant");
 unsigned cases=0;for(int a=0;a<=13;++a)for(int b=0;b<=a;++b){require(std::max(a-4,0)+std::max(9-b,0)+std::max(9-(a-b),0)>=14,"pointwise scalar inequality");++cases;}require(cases==105,"case count");
 for(unsigned i=0;i<6;++i)for(unsigned j=i+1;j<6;++j){auto r=receive(dir+"/blocks_"+std::to_string(primes[i])+"_"+std::to_string(primes[j])+".tsv",primes[i],primes[j]);rows.push_back(r);count+=r.count;H=std::max(H,r.h);std::cout<<"ACCEPT_PAIR "<<r.p<<" "<<r.q<<" h="<<r.h<<" blocks="<<r.count<<" seconds="<<r.sec<<"\n"<<std::flush;}
 std::ofstream out(argv[2]);out<<"{\n  \"status\": \"PASS_COMPLETE_INDEPENDENT_GMP_BLOCK_RECEIVER\",\n  \"input_height_bits\": 14000001,\n  \"cubic_constant\": 216,\n  \"difference_bound\": 13,\n  \"scalar_pointwise_cases\": 105,\n  \"pair_count\": 15,\n  \"blocks\": "<<count<<",\n  \"signed_residue_checks\": "<<27*count<<",\n  \"output_height_bits\": "<<H<<",\n  \"pairs\": [\n";
 for(size_t i=0;i<rows.size();++i){auto r=rows[i];out<<"    {\"p\": "<<r.p<<", \"q\": "<<r.q<<", \"first\": "<<r.first<<", \"last\": "<<r.upper<<", \"prefix_height_bits\": "<<r.h<<", \"blocks\": "<<r.count<<", \"seconds\": "<<r.sec<<"}"<<(i+1<rows.size()?",":"")<<"\n";}
 out<<"  ]\n}\n";std::cout<<"PASS_ALL_15_PAIRS n<2^"<<H<<" blocks="<<count<<" residues="<<27*count<<"\n";
 }catch(const std::exception&e){std::cerr<<"REJECT "<<e.what()<<"\n";return 1;}}
