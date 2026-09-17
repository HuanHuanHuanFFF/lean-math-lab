#include <iostream>
#include <vector>
#include <numeric>
#include <cstdint>
#include <cstdlib>
using namespace std;
long long eg(long long a,long long b,long long &x,long long &y){if(!b){x=1;y=0;return a;} long long X,Y,d=eg(b,a%b,X,Y);x=Y;y=X-(a/b)*Y;return d;}
long long inv(long long a,long long m){long long x,y;eg(a,m,x,y);return (x%m+m)%m;}
int main(int argc,char**argv){int T=argc>1?atoi(argv[1]):1000000;vector<int> sp(T+1); for(int p=2;p<=T;p++)if(!sp[p]){sp[p]=p;if(1LL*p*p<=T)for(int k=p*p;k<=T;k+=p)if(!sp[k])sp[k]=p;}
long long tested=0,success=0,two=0;int best=100;
cout<<"{\"limit\":"<<T<<",\"models\":["; bool first=true;
for(int n=8;n<=T;n+=4){int la=(n%9==4||n%9==7)?3:1,mu=(n%9==5||n%9==8)?3:1;long long N=(n-1)/la,K=(n-2)/(2*mu),v=N,mod=1;vector<long long>rs{0}; while(v>1){int p=sp[v];long long q=1;while(v%p==0){v/=p;q*=p;}long long iv=inv(mod%q,q);vector<long long>rr;for(auto r:rs)for(int b=0;b<2;b++){long long a=((b-r)%q+q)%q*iv%q;rr.push_back(r+mod*a);}rs=rr;mod*=q;}
for(auto r:rs)for(long long j=r;j*2<n;j+=N){if(j<4)continue;tested++; if((__int128)j*(j-1)*(j-2)%K)continue;success++;long long g=gcd((long long)n,j),be=j/g,ga=(n-j)/g,t=be*ga/N,L=gcd(K,j),H=gcd(K,j-1),R=gcd(K,j-2),C=L*R,u=t/C;int om=0;v=t;while(v>1){int p=sp[v];om++;while(v%p==0)v/=p;}best=min(best,om);if(om<=2)two++;
if(om<=2||success<=20){if(!first)cout<<",";first=false;cout<<"{\"n\":"<<n<<",\"j\":"<<j<<",\"g\":"<<g<<",\"alpha\":"<<n/g<<",\"t\":"<<t<<",\"omega\":"<<om<<",\"L\":"<<L<<",\"H\":"<<H<<",\"R\":"<<R<<",\"C\":"<<C<<",\"u\":"<<u<<"}";}
}}
cout<<"],\"first_window_pairs\":"<<tested<<",\"two_window_pairs\":"<<success<<",\"omega_at_most2\":"<<two<<",\"min_omega\":"<<best<<"}\n";
}
