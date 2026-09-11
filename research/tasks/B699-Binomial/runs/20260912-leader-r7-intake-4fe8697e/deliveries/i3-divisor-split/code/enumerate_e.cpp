
#include <algorithm>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <numeric>
#include <stdexcept>
#include <string>
#include <vector>
using U=uint64_t; using W=__uint128_t;
struct Rec { U n,j,c,g,alpha,beta,d,e,h; };
int main(int argc,char**argv){
try{
 if(argc!=4)throw std::runtime_error("usage: enumerate e old_beta_bound output");
 U e=std::stoull(argv[1]), B=std::stoull(argv[2]);
 if(B>(1ULL<<20))throw std::runtime_error("old beta bound exceeds frozen coverage");
 if(e==0||e%2==0||e>7)throw std::runtime_error("e must be odd, 1..7");
 W e3=W(e)*e*e,e4=e3*e;
 U hs=0,powers=0,nintegral=0,firstcount=0,secondcount=0,maxn=0;
 std::vector<Rec> first, second, raw;
 for(U c: {U(1),U(3)}){
  if(c==3&&e%3==0) continue;
  U c4=c*c*c*c;
  for(U g=1;W(c4)*g*g <648*e3;++g){
   if(c==3&&g%3==0)continue;
   U hmax=U((1296*e4-1)/(W(c4)*g));
   for(U h=2*g*e+1;h<=hmax;h+=2){
    if(std::gcd(h,g)!=1||std::gcd(h,e)!=1)continue;
    U low=U((W(c4)*h*h*g)/(108*e3))+1;
    low=std::max<U>(low,B/e+1);
    U high=12*e*h;
    if(low>high)continue;
    ++hs;
    U nlo=U(W(low)*h+1),nhi=U(W(high)*h+1);
    U n=2*c*g,alpha=2*c;
    while(n<nlo){ n*=2;alpha*=2; }
    for(;n<=nhi; n*=2,alpha*=2){
     ++powers;
     if(n%4||n<8||(n-1)%h)continue;
     ++nintegral;
     U d=(n-1)/h,beta=d*e,j=g*beta;
     raw.push_back({n,j,c,g,alpha,beta,d,e,h});
     if(beta<=B ||std::gcd(alpha,beta)!=1||j<4||2*j>=n)continue;
     if((3*W(j)*(j-1))%(n-1))continue;
     if(!(W(c4)*n*n*g <108*W(beta)*beta*beta))continue;
     if(std::gcd(beta,n-1)!=d)throw std::runtime_error("gcd mapping");
     if(std::gcd(n,j)!=g)throw std::runtime_error("g mapping");
     Rec r={n,j,c,g,alpha,beta,d,e,h};
     first.push_back(r);++firstcount;maxn=std::max(maxn,n);
     if((W(j)*(j-1)*(j-2))%((n-2)/std::gcd<U>(n-2,6))==0){
      second.push_back(r);++secondcount;
     }
    }
   }
  }
 }
 auto cmp=[](const Rec&a,const Rec&b){return a.n!=b.n?a.n<b.n:a.j<b.j;};
 std::sort(raw.begin(),raw.end(),cmp);std::sort(first.begin(),first.end(),cmp);std::sort(second.begin(),second.end(),cmp);
 std::ofstream f(argv[3]); if(!f)throw std::runtime_error("output open");
 f<<"{\"e\":"<<e<<",\"old_beta_bound\":"<<B<<",\"h_rows\":"<<hs
  <<",\"power_tests\":"<<powers<<",\"integral_d\":"<<nintegral
  <<",\"first_count\":"<<firstcount<<",\"second_count\":"<<secondcount
  <<",\"max_candidate_n\":"<<maxn;
 auto write=[&](std::string name,const std::vector<Rec>&rs){
   f<<",\""<<name<<"\":["; bool flag=false;
   for(auto r:rs){if(flag)f<<",";flag=true;
    f<<"["<<r.n<<","<<r.j<<","<<r.c<<","<<r.g<<","<<r.alpha<<","<<r.beta<<","<<r.d<<","<<r.e<<","<<r.h<<"]";}
   f<<"]";
 };
 write("raw",raw);write("first",first);write("second",second);f<<"}\n";
 std::cout<<"e="<<e<<" h_rows="<<hs<<" power_tests="<<powers<<" first="<<firstcount<<" second="<<secondcount<<"\n";
 return 0;
}catch(const std::exception&e){std::cerr<<e.what()<<"\n";return 2;}
}
