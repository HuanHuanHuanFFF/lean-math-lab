#include <bits/stdc++.h>
#include <omp.h>
using namespace std; using u128=unsigned __int128;
static inline u128 maskbits(int b){return b>=128?~(u128)0:(((u128)1)<<b)-1;}
struct Z{u128 a,b;};
static inline Z mulz(Z z,Z w,int bits){u128 M=maskbits(bits);return{(z.a*w.a+(u128)3*z.b*w.b)&M,(z.a*w.b+z.b*w.a)&M};}
static inline Z powz(Z b,u128 n,int bits){Z r{1,0};while(n){if(n&1)r=mulz(r,b,bits);b=mulz(b,b,bits);n>>=1;}return r;}
static inline Z powalpha(uint64_t n,int bits){return powz({2,1},n,bits);}
static inline u128 Rpoly(u128 d,u128 v,int bits){u128 M=maskbits(bits),Q=(d+v)&M;u128 q2=Q*Q&M,q3=q2*Q&M,q4=q3*Q&M,q5=q4*Q&M,q6=q5*Q&M,q7=q6*Q&M,q8=q7*Q&M,q9=q8*Q&M,q10=q9*Q&M;u128 d2=d*d&M,d3=d2*d&M,d4=d3*d&M;u128 r=q10;r=(r-(u128)12*q7)&M;r=(r+(u128)15*d*q6)&M;r=(r-(u128)4*d2*q5)&M;r=(r-(u128)4*d*q3)&M;r=(r+(u128)12*d2*q2)&M;r=(r-(u128)12*d3*Q)&M;r=(r+(u128)4*d4)&M;return r;}
static inline int v2u(u128 x){if(!x)return 128;uint64_t lo=(uint64_t)x;return lo?__builtin_ctzll(lo):64+__builtin_ctzll((uint64_t)(x>>64));}
struct E{u128 d,chi;};
static inline E data(Z z,int rho,int bits){u128 M=maskbits(bits),V=z.a,X=z.b,U=((u128)2*V+(u128)3*X)&M,x=X>>rho,y=(U*V-1)&M,d=((u128)3*U*X+1)&M;return{d,(x*y)&M};}
static inline u128 fq(Z z,int rho,u128 m,int bits,int cb){int rb=bits+3;u128 M=maskbits(rb);E e=data(z,rho,cb);u128 R=Rpoly(e.d&M,((u128)2*(e.chi&M)*m)&M,rb);return (R>>3)&maskbits(bits);}
static inline u128 invodd(u128 a,int bits){u128 x=1;int k=1;while(k<bits){int nk=min(2*k,bits);u128 M=maskbits(nk);x=(x*((u128)2-a*x))&M;k=nk;}return x&maskbits(bits);}
static inline pair<u128,Z> root_newton(int rho,u128 m,int L,int cb,Z beta,const vector<Z>&stepk){u128 w=1;Z cur=beta;int k=1;while(k<L){int h=min(k,L-k),target=k+h;u128 fw=fq(cur,rho,m,target,cb);Z alt=mulz(cur,stepk[k],cb);u128 fa=fq(alt,rho,m,target,cb);u128 A=(fw>>k)&maskbits(h),D=((fa-fw)>>k)&maskbits(h);u128 c=(-A*invodd(D,h))&maskbits(h);cur=mulz(cur,powz(stepk[k],c,cb),cb);w+=((u128)1<<k)*c;k=target;}return{w,cur};}
int main(int argc,char**argv){int rho=argc>1?stoi(argv[1]):12,valbits=argc>2?stoi(argv[2]):80;uint64_t lo=argc>3?stoull(argv[3]):0, hiarg=argc>4?stoull(argv[4]):ULLONG_MAX;int L=56-rho,cb=valbits+rho+10;u128 bound=(u128)27<<(rho-1);uint64_t nm=(uint64_t)(bound/2),hi=min(nm,hiarg);Z beta=powalpha((uint64_t)1<<(rho-1),cb);vector<Z>stepk(L+1);stepk[0]=beta;for(int k=1;k<=L;k++)stepk[k]=mulz(stepk[k-1],stepk[k-1],cb);
unsigned long long count=0,pass=0;int gmax=0;unsigned long long gm=0,gw=0;double st=omp_get_wtime();
#pragma omp parallel
{unsigned long long lc=0,lp=0,lm=0,lw=0;int lmax=0;
#pragma omp for schedule(static)
for(uint64_t idx=lo;idx<hi;idx++){u128 m=(u128)2*idx+1;auto rr=root_newton(rho,m,L,cb,beta,stepk);u128 z=fq(rr.second,rho,m,valbits,cb);int val=z?v2u(z)+3:valbits+3;if(val>lmax){lmax=val;lm=(uint64_t)m;lw=(uint64_t)rr.first;}if(!z)lp++;lc++;}
#pragma omp critical
{count+=lc;pass+=lp;if(lmax>gmax){gmax=lmax;gm=lm;gw=lw;}}}
cout<<"rho="<<rho<<" lo="<<lo<<" hi="<<hi<<" count="<<count<<" pass80="<<pass<<" maxv="<<gmax<<" maxm="<<gm<<" maxw="<<gw<<" seconds="<<(omp_get_wtime()-st)<<" threads="<<omp_get_max_threads()<<"\n";
}
