#define main scan_main
#include "scan_u128.cpp"
#undef main
int main(int argc,char**argv){
 if(argc<3)return 2; int rho=stoi(argv[1]); unsigned long long w=stoull(argv[2]); int valbits=80; int K=rho+4; int coordbits=max(K+rho+8,valbits+rho+8); if(coordbits>=128)return 3; u128 mask=maskbits(coordbits); unsigned long long q=(1ULL<<(rho-3))*w; Pair cur=ppow(4*q,coordbits); u128 V=cur.a,X=cur.b; u128 U=(u128(2)*V+u128(3)*X)&mask; u128 x=X>>rho; u128 y=(U*V-u128(1))&mask; u128 d=(u128(3)*U*X+u128(1))&mask; u128 chi=(x*y)&mask; u128 m=1; for(int k=1;k<K;k++){u128 z=fmod(d,chi,m,k+1); if(z)m+=(u128(1)<<k);} u128 z=fmod(d,chi,m,valbits); int val=z?v2u(z)+3:valbits+3; u128 bound=u128(27)<<(rho-1); cout<<"{\"rho\":"<<rho<<",\"w\":"<<w<<",\"m\":"<<s128(m)<<",\"bound\":"<<s128(bound)<<",\"inrange\":"<<(m<bound?"true":"false")<<",\"v2R\":"<<val<<"}\n"; return 0;
}
