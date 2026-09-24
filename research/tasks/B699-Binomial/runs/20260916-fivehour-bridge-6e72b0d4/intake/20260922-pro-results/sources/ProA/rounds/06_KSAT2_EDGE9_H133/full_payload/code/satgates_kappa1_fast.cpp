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
void comps(int r,int k,int rem,array<int,5> m) {
 if(k==r/2){m[k]=rem;Opt o;o.m=m;for(int s=0;s<=r/2;s++){int c=m[s],v=s*(r-s);o.s+=c*v;o.t+=c*v*v;o.z+=(c>0);o.g+=c*(c-1)/2;o.load[s]+=c;o.load[r-s]+=c;}if(r%2==0)o.g+=m[r/2]*(m[r/2]-1)/2;op[r-3].push_back(o);return;}
 for(int c=0;c<=rem;c++){m[k]=c;comps(r,k+1,rem-c,m);}
}
bool addcap(array<int,9>&a,const Opt&b,int ks){for(int t=0;t<9;t++){a[t]+=b.load[t];if(a[t]>2*q+(t==ks))return false;}return true;}
struct Counts {long long triples=0,ab=0,root=0,line=0,z=0,genus=0;};
int main(int argc,char**argv){if(argc!=3)throw runtime_error("usage q output");q=stoi(argv[1]);
 for(int r=3;r<=8;r++){comps(r,0,q,{});for(int i=0;i<(int)op[r-3].size();i++){sumindex[r-3][op[r-3][i].s].push_back(i);sumtindex[r-3][op[r-3][i].s][op[r-3][i].t].push_back(i);}}
 int coeff[6]={-1,5,-10,10,-5,1};ofstream out(argv[2]);auto start=chrono::steady_clock::now();long long all=0;
 for(int kd=0;kd<3;kd++){
  int kr=4+2*kd, ks=kr/2; Counts c;
  for(const auto&o0:op[0])for(const auto&o1:op[1]){array<int,9>l{};if(!addcap(l,o0,ks)||!addcap(l,o1,ks))continue;
   for(const auto&o2:op[2]){auto l3=l;if(!addcap(l3,o2,ks))continue;c.triples++;
    int S[6]={o0.s,o1.s,o2.s,3*o2.s-3*o1.s+o0.s,6*o2.s-8*o1.s+3*o0.s,10*o2.s-15*o1.s+6*o0.s};
    auto i3=sumindex[3].find(S[3]); auto i4=sumindex[4].find(S[4]); auto i5=sumtindex[5].find(S[5]);
    if(i3==sumindex[3].end()||i4==sumindex[4].end()||i5==sumtindex[5].end())continue;
    int g3=o0.g+o1.g+o2.g,z3=o0.z+o1.z+o2.z,t3=-o0.t+5*o1.t-10*o2.t;
    for(int ai:i3->second){auto&A=op[3][ai];auto l4=l3;if(!addcap(l4,A,ks))continue;
     for(int bi:i4->second){auto&B=op[4][bi];auto l5=l4;if(!addcap(l5,B,ks))continue;c.ab++;
      int need=-(t3+coeff[3]*A.t+coeff[4]*B.t);auto jt=i5->second.find(need);if(jt==i5->second.end())continue;
      for(int di:jt->second){auto&D=op[5][di];auto l6=l5;if(!addcap(l6,D,ks))continue;c.root++;
       // Raw diagonal load includes 2m; kappa=1 lowers it by one.
       l6[ks]--;bool bad=false;for(int t=0;t<9;t++)if(l6[t]>2*q)bad=true;if(bad)throw runtime_error("internal adjusted load");c.line++;
       const Opt* sel[6]={&o0,&o1,&o2,&A,&B,&D};int mi=sel[kr-3]->m[ks];if(mi<1)continue;
       int z=z3+A.z+B.z+D.z;if(z<14)continue;c.z++;
       int g=g3+A.g+B.g+D.g-(mi-1);if(g>(q-1)*(q-1))continue;c.genus++;
       out<<q<<' '<<kd<<' '<<g;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++)out<<' '<<sel[r-3]->m[s];out<<'\n';
      }
     }
    }
   }
  }
  cerr<<"q "<<q<<" kd "<<kd<<" triples "<<c.triples<<" ab "<<c.ab<<" root "<<c.root<<" line "<<c.line<<" z "<<c.z<<" genus "<<c.genus<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";all+=c.genus;
 }
 cout<<"KAPPA1_GATES q "<<q<<" total "<<all<<" seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";
}
