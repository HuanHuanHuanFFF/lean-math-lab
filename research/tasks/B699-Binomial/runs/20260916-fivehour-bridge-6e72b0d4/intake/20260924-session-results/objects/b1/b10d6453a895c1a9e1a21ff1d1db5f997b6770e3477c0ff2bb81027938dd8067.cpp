#include <bits/stdc++.h>
using namespace std;
struct Opt{array<int,5>m{};array<int,9>load{};int S=0,T=0,z=0,g=0;};
int q,D;vector<Opt>op[6];
void gen(int r,int pos,int rem,array<int,5>&m){
 int k=r/2+1;
 if(pos<k-1){for(int x=0;x<=rem;x++){m[pos]=x;gen(r,pos+1,rem-x,m);}return;}
 m[pos]=rem;Opt a;a.m=m;
 for(int s=0;s<k;s++){int n=m[s],v=s*(r-s);a.z+=n>0;a.T+=a.S*n*v+n*(n-1)/2*v*v;a.S+=n*v;a.g+=n*(n-1)/2;a.load[s]+=n;a.load[r-s]+=n;}
 if(r%2==0)a.g+=m[r/2]*(m[r/2]-1)/2;
 for(int t=0;t<9;t++)if(a.load[t]>D)return;
 op[r-3].push_back(a);
}
bool add(array<int,9>&a,const Opt&b){for(int t=0;t<9;t++){a[t]+=b.load[t];if(a[t]>D)return false;}return true;}
int main(int argc,char**argv){if(argc!=3)return 2;q=stoi(argv[1]);D=2*q;
 for(int r=3;r<=8;r++){array<int,5>m{};gen(r,0,q-(r==3),m);}
 map<int,vector<int>> by7;map<pair<int,int>,vector<int>>by8;
 for(int i=0;i<(int)op[4].size();i++)by7[op[4][i].S].push_back(i);
 for(int i=0;i<(int)op[5].size();i++)by8[{op[5][i].S,op[5][i].T}].push_back(i);
 ofstream out(argv[2]);long long triples=0,gates=0,matches=0;
 auto start=chrono::steady_clock::now();
 for(auto&b:op[1])for(auto&c:op[2]){array<int,9>l{};if(!add(l,b)||!add(l,c))continue;
  for(auto&d:op[3]){auto ll=l;if(!add(ll,d))continue;int g=b.g+c.g+d.g;if(g>(q-1)*(q-1))continue;triples++;
   int S3=3*b.S-3*c.S+d.S,S7=b.S-3*c.S+3*d.S,S8=3*b.S-8*c.S+6*d.S;
   auto it7=by7.find(S7);if(it7==by7.end())continue;
   for(auto&a:op[0]){auto la=ll;if(!add(la,a))continue;int lam=S3-a.S;if((lam==0&&!a.m[0])||(lam==2&&!a.m[1]))continue;
    int base=a.T+lam*a.S-5*b.T+10*c.T-10*d.T;
    for(int ii:it7->second){auto&e=op[4][ii];auto le=la;if(!add(le,e))continue;int gg=g+a.g+e.g;if(gg>(q-1)*(q-1))continue;
     auto it8=by8.find({S8,base+5*e.T});if(it8==by8.end())continue;
     for(int jj:it8->second){auto&f=op[5][jj];auto lf=le;if(!add(lf,f))continue;matches++;
      int z=a.z+b.z+c.z+d.z+e.z+f.z;if(z<14||gg+f.g>(q-1)*(q-1))continue;
      const Opt* rows[6]={&a,&b,&c,&d,&e,&f};out<<q<<' '<<z<<' '<<lam<<' '<<gg+f.g;
      for(int i=0;i<6;i++)for(int s=0;s<=(i+3)/2;s++)out<<' '<<rows[i]->m[s];out<<'\n';gates++;
     }
    }
   }
  }
 }
 cout<<"NEAR3 q "<<q<<" triples "<<triples<<" matches "<<matches<<" gates "<<gates<<" seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";
}
