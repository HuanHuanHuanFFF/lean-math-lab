// Complete root gates with the explicitly proved genus/divisor necessary filter.
// No coefficient box, denominator truncation, or original-input bound.
#include <bits/stdc++.h>
using namespace std;
struct Row {vector<int> m;array<int,9>L{};long long S=0,T=0;int z=0,g=0;};
int q,miss,del,kap;
#ifndef ANCHOR
#define ANCHOR 6
#endif
constexpr int anchor=ANCHOR, mid=13-ANCHOR;
vector<Row>opt[9];const Row*rr[9];
bool add(array<int,9>&v,const Row&r){for(int i=0;i<9;i++){v[i]+=r.L[i];if(v[i]>2*q)return false;}return true;}
void gen(int r){vector<int>m(r/2+1);function<void(int,int)>go=[&](int s,int rem){if(s==(int)m.size()){if(rem)return;Row a;a.m=m;for(int k=0;k<(int)m.size();k++){int n=m[k],x=k*(r-k);a.S+=n*x;a.z+=(n>0);a.L[k]+=n;a.L[r-k]+=n;}
long long sq=0;for(int k=0;k<(int)m.size();k++)sq+=1LL*m[k]*k*(r-k)*k*(r-k);a.T=(a.S*a.S-sq)/2;for(int k=0;k<(int)m.size();k++)a.g+=m[k]*(m[k]-1)/2;if(r%2==0)a.g+=m[r/2]*(m[r/2]-1)/2;
if(r==miss&&kap){if(m[r/2]<kap)return;a.L[r/2]-=kap;}for(int x:a.L)if(x>2*q)return;opt[r].push_back(a);return;}
for(int n=0;n<=rem;n++){m[s]=n;go(s+1,rem-n);}};go(0,q-(r==miss?del:0));}
int main(int argc,char**argv){if(argc!=5)throw runtime_error("q missing delta out");q=stoi(argv[1]);miss=stoi(argv[2]);del=stoi(argv[3]);if(miss!=4&&miss!=5)throw runtime_error("miss");if(del<0||del>1||(miss==5&&del!=1))throw runtime_error("delta");kap=2-2*del;for(int r=3;r<=8;r++)gen(r);
map<long long,vector<int>>bm;map<pair<long long,long long>,vector<int>>b8;
for(int i=0;i<(int)opt[mid].size();i++)bm[opt[mid][i].S].push_back(i);
for(int i=0;i<(int)opt[8].size();i++)b8[{opt[8][i].S,opt[8][i].T}].push_back(i);
int other=9-miss,ar[3]={3,other,anchor};ofstream out(argv[4]);long long triples=0,nout=0;
for(auto&a:opt[3])for(auto&b:opt[other]){array<int,9>l{};if(!add(l,a)||!add(l,b))continue;for(auto&d:opt[anchor]){auto ll=l;if(!add(ll,d))continue;triples++;
long long av[3]={a.S,b.S,d.S},S[9]{};bool ok=true;for(int r=3;r<=8;r++){long long t=0;for(int k=0;k<3;k++){long long v=24*av[k],den=1;for(int j=0;j<3;j++)if(j!=k){v*=r-ar[j];den*=ar[k]-ar[j];}if(v%den)throw runtime_error("denominator");t+=v/den;}if(t%24){ok=false;break;}S[r]=t/24;}if(!ok)continue;
auto mi=bm.find(S[mid]);if(mi==bm.end())continue;rr[3]=&a;rr[other]=&b;rr[anchor]=&d;
for(auto&c:opt[miss]){long long lam=S[miss]-c.S;if(!del&&lam)continue;bool bad=false;if(del)for(int k=0;k<(int)c.m.size();k++)if(!c.m[k]&&lam==k*(miss-k))bad=true;if(bad)continue;auto la=ll;if(!add(la,c))continue;rr[miss]=&c;
for(int ix:mi->second){auto&e=opt[mid][ix];auto le=la;if(!add(le,e))continue;rr[mid]=&e;long long T=0;int wt[5]={1,-5,10,-10,5};for(int r=3;r<=7;r++)T+=wt[r-3]*(rr[r]->T+(r==miss?lam*rr[r]->S:0));auto it=b8.find({S[8],T});if(it==b8.end())continue;
for(int j:it->second){auto&f=opt[8][j];auto lf=le;if(!add(lf,f))continue;rr[8]=&f;int z=0,g=0;for(int r=3;r<=8;r++)z+=rr[r]->z;if(z<14)continue;bool genus=false;for(int d=1;d<=q;d++){if(q%d || (del?d!=1:kap%d))continue;bool div=true;int gg=0;for(int r=3;r<=8;r++){for(int m:rr[r]->m){if(m%d)div=false;int a=m/d;gg+=a*(a-1)/2;}if(r%2==0){int a=max(0,rr[r]->m.back()/d-(r==miss?kap/d:0));gg+=a*(a-1)/2;}}if(div && gg<=(q/d-1)*(q/d-1))genus=true;}if(!genus)continue;out<<q<<' '<<miss<<' '<<del<<' '<<kap<<' '<<lam;for(int r=3;r<=8;r++)for(int m:rr[r]->m)out<<' '<<m;out<<'\n';nout++;}
}}}}
cout<<q<<' '<<miss<<' '<<del<<" triples "<<triples<<" gates "<<nout<<'\n';}
