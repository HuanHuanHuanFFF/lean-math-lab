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
int q; vector<Opt> op[6]; map<int,vector<int>> sumindex[6]; map<int,unordered_map<int,vector<int>>> sumtindex[6];
void comps(int r,int k,int rem,array<int,5> m){if(k==r/2){m[k]=rem;Opt o;o.m=m;for(int s=0;s<=r/2;s++){int c=m[s],v=s*(r-s);o.s+=c*v;o.t+=c*v*v;o.z+=(c>0);o.g+=c*(c-1)/2;o.load[s]+=c;o.load[r-s]+=c;}if(r%2==0)o.g+=m[r/2]*(m[r/2]-1)/2;op[r-3].push_back(o);return;}for(int c=0;c<=rem;c++){m[k]=c;comps(r,k+1,rem-c,m);}}
bool add(array<int,9>&a,const Opt&b){for(int t=0;t<9;t++){a[t]+=b.load[t];if(a[t]>2*q)return false;}return true;}
int main(int argc,char**argv){if(argc!=5)throw runtime_error("q out start end");q=stoi(argv[1]);int lo=stoi(argv[3]),hi=stoi(argv[4]);for(int r=3;r<=8;r++){comps(r,0,q,{});for(int i=0;i<(int)op[r-3].size();i++){sumindex[r-3][op[r-3][i].s].push_back(i);sumtindex[r-3][op[r-3][i].s][op[r-3][i].t].push_back(i);}}
ofstream out(argv[2]);long long triples=0,ab=0,root=0,line=0,zc=0,gc=0;auto start=chrono::steady_clock::now();
for(int i0=lo;i0<hi&&i0<(int)op[0].size();i0++){const auto&o0=op[0][i0];for(const auto&o1:op[1]){array<int,9>l{};if(!add(l,o0)||!add(l,o1))continue;for(const auto&o2:op[2]){auto l3=l;if(!add(l3,o2))continue;triples++;
 int S[6]={o0.s,o1.s,o2.s,3*o2.s-3*o1.s+o0.s,6*o2.s-8*o1.s+3*o0.s,10*o2.s-15*o1.s+6*o0.s};auto i3=sumindex[3].find(S[3]);auto i4=sumindex[4].find(S[4]);auto i5=sumtindex[5].find(S[5]);if(i3==sumindex[3].end()||i4==sumindex[4].end()||i5==sumtindex[5].end())continue;
 int g3=o0.g+o1.g+o2.g,z3=o0.z+o1.z+o2.z,t3=-o0.t+5*o1.t-10*o2.t;
 for(int ai:i3->second){auto&A=op[3][ai];auto l4=l3;if(!add(l4,A))continue;for(int bi:i4->second){auto&B=op[4][bi];auto l5=l4;if(!add(l5,B))continue;ab++;int need=-(t3+10*A.t-5*B.t);auto jt=i5->second.find(need);if(jt==i5->second.end())continue;for(int di:jt->second){auto&D=op[5][di];auto l6=l5;if(!add(l6,D))continue;root++;line++;int z=z3+A.z+B.z+D.z;if(z<14)continue;zc++;int g=g3+A.g+B.g+D.g;if(g>(q-1)*(q-1))continue;gc++;const Opt*sel[6]={&o0,&o1,&o2,&A,&B,&D};out<<q<<" 0 0 "<<g;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++)out<<' '<<sel[r-3]->m[s];out<<'\n';}}}}
}}
cout<<"ZERO_GATES q "<<q<<" triples "<<triples<<" ab "<<ab<<" root "<<root<<" line "<<line<<" z "<<zc<<" genus "<<gc<<" seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";
}
