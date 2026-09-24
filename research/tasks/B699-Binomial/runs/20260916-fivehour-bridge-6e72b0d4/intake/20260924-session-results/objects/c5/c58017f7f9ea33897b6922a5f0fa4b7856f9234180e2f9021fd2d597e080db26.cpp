#include <bits/stdc++.h>
using namespace std;
using u128 = unsigned __int128;
using u64 = unsigned long long;

static inline u128 maskbits(int b){ return b>=128 ? ~u128(0) : ((u128(1)<<b)-1); }
static inline int v2u(u128 x){ if(!x) return 999; u64 lo=(u64)x; if(lo) return __builtin_ctzll(lo); return 64+__builtin_ctzll((u64)(x>>64)); }
struct Pair{u128 a,b;};
static inline Pair pmul(Pair z, Pair w, u128 mask){
    return { (z.a*w.a + u128(3)*z.b*w.b)&mask, (z.a*w.b + z.b*w.a)&mask };
}
Pair ppow(u64 n,int bits){
    u128 mask=maskbits(bits); Pair r{1,0}, b{2,1};
    while(n){ if(n&1) r=pmul(r,b,mask); b=pmul(b,b,mask); n>>=1; }
    return r;
}
static inline u128 mulm(u128 a,u128 b,u128 mask){return (a*b)&mask;}
static inline u128 powm(u128 a,int e,u128 mask){u128 r=1; while(e){if(e&1)r=mulm(r,a,mask);a=mulm(a,a,mask);e>>=1;}return r;}

u128 Rpoly(u128 d,u128 v,int bits){
    u128 mask=maskbits(bits); d&=mask; v&=mask; u128 Q=(d+v)&mask;
    u128 q2=mulm(Q,Q,mask), q3=mulm(q2,Q,mask), q5=mulm(q3,q2,mask), q6=mulm(q5,Q,mask), q7=mulm(q6,Q,mask), q10=mulm(q5,q5,mask);
    u128 d2=mulm(d,d,mask), d3=mulm(d2,d,mask), d4=mulm(d2,d2,mask);
    u128 r=q10;
    r=(r - u128(12)*q7)&mask;
    r=(r + u128(15)*mulm(d,q6,mask))&mask;
    r=(r - u128(4)*mulm(d2,q5,mask))&mask;
    r=(r - u128(4)*mulm(d,q3,mask))&mask;
    r=(r + u128(12)*mulm(d2,q2,mask))&mask;
    r=(r - u128(12)*mulm(d3,Q,mask))&mask;
    r=(r + u128(4)*d4)&mask;
    return r;
}

u128 fmod(u128 d,u128 chi,u128 m,int bits){
    int rb=bits+3; u128 mask=maskbits(rb);
    u128 v=(u128(2)*(chi&mask)*(m&mask))&mask;
    u128 R=Rpoly(d&mask,v,rb);
    if((R&7)!=0){cerr<<"R not /8\n"; exit(2);} return (R>>3)&maskbits(bits);
}

string s128(u128 x){if(!x)return"0";string s;while(x){s.push_back('0'+x%10);x/=10;}reverse(s.begin(),s.end());return s;}


int main(int argc,char**argv){
    if(argc<2){cerr<<"rho [valbits] [start] [count]\n";return 2;}
    int rho=stoi(argv[1]); int valbits=argc>2?stoi(argv[2]):80;
    int L=56-rho; u64 total=u64(1)<<(L-1); int K=rho+4;
    u64 start=argc>3?stoull(argv[3]):0;
    u64 count=argc>4?stoull(argv[4]):(total-start);
    if(start>total || count>total-start){cerr<<"bad range\n";return 2;}
    int coordbits=max(K+rho+8,valbits+rho+8); if(coordbits>=128){cerr<<"too many bits "<<coordbits<<"\n";return 2;}
    u128 mask=maskbits(coordbits);
    u64 q0=u64(1)<<(rho-3);
    u64 w0=2*start+1;
    Pair cur=ppow(4*q0*w0,coordbits);
    Pair step=ppow(u64(1)<<rho,coordbits);
    u128 bound=u128(27)<<(rho-1);
    u64 inrange=0, pass=0; int maxval=0; u64 w=w0;
    auto st=chrono::steady_clock::now();
    for(u64 idx=0;idx<count;idx++,w+=2){
        u128 V=cur.a, X=cur.b;
        if(v2u(X)!=rho){cerr<<"bad vx idx "<<(start+idx)<<" got "<<v2u(X)<<"\n";return 3;}
        u128 U=(u128(2)*V+u128(3)*X)&mask;
        u128 x=X>>rho;
        u128 y=(U*V-u128(1))&mask;
        u128 d=(u128(3)*U*X+u128(1))&mask;
        u128 chi=(x*y)&mask;
        u128 m=1;
        for(int k=1;k<K;k++){
            u128 z=fmod(d,chi,m,k+1);
            if(z) m += (u128(1)<<k);
        }
        if(m<bound){
            inrange++;
            u128 z=fmod(d,chi,m,valbits);
            int val=(z? v2u(z)+3 : valbits+3);
            maxval=max(maxval,val);
            if(!z){pass++; if(pass<10) cerr<<"PASS global_idx="<<(start+idx)<<" w="<<w<<" m="<<s128(m)<<"\n";}
        }
        cur=pmul(cur,step,mask);
    }
    double sec=chrono::duration<double>(chrono::steady_clock::now()-st).count();
    cout<<"{\"rho\":"<<rho<<",\"start\":"<<start<<",\"count\":"<<count<<",\"inrange\":"<<inrange<<",\"pass_valbits\":"<<pass<<",\"max_v2R\":"<<maxval<<",\"valbits\":"<<valbits<<",\"seconds\":"<<fixed<<setprecision(6)<<sec<<"}\n";
    return 0;
}
