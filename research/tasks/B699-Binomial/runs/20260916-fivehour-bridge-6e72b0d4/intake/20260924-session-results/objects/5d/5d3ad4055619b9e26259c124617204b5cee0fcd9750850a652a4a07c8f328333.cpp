#include <bits/stdc++.h>
using namespace std;
struct Opt{array<int,5>m{};array<int,9>load{};int e1=0,e2=0,z=0;};
int q,D;vector<Opt>op[6];
void gen(int r,int pos,int rem,array<int,5>&m){int k=r/2+1;if(pos==k-1){m[pos]=rem;Opt o;o.m=m;int sum=0;for(int s=0;s<k;s++){int c=m[s],v=s*(r-s);if(c)o.z++;o.e2+=sum*c*v+c*(c-1)/2*v*v;sum+=c*v;o.load[s]+=c;o.load[r-s]+=c;}o.e1=sum;bool bad=false;for(int t=0;t<9;t++)if(o.load[t]>D)bad=true;if(!bad)op[r-3].push_back(o);return;}for(int x=0;x<=rem;x++){m[pos]=x;gen(r,pos+1,rem-x,m);}}
bool add(array<int,9>&a,const Opt&o){for(int t=0;t<9;t++){a[t]+=o.load[t];if(a[t]>D)return false;}return true;}
bool collision(int r,const Opt&o,int lam){for(int s=0;s<=r/2;s++)if(s*(r-s)==lam)return o.m[s]==0;return false;}
int main(int argc,char**argv){if(argc!=3)return 2;q=stoi(argv[1]);D=2*q;for(int r=3;r<=8;r++){array<int,5>m{};int rem=q-((r==4||r==8)?1:0);gen(r,0,rem,m);cerr<<"row "<<r<<" opts "<<op[r-3].size()<<"\n";}
 map<int,vector<int>>idx3;for(int i=0;i<(int)op[0].size();i++)idx3[op[0][i].e1].push_back(i);
 map<int,unordered_map<int,vector<int>>> cache8;
 auto get8=[&](int S8)->unordered_map<int,vector<int>>&{auto it=cache8.find(S8);if(it!=cache8.end())return it->second;auto&mp=cache8[S8];for(int i=0;i<(int)op[5].size();i++){auto&f=op[5][i];int lam=S8-f.e1;if(collision(8,f,lam))continue;int E=f.e2+lam*f.e1;mp[E].push_back(i);}return mp;};
 ofstream out(argv[2]);long long tri=0,miss3=0,coll4=0,line=0,zr=0,gates=0,lookups=0;auto st=chrono::steady_clock::now();
 // Saturated rows 5,6,7 determine S at all six rows.
 for(int i2=0;i2<(int)op[2].size();i2++){auto&c=op[2][i2];for(int i3=0;i3<(int)op[3].size();i3++){auto&d=op[3][i3];array<int,9>L{};if(!add(L,c)||!add(L,d))continue;for(int i4=0;i4<(int)op[4].size();i4++){auto&e=op[4][i4];auto L3=L;if(!add(L3,e))continue;tri++;
   int S4=3*c.e1-3*d.e1+e.e1,S3=6*c.e1-8*d.e1+3*e.e1,S8=c.e1-3*d.e1+3*e.e1;auto it3=idx3.find(S3);if(it3==idx3.end()){miss3++;continue;}auto&mp8=get8(S8);
   for(int i0:it3->second){auto&a=op[0][i0];auto L4=L3;if(!add(L4,a)){line++;continue;}int target=a.e2+10*c.e2-10*d.e2+5*e.e2;
    for(int i1=0;i1<(int)op[1].size();i1++){auto&b=op[1][i1];int lam4=S4-b.e1;if(collision(4,b,lam4)){coll4++;continue;}auto L5=L4;if(!add(L5,b)){line++;continue;}int E24=b.e2+lam4*b.e1;int need=target-5*E24;lookups++;auto jt=mp8.find(need);if(jt==mp8.end())continue;
      for(int i5:jt->second){auto&f=op[5][i5];int lam8=S8-f.e1;auto L6=L5;if(!add(L6,f)){line++;continue;}int z=a.z+b.z+c.z+d.z+e.z+f.z;if(z<14){zr++;continue;}gates++;out<<q<<' '<<z<<' '<<lam4<<' '<<lam8;int ids[6]={i0,i1,i2,i3,i4,i5};for(int r=3;r<=8;r++){auto&o=op[r-3][ids[r-3]];for(int s=0;s<=r/2;s++)out<<' '<<o.m[s];}out<<'\n';}
    }
   }
 }} }
 cerr<<"q "<<q<<" tri "<<tri<<" miss3 "<<miss3<<" coll4 "<<coll4<<" line "<<line<<" z "<<zr<<" lookups "<<lookups<<" gates "<<gates<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-st).count()<<"\n";cout<<"DOUBLE48_GATES q "<<q<<" gates "<<gates<<"\n";
}
