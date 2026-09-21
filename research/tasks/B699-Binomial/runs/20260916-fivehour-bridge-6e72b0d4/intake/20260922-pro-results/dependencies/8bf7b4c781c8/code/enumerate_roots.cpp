// Final root enumerator. Uses E2 (pairwise elementary root sums), not discovery power sums.
#include <algorithm>
#include <array>
#include <vector>
#include <map>
#include <unordered_map>
#include <iostream>
#include <fstream>
#include <chrono>
#include <stdexcept>
using namespace std;
struct Opt {array<int,5>m{};array<int,9>load{};int s=0,t=0,z=0,g=0;};
int q; vector<Opt> op[6][2]; map<int,vector<int>> sumindex[6];
void comps(int r,int d,int k,int rem,array<int,5> m) {
 if(k==r/2){m[k]=rem;Opt o;o.m=m;for(int s=0;s<=r/2;s++){int c=m[s],v=s*(r-s);o.t+=o.s*c*v+(c*(c-1)/2)*v*v;o.s+=c*v;o.z+=(c>0);o.g+=c*(c-1)/2;o.load[s]+=c;o.load[r-s]+=c;}if(r%2==0)o.g+=m[r/2]*(m[r/2]-1)/2;op[r-3][d].push_back(o);return;}
 for(int c=0;c<=rem;c++){m[k]=c;comps(r,d,k+1,rem-c,m);}
}
bool add(array<int,9>&a,const Opt&b){for(int t=0;t<9;t++){a[t]+=b.load[t];if(a[t]>2*q)return false;}return true;}
struct Counts {long long triples=0,pairs=0,root=0,line=0,z=0,genus=0;};
int main(int argc,char**argv){if(argc!=4)throw runtime_error("q missing output");q=stoi(argv[1]);bool sat=(stoi(argv[2])==0);int h=sat?3:stoi(argv[2])-3;
for(int r=3;r<=8;r++){comps(r,0,0,q,{});if(r-3==h)comps(r,1,0,q-(sat?0:1),{});for(int i=0;i<(int)op[r-3][0].size();i++)sumindex[r-3][op[r-3][0][i].s].push_back(i);}
vector<int> oth;for(int i=3;i<6;i++)if(i!=h)oth.push_back(i);int a=oth[0],b=oth[1];int coeff[6]={-1,5,-10,10,-5,1};
map<int,unordered_map<int,vector<int>>> missidx;
auto getidx=[&](int S)->unordered_map<int,vector<int>>&{auto it=missidx.find(S);if(it!=missidx.end())return it->second;auto &x=missidx[S];int r=h+3;for(int i=0;i<(int)op[h][1].size();i++){auto&o=op[h][1][i];int lam=S-o.s;if(sat && lam)continue;bool invalid=false;for(int t=0;t<=r/2;t++)if(!sat && lam==t*(r-t)&&o.m[t]==0)invalid=true;if(!invalid)x[o.t+lam*o.s].push_back(i);}return x;};
Counts c;ofstream out(argv[3]);auto start=chrono::steady_clock::now();int num=0;
for(const auto&o1:op[1][0])for(const auto&o0:op[0][0]){array<int,9>l{};if(!add(l,o0)||!add(l,o1))continue;for(const auto&o2:op[2][0]){auto l3=l;if(!add(l3,o2))continue;c.triples++;
int S[6];for(int t=0;t<6;t++)S[t]=o0.s+t*(o1.s-o0.s)+(t*(t-1)/2)*(o2.s-2*o1.s+o0.s);
auto ia=sumindex[a].find(S[a]),ib=sumindex[b].find(S[b]);if(ia==sumindex[a].end()||ib==sumindex[b].end())continue;
int g3=o0.g+o1.g+o2.g,z3=o0.z+o1.z+o2.z,t3=-o0.t+5*o1.t-10*o2.t;auto &idx=getidx(S[h]);
for(int ai:ia->second){auto&A=op[a][0][ai];auto l4=l3;if(!add(l4,A))continue;for(int bi:ib->second){auto&B=op[b][0][bi];auto l5=l4;if(!add(l5,B))continue;c.pairs++;int t=-(t3+coeff[a]*A.t+coeff[b]*B.t);if(t%coeff[h])continue;t/=coeff[h];auto mi=idx.find(t);if(mi==idx.end())continue;
for(int hi:mi->second){c.root++;auto &H=op[h][1][hi];auto l6=l5;if(!add(l6,H))continue;c.line++;int z=z3+A.z+B.z+H.z;if(z<14)continue;c.z++;int g=g3+A.g+B.g+H.g;if(g>(q-1)*(q-1))continue;c.genus++;
const Opt* sel[6]={&o0,&o1,&o2,nullptr,nullptr,nullptr};sel[a]=&A;sel[b]=&B;sel[h]=&H;out<<q<<' '<<(sat?0:h+3)<<' '<<S[h]-H.s<<' '<<g;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++)out<<' '<<sel[r-3]->m[s];out<<'\n';
}
}}
}}
cout<<"q "<<q<<" h "<<(sat?0:h+3)<<" triples "<<c.triples<<" pairs "<<c.pairs<<" root "<<c.root<<" line "<<c.line<<" z "<<c.z<<" genus "<<c.genus<<" seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<endl;
}
