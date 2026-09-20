#include <iostream>
#include <numeric>
using I=__int128;
int main(){long long B=1;for(int h=1;h<=14;h++){B*=3;I a=I(B)*B; long long count=0;for(long long d=1;d<B;d++){if(d%3==0)continue;I x=I(d)*(B+1),t=x*x%a,H=x*x/a;if(t==0 ||x<=H)continue;if((x-H)%t)continue;I g=(x-H)/t;if(g>=2){std::cout<<h<<' '<<B<<' '<<d<<' '<<(long long)g<<' '<<(long long)t<<'\n';count++;}}std::cerr<<"h="<<h<<" recoveries="<<count<<'\n';}}
