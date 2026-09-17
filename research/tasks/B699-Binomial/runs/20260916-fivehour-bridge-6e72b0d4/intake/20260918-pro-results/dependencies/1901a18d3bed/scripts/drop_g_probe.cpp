// Diagnostic only. u=1 exact restored windows, but no alpha restriction.
#include <iostream>
#include <numeric>
#include <cmath>
using namespace std; using I=__int128_t; using L=long long;
L eg(L a,L b,L&x,L&y){if(!b){x=1;y=0;return a;}L X,Y,d=eg(b,a%b,X,Y);x=Y;y=X-(a/b)*Y;return d;}
L inv(L a,L b){L x,y;eg(a,b,x,y);return (x%b+b)%b;}
L root(I n){if(n<0)return -1;L x=(L)sqrtl((long double)n);while((I)x*x>n)--x;while((I)(x+1)*(x+1)<=n)++x;return x;}
int main(){L count=0,points=0;bool first=true;cout<<"{\"bounds\":{\"g_min\":2,\"g_max\":49,\"H_max\":1001,\"z_max\":20000},\"models\":[";
for(int la:{1,3})for(int mu:{1,3}){if(la*mu>3)continue;for(L g=2;g<=49;g++)for(L H=3;H<=1001;H+=2){if(gcd(g,H)>1)continue;L gg=g*g;L z0=((-(L)la*inv(H*H%gg,gg))%gg+gg)%gg;if(!z0)z0+=gg;for(L z=z0;z<=20000;z+=gg){count++;L C=(z*H*H+la)/gg;if(C<=0||C%2==0||gcd(C,H)>1)continue;L n=2*mu*C*H+2;if(n%4)continue;if((n%9==4||n%9==7?3:1)!=la||(n%9==5||n%9==8?3:1)!=mu)continue;I tmp=(I)z*(n-1);if(tmp%la)continue;I m2=(I)mu*mu*C*C-tmp/la;L m=root(m2);if(m<=0||(I)m*m!=m2||m>=mu*C||m%g)continue;L j=(mu*C-m)*H+1;if(j<4||2*j>=n||gcd(n,j)!=g)continue;L N=(n-1)/la,K=(n-2)/(2*mu);if((I)j*(j-1)%N||((I)j*(j-1)%K)*(j-2)%K)continue;if(gcd(K,j-1)!=H)continue;points++;if(!first)cout<<",";first=false;cout<<"{\"n\":"<<n<<",\"j\":"<<j<<",\"g\":"<<g<<",\"H\":"<<H<<",\"C\":"<<C<<",\"z\":"<<z<<",\"lambda\":"<<la<<",\"mu\":"<<mu<<",\"L\":"<<gcd(K,j)<<",\"R\":"<<gcd(K,j-2)<<"}";}}}
cout<<"],\"restored_trials\":"<<count<<",\"points\":"<<points<<"}\n";}
