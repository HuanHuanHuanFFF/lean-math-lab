#include <bits/stdc++.h>
using namespace std;
#ifndef MODULUS
#define MODULUS 32749
#endif
const int P=MODULUS,q=5,D=11,K=42;
int mod(long long x){x%=P;if(x<0)x+=P;return x;}int mul(int a,int b){return (long long)a*b%P;}int pw(int a,int e){int r=1;while(e){if(e&1)r=mul(r,a);a=mul(a,a);e>>=1;}return r;}
int Cb[32][32],Pow[32][64];vector<pair<int,int>>mons;
int bc(int a,int b,int r,int v,int sh,int i,int j){if(j>b)return 0;int o=0;for(int z=0;z<=b-j;z++)if(i>=z&&i-z<=a)o=mod(o+(long long)Cb[b][j]*Cb[b-j][z]%P*Pow[v][b-j-z]%P*Pow[sh][z]%P*Cb[a][i-z]%P*Pow[r][a-i+z]);return o;}
struct Basis{array<array<int,K>,K> row{};array<char,K> used{};int rank=0;bool add(array<int,K>x){for(int c=0;c<K;c++)if(x[c]){if(!used[c]){int iv=pw(x[c],P-2);for(int k=c;k<K;k++)x[k]=mul(x[k],iv);row[c]=x;used[c]=1;rank++;return true;}int z=x[c];for(int k=c;k<K;k++)x[k]=mod(x[k]-(long long)z*row[c][k]);}return false;}};
struct Opt{array<int,5>m{};array<int,9>load{};int z=0,sum=0;vector<array<int,K>>eq;};vector<Opt>op[6];map<int,vector<int>> bysum8;
void mk(int r,int pos,int rem,array<int,5>&m){int kk=r/2+1;if(pos==kk-1){m[pos]=rem;Opt o;o.m=m;for(int s=0;s<kk;s++){int mm=m[s];if(!mm)continue;o.z++;int v=s*(r-s);o.sum+=mm*v;o.load[s]+=mm;o.load[r-s]+=mm;bool dg=2*s==r;if(dg){for(int w=0;w<2*mm;w++)for(int j=0;2*j<=w;j++){int i=w-2*j;array<int,K>x{};for(int c=0;c<K;c++)x[c]=bc(mons[c].first,mons[c].second,r,v,s,i,j);o.eq.push_back(x);}}else{for(int t=0;t<mm;t++)for(int j=0;j<=t;j++){int i=t-j;array<int,K>x{};for(int c=0;c<K;c++)x[c]=bc(mons[c].first,mons[c].second,r,v,0,i,j);o.eq.push_back(x);}}}bool bad=0;for(int t=0;t<9;t++)if(o.load[t]>D)bad=1;if(!bad)op[r-3].push_back(move(o));return;}for(int x=0;x<=rem;x++){m[pos]=x;mk(r,pos+1,rem-x,m);}}
long long nodes=0,linep=0,zp=0,rankp=0,rootp=0,leadp=0,res=0,finalopts=0;ofstream out;chrono::steady_clock::time_point st;
bool leading_exists(const array<long long,6>&S){
 long long B1=S[0]-4*S[1]+6*S[2]-4*S[3]+S[4];long long A1=3*S[0]-16*S[1]+30*S[2]-24*S[3]+7*S[4];
 long long B2=S[1]-4*S[2]+6*S[3]-4*S[4]+S[5];long long A2=4*S[1]-20*S[2]+36*S[3]-28*S[4]+8*S[5];
 long long det=A1*B2-B1*A2;if(det)return false;
 long long a,b;if(A1||B1){a=B1;b=-A1;}else if(A2||B2){a=B2;b=-A2;}else{a=0;b=1;}
 for(int r=3;r<=8;r++)if(a*r+b==0)return false;return true;
}
void dfs5(int ri,array<int,9>L,int z,Basis B,array<long long,6>&S,array<int,6>&ch){nodes++;if(ri==5){ // choose row8 by predicted sum
 long long B1=S[0]-4*S[1]+6*S[2]-4*S[3]+S[4];long long A1=3*S[0]-16*S[1]+30*S[2]-24*S[3]+7*S[4];
 long long b0=S[1]-4*S[2]+6*S[3]-4*S[4];long long a0=4*S[1]-20*S[2]+36*S[3]-28*S[4];
 long long den=A1-8*B1,num=B1*a0-A1*b0;vector<int> cand;
 if(den){if(num%den){rootp++;return;}long long target=num/den;auto it=bysum8.find((int)target);if(it==bysum8.end()){rootp++;return;}cand=it->second;}else{if(num){rootp++;return;}for(auto &kv:bysum8)cand.insert(cand.end(),kv.second.begin(),kv.second.end());}
 for(int oi:cand){finalopts++;auto&o=op[5][oi];auto LL=L;bool bad=0;for(int t=0;t<9;t++){LL[t]+=o.load[t];if(LL[t]>D){bad=1;break;}}if(bad){linep++;continue;}if(z+o.z<14){zp++;continue;}S[5]=o.sum;if(!leading_exists(S)){leadp++;continue;}Basis B2=B;for(auto x:o.eq)B2.add(x);if(B2.rank==K){rankp++;continue;}ch[5]=oi;res++;out<<B2.rank<<' '<<z+o.z;for(int x:ch)out<<' '<<x;out<<'\n';}
 return;}
 int remainingMax=0;for(int j=ri;j<6;j++)remainingMax+=min(q,(j+3)/2+1);if(z+remainingMax<14){zp++;return;}
 for(int oi=0;oi<(int)op[ri].size();oi++){auto&o=op[ri][oi];auto LL=L;bool bad=0;for(int t=0;t<9;t++){LL[t]+=o.load[t];if(LL[t]>D){bad=1;break;}}if(bad){linep++;continue;}Basis B2=B;for(auto x:o.eq)B2.add(x);if(B2.rank==K){rankp++;continue;}S[ri]=o.sum;ch[ri]=oi;dfs5(ri+1,LL,z+o.z,move(B2),S,ch);} }
int main(int argc,char**argv){if(argc!=2)return 2;for(int n=0;n<32;n++){Cb[n][0]=Cb[n][n]=1;for(int k=1;k<n;k++)Cb[n][k]=mod(Cb[n-1][k-1]+Cb[n-1][k]);}for(int a=0;a<32;a++){Pow[a][0]=1;for(int b=1;b<64;b++)Pow[a][b]=mul(Pow[a][b-1],a);}for(int b=q;b>=0;b--)for(int a=D-2*b;a>=0;a--)mons.push_back({a,b});for(int r=3;r<=8;r++){array<int,5>m{};mk(r,0,q,m);cerr<<"row "<<r<<" opts "<<op[r-3].size()<<"\n";}for(int i=0;i<(int)op[5].size();i++)bysum8[op[5][i].sum].push_back(i);out.open(argv[1]);st=chrono::steady_clock::now();Basis B;array<long long,6>S{};array<int,6>ch{};dfs5(0,{},0,move(B),S,ch);cerr<<"nodes "<<nodes<<" finalopts "<<finalopts<<" line "<<linep<<" z "<<zp<<" root "<<rootp<<" lead "<<leadp<<" rank "<<rankp<<" residual "<<res<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-st).count()<<"\n";}
