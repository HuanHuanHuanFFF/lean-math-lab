#define main campaign_main
#include "scan_fixed_m_newton.cpp"
#undef main
int main(){
  int rho; unsigned long long m;
  while(std::cin>>rho>>m){
    int valbits=80,L=56-rho,cb=valbits+rho+10;
    Z beta=powalpha((uint64_t)1<<(rho-1),cb);
    std::vector<Z> step(L+1); step[0]=beta;
    for(int k=1;k<=L;k++) step[k]=mulz(step[k-1],step[k-1],cb);
    auto rr=root_newton(rho,(u128)m,L,cb,beta,step);
    u128 z=fq(rr.second,rho,(u128)m,valbits,cb);
    int val=z?v2u(z)+3:valbits+3;
    std::cout<<rho<<" "<<m<<" "<<(unsigned long long)rr.first<<" "<<val<<"\n";
  }
}
