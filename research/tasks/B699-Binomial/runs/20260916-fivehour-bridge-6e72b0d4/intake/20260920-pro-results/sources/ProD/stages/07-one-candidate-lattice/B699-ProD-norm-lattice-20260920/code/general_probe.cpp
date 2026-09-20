#include <iostream>
#include <numeric>
#include <cmath>
using I=__int128;
int main(){int count=0,small=0;for(long long B=3;B<10000;B+=3){I a=I(B)*B;for(long long d=1;d<B;d++){if(std::gcd(B,d)>1)continue;I x=I(d)*(B+1),t=x*x%a,H=x*x/a;if(!t||(x-H)%t)continue;I g=(x-H)/t;if(g<2)continue;count++;if(g*g*g<a)small++;if(B%9==0||g*g*g<a)std::cout<<B<<' '<<d<<' '<<(long long)g<<' '<<(long long)t<<' '<<int(g*g*g<a)<<'\n';}}std::cerr<<"all "<<count<<" lowg "<<small<<'\n';}
