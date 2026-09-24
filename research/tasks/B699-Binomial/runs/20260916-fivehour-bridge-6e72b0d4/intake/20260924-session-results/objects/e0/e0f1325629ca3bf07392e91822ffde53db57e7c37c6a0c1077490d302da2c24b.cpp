#include <bits/stdc++.h>
using namespace std;
struct Opt{array<int,5>m{};array<int,9>load{};int S=0,T=0,z=0,g=0;};
int q,D,missing;
#ifndef ANCHOR_ROW
#define ANCHOR_ROW 6
#endif
static constexpr int anchor=ANCHOR_ROW, middle=13-ANCHOR_ROW;vector<Opt>op[6];
void gen(int r,int pos,int rem,array<int,5>&m){
 int k=r/2+1;if(pos<k-1){for(int x=0;x<=rem;x++){m[pos]=x;gen(r,pos+1,rem-x,m);}return;}
 m[pos]=rem;Opt a;a.m=m;
 for(int s=0;s<k;s++){int n=m[s],v=s*(r-s);a.z+=n>0;a.T+=a.S*n*v+n*(n-1)/2*v*v;a.S+=n*v;a.g+=n*(n-1)/2;a.load[s]+=n;a.load[r-s]+=n;}
 if(r%2==0)a.g+=m[r/2]*(m[r/2]-1)/2;
 for(int t=0;t<9;t++)if(a.load[t]>D)return;op[r-3].push_back(a);
}
bool add(array<int,9>&a,const Opt&b){for(int t=0;t<9;t++){a[t]+=b.load[t];if(a[t]>D)return false;}return true;}
int main(int argc,char**argv){if(argc!=4)throw runtime_error("q missing output");q=stoi(argv[1]);missing=stoi(argv[2]);if(missing!=3)throw runtime_error("missing");D=2*q;
 for(int r=3;r<=8;r++){array<int,5>m{};gen(r,0,q-(r==missing),m);}
 map<int,vector<int>>by7;map<pair<int,int>,vector<int>>by8;
 for(int i=0;i<(int)op[middle-3].size();i++)by7[op[middle-3][i].S].push_back(i);
 for(int i=0;i<(int)op[5].size();i++)by8[{op[5][i].S,op[5][i].T}].push_back(i);
 int first=4,other=5;int ar[3]={first,other,anchor}; // all these rows are saturated
 ofstream out(argv[3]);long long triples=0,gates=0,matches=0;auto start=chrono::steady_clock::now();
 for(auto&a:op[first-3])for(auto&b:op[other-3]){array<int,9>l{};if(!add(l,a)||!add(l,b))continue;
  for(auto&d:op[anchor-3]){auto ll=l;if(!add(ll,d))continue;int g=a.g+b.g+d.g;if(g>(q-1)*(q-1))continue;triples++;
   int av[3]={a.S,b.S,d.S};array<int,6>S{};bool good=true;
   for(int r=3;r<=8;r++){int scaled=0; // 24 clears every anchor Lagrange denominator
    for(int t=0;t<3;t++){int num=24*av[t],den=1;for(int k=0;k<3;k++)if(t!=k){num*=r-ar[k];den*=ar[t]-ar[k];}if(num%den)throw runtime_error("denom");scaled+=num/den;}
    if(scaled%24){good=false;break;}S[r-3]=scaled/24;
   }
   if(!good)continue;auto it7=by7.find(S[middle-3]);if(it7==by7.end())continue;
   for(auto&c:op[missing-3]){auto la=ll;if(!add(la,c))continue;int lam=S[missing-3]-c.S;bool collision=false;for(int s=0;s<=missing/2;s++)if(lam==s*(missing-s)&&!c.m[s])collision=true;if(collision)continue;
    const Opt* rr[6]={};rr[first-3]=&a;rr[other-3]=&b;rr[missing-3]=&c;rr[anchor-3]=&d;
    
    for(int ii:it7->second){auto&e=op[middle-3][ii];rr[middle-3]=&e;auto le=la;if(!add(le,e))continue;int gg=g+c.g+e.g;if(gg>(q-1)*(q-1))continue;
     int base=0,signs[5]={1,-5,10,-10,5};for(int i=0;i<5;i++)base+=signs[i]*(rr[i]->T+((i+3==missing)?lam*rr[i]->S:0));
     auto it8=by8.find({S[5],base});if(it8==by8.end())continue;
     for(int jj:it8->second){auto&f=op[5][jj];auto lf=le;if(!add(lf,f))continue;matches++;
      int z=a.z+b.z+c.z+d.z+e.z+f.z;if(z<14||gg+f.g>(q-1)*(q-1))continue;rr[5]=&f;
      out<<q<<' '<<z<<' '<<lam<<' '<<gg+f.g;for(int i=0;i<6;i++)for(int s=0;s<=(i+3)/2;s++)out<<' '<<rr[i]->m[s];out<<'\n';gates++;
     }
    }
   }
  }
 }
 cout<<"EARLY_NEAR q "<<q<<" missing "<<missing<<" triples "<<triples<<" matches "<<matches<<" gates "<<gates<<" seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";
}
