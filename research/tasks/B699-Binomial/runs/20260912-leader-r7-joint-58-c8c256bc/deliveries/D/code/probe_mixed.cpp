// Diagnostic only: find a weak exact-projection input, not a B699 counterexample.
#include <algorithm>
#include <chrono>
#include <cstdint>
#include <iostream>
#include <numeric>
#include <vector>
using I=long long;
I inv(I a,I m){I b=m,x=1,y=0;while(b){I q=a/b,t=a-q*b;a=b;b=t;t=x-q*y;x=y;y=t;}x%=m;return x<0?x+m:x;}
I cut(I x){return x%3==0&&x%9!=0?x/3:x;}
int main(int argc,char**argv){
 int L=argc>1?std::stoi(argv[1]):5000000;std::vector<int>sp(L+1);
 for(int p=2;p<=L;p++)if(!sp[p]){sp[p]=p;if((I)p*p<=L)for(I t=(I)p*p;t<=L;t+=p)if(!sp[t])sp[t]=p;}
 I weak=0,tested=0;
 for(I n=8;n<=L;n+=4){
  I N=cut(n-1),K=cut((n-2)/2),la=(n-1)/N;std::vector<I>root{0};I mod=1,x=N;
  while(x>1){I p=sp[x],q=1;while(x%p==0){x/=p;q*=p;}I u=inv(mod%q,q);std::vector<I>next;
   for(I a:root)for(I b:{0LL,1LL}){I z=((b-a)%q+q)%q;next.push_back(a+mod*(z*u%q));}root=next;mod*=q;
  }
  for(I a:root)for(I t=0;t<=la/2;t++){I j=a+t*N;if(j<4||2*j>n)continue;tested++;
   if(((__int128)j*(j-1)*(j-2))%K)continue;weak++;
   I A=std::gcd(N,j),B=std::gcd(N,j-1),C=std::gcd(K,j),D=std::gcd(K,j-1),E=std::gcd(K,j-2);
   if(std::min({A,B,C,D,E})<=1)continue;
   std::cout<<"{\"found\":true,\"scanned_through_n\":"<<n<<",\"j\":"<<j<<",\"five\":["<<A<<","<<B<<","<<C<<","<<D<<","<<E<<"],\"weak_count\":"<<weak<<",\"first_projection_tests\":"<<tested<<"}\n";return 0;
  }
 }
 std::cout<<"{\"found\":false,\"complete_n_bound\":"<<L<<",\"weak_count\":"<<weak<<",\"first_projection_tests\":"<<tested<<"}\n";
}
