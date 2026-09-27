#include <bits/stdc++.h>
using namespace std;
struct Opt{vector<int>m; array<int,9>load{}; int e1=0,e2=0,z=0;};
int q=8,D=16; vector<Opt> op[6];
void gen(int rr,int s,int left,vector<int>&m){
 int r=rr+3;
 if(s==r/2){m[s]=left; Opt o; o.m=m; int sum=0;
  for(int j=0;j<=r/2;j++){int x=j*(r-j),k=m[j]; o.e2+=sum*k*x+k*(k-1)/2*x*x; sum+=k*x; o.z+=(k>0); o.load[j]+=k; o.load[r-j]+=k;}
  o.e1=sum; for(int t=0;t<9;t++) if(o.load[t]>D) return; op[rr].push_back(o); return; }
 for(int k=0;k<=left;k++){m[s]=k;gen(rr,s+1,left-k,m);} }
bool add(array<int,9>&a,const Opt&o){for(int t=0;t<9;t++){a[t]+=o.load[t];if(a[t]>D)return false;}return true;}
bool collision7(const Opt&o,int A,long long Pnum){int r=7; for(int s=0;s<=r/2;s++) if(o.m[s]==0){long long v=s*(r-s); if(5*v*v-5LL*A*v+Pnum==0)return true;} return false;}
int main(int argc,char**argv){if(argc!=2) return 2;
 for(int rr=0;rr<6;rr++){int r=rr+3; vector<int>m(r/2+1); int rem=q-(r==7?2:0); gen(rr,0,rem,m); cerr<<"row "<<r<<" opts "<<op[rr].size()<<"\n";}
 map<int,vector<int>> idx6,idx8; for(int i=0;i<(int)op[3].size();i++) idx6[op[3][i].e1].push_back(i); for(int i=0;i<(int)op[5].size();i++) idx8[op[5][i].e1].push_back(i);
 ofstream out(argv[1]); long long tri=0,miss6=0,miss8=0,line=0,coll=0,zr=0,gates=0; auto st=chrono::steady_clock::now();
 for(int i0=0;i0<(int)op[0].size();i0++){auto&a=op[0][i0];
  for(int i1=0;i1<(int)op[1].size();i1++){auto&b=op[1][i1]; array<int,9>L{}; if(!add(L,a)||!add(L,b))continue;
   for(int i2=0;i2<(int)op[2].size();i2++){auto&c=op[2][i2]; auto L3=L; if(!add(L3,c))continue; tri++;
    int S6=3*c.e1-3*b.e1+a.e1, S7=6*c.e1-8*b.e1+3*a.e1, S8=10*c.e1-15*b.e1+6*a.e1;
    auto it6=idx6.find(S6); if(it6==idx6.end()){miss6++;continue;}
    auto it8=idx8.find(S8); if(it8==idx8.end()){miss8++;continue;}
    for(int i3:it6->second){auto&d=op[3][i3]; auto L6=L3;if(!add(L6,d)){line++;continue;}
     for(int i5:it8->second){auto&f=op[5][i5];auto L68=L6;if(!add(L68,f)){line++;continue;}
      for(int i4=0;i4<(int)op[4].size();i4++){auto&e=op[4][i4];auto Lall=L68;if(!add(Lall,e)){line++;continue;} int A=S7-e.e1;
       long long base=-(long long)a.e2+5LL*b.e2-10LL*c.e2+10LL*d.e2-5LL*(e.e2+(long long)A*e.e1)+f.e2;
       if(collision7(e,A,base)){coll++;continue;} int z=a.z+b.z+c.z+d.z+e.z+f.z; if(z<14){zr++;continue;}
       gates++; out<<q<<' '<<z<<' '<<A<<' '<<base; int ids[6]={i0,i1,i2,i3,i4,i5}; for(int rr=0;rr<6;rr++)for(int m:op[rr][ids[rr]].m)out<<' '<<m; out<<'\n';
      }
     }
    }
   }
  }
 }
 cerr<<"q8 2delta7 tri "<<tri<<" miss6 "<<miss6<<" miss8 "<<miss8<<" line "<<line<<" coll "<<coll<<" z "<<zr<<" gates "<<gates<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-st).count()<<"\n";
 cout<<"Q8_2DELTA7_GATES "<<gates<<"\n";
}
