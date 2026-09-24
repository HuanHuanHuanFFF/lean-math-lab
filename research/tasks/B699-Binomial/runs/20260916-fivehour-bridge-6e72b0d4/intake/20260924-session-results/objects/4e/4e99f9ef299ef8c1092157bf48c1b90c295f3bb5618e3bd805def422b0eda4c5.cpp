#include <bits/stdc++.h>
using namespace std;struct Opt{array<int,5>m{};array<int,9>load{};int e1=0,e2=0,z=0;};int q,D;vector<Opt>op[6];
void gen(int r,int pos,int rem,array<int,5>&m){int k=r/2+1;if(pos==k-1){m[pos]=rem;Opt o;o.m=m;int sum=0;for(int s=0;s<k;s++){int c=m[s],v=s*(r-s);if(c)o.z++;o.e2+=sum*c*v+c*(c-1)/2*v*v;sum+=c*v;o.load[s]+=c;o.load[r-s]+=c;}o.e1=sum;bool bad=0;for(int t=0;t<9;t++)if(o.load[t]>D)bad=1;if(!bad)op[r-3].push_back(o);return;}for(int x=0;x<=rem;x++){m[pos]=x;gen(r,pos+1,rem-x,m);}}
bool add(array<int,9>&a,const Opt&o){for(int t=0;t<9;t++){a[t]+=o.load[t];if(a[t]>D)return false;}return true;}
bool newcol2(const Opt&o,int A,long long Pnum){int r=6;for(int s=0;s<=r/2;s++)if(o.m[s]==0){long long v=s*(r-s);if(10*v*v-10LL*A*v+Pnum==0)return true;}return false;}
struct Key{int e1,e2;bool operator<(Key const&o)const{return tie(e1,e2)<tie(o.e1,o.e2);}};
int main(int argc,char**argv){if(argc!=3)return 2;q=stoi(argv[1]);D=2*q;for(int r=3;r<=8;r++){array<int,5>m{};int rem=q-(r==6?2:0);gen(r,0,rem,m);cerr<<"row "<<r<<" opts "<<op[r-3].size()<<"\n";}
 map<int,vector<int>>idx7;map<Key,vector<int>>idx8;for(int i=0;i<(int)op[4].size();i++)idx7[op[4][i].e1].push_back(i);for(int i=0;i<(int)op[5].size();i++)idx8[{op[5][i].e1,op[5][i].e2}].push_back(i);
 ofstream out(argv[2]);long long tri=0,miss7=0,miss8=0,den=0,coll=0,line=0,zr=0,gates=0;auto st=chrono::steady_clock::now();
 for(int i0=0;i0<(int)op[0].size();i0++){auto&a=op[0][i0];for(int i1=0;i1<(int)op[1].size();i1++){auto&b=op[1][i1];array<int,9>L{};if(!add(L,a)||!add(L,b))continue;for(int i2=0;i2<(int)op[2].size();i2++){auto&c=op[2][i2];auto L3=L;if(!add(L3,c))continue;tri++;int S6=3*c.e1-3*b.e1+a.e1,S7=6*c.e1-8*b.e1+3*a.e1,S8=10*c.e1-15*b.e1+6*a.e1;auto it7=idx7.find(S7);if(it7==idx7.end()){miss7++;continue;}
  for(int i4:it7->second){auto&e=op[4][i4];auto L5=L3;if(!add(L5,e)){line++;continue;}for(auto &kv:idx8){if(kv.first.e1!=S8)continue;for(int i5:kv.second){auto&f=op[5][i5];auto L58=L5;if(!add(L58,f)){line++;continue;}long long E26num=(long long)a.e2-5LL*b.e2+10LL*c.e2+5LL*e.e2-f.e2;
    for(int i3=0;i3<(int)op[3].size();i3++){auto&d=op[3][i3];auto L6=L58;if(!add(L6,d)){line++;continue;}int A=S6-d.e1;long long Pnum=E26num-10LL*d.e2-10LL*d.e1*A;if(newcol2(d,A,Pnum)){coll++;continue;}int z=a.z+b.z+c.z+d.z+e.z+f.z;if(z<14){zr++;continue;}gates++;out<<q<<' '<<z<<' '<<A<<' '<<Pnum;int ids[6]={i0,i1,i2,i3,i4,i5};for(int r=3;r<=8;r++){auto&o=op[r-3][ids[r-3]];for(int s=0;s<=r/2;s++)out<<' '<<o.m[s];}out<<'\n';}
  }}}
 }}}
 cerr<<"q "<<q<<" tri "<<tri<<" miss7 "<<miss7<<" line "<<line<<" coll "<<coll<<" z "<<zr<<" gates "<<gates<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-st).count()<<"\n";cout<<"DOUBLE_C_GATES q "<<q<<" gates "<<gates<<"\n";}
