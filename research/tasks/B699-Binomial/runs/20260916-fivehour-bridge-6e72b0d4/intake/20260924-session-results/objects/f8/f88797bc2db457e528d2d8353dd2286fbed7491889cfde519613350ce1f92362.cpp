#include <bits/stdc++.h>
using namespace std;
struct Opt{array<int,5>m{};array<int,9>load{};int e1=0,e2=0,z=0;};
int q,D;vector<Opt>op[6];
void gen(int r,int pos,int rem,array<int,5>&m){int k=r/2+1;if(pos==k-1){m[pos]=rem;Opt o;o.m=m;int sum=0;for(int s=0;s<k;s++){int c=m[s],v=s*(r-s);if(c)o.z++;o.e2+=sum*c*v+c*(c-1)/2*v*v;sum+=c*v;o.load[s]+=c;o.load[r-s]+=c;}o.e1=sum;bool bad=false;for(int t=0;t<9;t++)if(o.load[t]>D)bad=true;if(!bad)op[r-3].push_back(o);return;}for(int x=0;x<=rem;x++){m[pos]=x;gen(r,pos+1,rem-x,m);}}
bool add(array<int,9>&a,const Opt&o){for(int t=0;t<9;t++){a[t]+=o.load[t];if(a[t]>D)return false;}return true;}
bool collision(int r,const Opt&o,int lam){for(int s=0;s<=r/2;s++)if(3*s*(r-s)==lam)return o.m[s]==0;return false;}
struct Key{int e1,e2;bool operator<(Key const&o)const{return tie(e1,e2)<tie(o.e1,o.e2);}};
int main(int argc,char**argv){if(argc!=3)return 2;q=stoi(argv[1]);D=2*q;for(int r=3;r<=8;r++){array<int,5>m{};int rem=q-((r==5||r==8)?1:0);gen(r,0,rem,m);cerr<<"row "<<r<<" opts "<<op[r-3].size()<<"\n";}
 map<int,vector<int>>idx7;map<Key,vector<int>>idx8;for(int i=0;i<(int)op[4].size();i++)idx7[op[4][i].e1].push_back(i);for(int i=0;i<(int)op[5].size();i++)idx8[{op[5][i].e1,op[5][i].e2}].push_back(i);
 ofstream out(argv[2]);long long tri=0,divrej=0,miss7=0,coll5=0,coll8=0,line=0,zr=0,gates=0;auto st=chrono::steady_clock::now();
 // Saturated rows 3,4,6 determine the common quadratic root sum.
 for(int i0=0;i0<(int)op[0].size();i0++){auto&a=op[0][i0];for(int i1=0;i1<(int)op[1].size();i1++){auto&b=op[1][i1];array<int,9>L{};if(!add(L,a)||!add(L,b))continue;for(int i3=0;i3<(int)op[3].size();i3++){auto&d=op[3][i3];auto L3=L;if(!add(L3,d))continue;tri++;
   int n5=d.e1+3*b.e1-a.e1,n8=8*a.e1-15*b.e1+10*d.e1;int S5=n5,S7=a.e1-2*b.e1+2*d.e1,S8=n8;auto it7=idx7.find(S7);if(it7==idx7.end()){miss7++;continue;}
   for(int i2=0;i2<(int)op[2].size();i2++){auto&c=op[2][i2];int lam5=S5-3*c.e1;if(collision(5,c,lam5)){coll5++;continue;}auto L4=L3;if(!add(L4,c)){line++;continue;}int E25=3*c.e2+lam5*c.e1;
    for(int i4:it7->second){auto&e=op[4][i4];auto L5=L4;if(!add(L5,e)){line++;continue;}int need=3*a.e2-15*b.e2+10*E25-30*d.e2+15*e.e2;
      for(const auto&kv:idx8){int full=3*kv.first.e2+S8*kv.first.e1-3*kv.first.e1*kv.first.e1;if(full!=need)continue;for(int i5:kv.second){auto&f=op[5][i5];int lam8=S8-3*f.e1;if(collision(8,f,lam8)){coll8++;continue;}auto L6=L5;if(!add(L6,f)){line++;continue;}int z=a.z+b.z+c.z+d.z+e.z+f.z;if(z<14){zr++;continue;}gates++;out<<q<<' '<<z<<' '<<lam5<<' '<<lam8;int ids[6]={i0,i1,i2,i3,i4,i5};for(int r=3;r<=8;r++){auto&o=op[r-3][ids[r-3]];for(int s=0;s<=r/2;s++)out<<' '<<o.m[s];}out<<'\n';}}
    }
   }
 }} }
 cerr<<"q "<<q<<" tri "<<tri<<" div "<<divrej<<" miss7 "<<miss7<<" coll5 "<<coll5<<" coll8 "<<coll8<<" line "<<line<<" z "<<zr<<" gates "<<gates<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-st).count()<<"\n";cout<<"RATIONAL_DOUBLE58_GATES q "<<q<<" gates "<<gates<<"\n";
}
