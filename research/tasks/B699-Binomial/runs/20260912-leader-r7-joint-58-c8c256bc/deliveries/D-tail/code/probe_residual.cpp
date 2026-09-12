// Finite diagnostic, never a B699 counterexample certificate.
#include <iostream>
#include <numeric>
#include <vector>
using I=long long; using J=__int128;
I inv(I a,I m){I b=m,x=1,y=0;while(b){I q=a/b,t=a-q*b;a=b;b=t;t=x-q*y;x=y;y=t;}x%=m;return x<0?x+m:x;}
I cut(I x){return x%3==0&&x%9!=0?x/3:x;}
int main(int argc,char**argv){int L=argc>1?std::stoi(argv[1]):1000000;std::vector<int>sp(L+1);for(int p=2;p<=L;p++)if(!sp[p]){sp[p]=p;if((I)p*p<=L)for(I x=(I)p*p;x<=L;x+=p)if(!sp[x])sp[x]=p;}
I tested=0,weak=0,R1=0,sq=0;std::vector<std::pair<I,I>>examples;
for(I n=8;n<=L;n+=4){I N=cut(n-1),K=cut((n-2)/2),lam=(n-1)/N; std::vector<I> roots{0};I mod=1,x=N;while(x>1){I p=sp[x],q=1;while(x%p==0){x/=p;q*=p;}I u=inv(mod%q,q);std::vector<I>nxt;for(I a:roots)for(I b:{0LL,1LL})nxt.push_back(a+mod*((((b-a)%q+q)%q)*u%q));roots=nxt;mod*=q;}
for(I a:roots)for(I t=0;t<=lam/2;t++){I j=a+t*N;if(j<4||2*j>=n)continue;tested++;if((J)j*(j-1)*(j-2)%K)continue;weak++;I g=std::gcd(n,j),F=std::gcd(K,j)*std::gcd(K,j-2);I R=((J)(j/g)*((n-j)/g))/(N*F);if(R==1)R1++;if(examples.size()<20)examples.push_back({n,j});}}
std::cout<<"{\"nmax\":"<<L<<",\"first_projection_tests\":"<<tested<<",\"exact_weak\":"<<weak<<",\"R1\":"<<R1<<",\"weak_examples\":[";bool sep=false;for(auto[n,j]:examples){if(sep)std::cout<<",";sep=true;std::cout<<"["<<n<<","<<j<<"]";}std::cout<<"]}\n";}
