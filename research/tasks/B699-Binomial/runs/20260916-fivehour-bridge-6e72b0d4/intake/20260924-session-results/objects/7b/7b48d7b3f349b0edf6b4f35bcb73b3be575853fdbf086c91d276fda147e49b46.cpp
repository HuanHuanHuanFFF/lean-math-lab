#include <bits/stdc++.h>
using namespace std;
struct Opt{
  array<int,5> m{}; array<int,9> load{}; int e1=0,e2=0,z=0;
};
int q,D; vector<Opt> op[6];
void gen(int r,int pos,int rem,array<int,5>&m){
  int k=r/2+1;
  if(pos==k-1){
    m[pos]=rem; Opt o; o.m=m; int sum=0;
    for(int s=0;s<k;s++){
      int c=m[s],v=s*(r-s); if(c)o.z++;
      o.e2 += sum*c*v + c*(c-1)/2*v*v; // add pairs with previous roots and internal pairs
      sum += c*v;
      o.load[s]+=c; o.load[r-s]+=c; // diagonal gets 2c: kappa=0 line load
    }
    o.e1=sum;
    bool bad=false; for(int t=0;t<9;t++)if(o.load[t]>D)bad=true;
    if(!bad)op[r-3].push_back(o);
    return;
  }
  for(int x=0;x<=rem;x++){m[pos]=x;gen(r,pos+1,rem-x,m);}  
}
bool addload(array<int,9>&a,const Opt&o){for(int t=0;t<9;t++){a[t]+=o.load[t];if(a[t]>D)return false;}return true;}
bool new_source_collision(int r,const Opt&o,int lam){
  int k=r/2+1; for(int s=0;s<k;s++)if(s*(r-s)==lam)return o.m[s]==0; return false;
}
struct Key{int s,e2; bool operator<(Key const&o)const{return tie(s,e2)<tie(o.s,o.e2);} };
int main(int argc,char**argv){
 if(argc!=3){cerr<<"usage q out\n";return 2;} q=stoi(argv[1]); D=2*q;
 for(int r=3;r<=8;r++){array<int,5>m{};int rem=q-((r==6||r==7)?1:0);gen(r,0,rem,m);cerr<<"row "<<r<<" opts "<<op[r-3].size()<<"\n";}
 map<int,vector<int>> sum8; map<Key,vector<int>> key8;
 for(int i=0;i<(int)op[5].size();i++){sum8[op[5][i].e1].push_back(i);key8[{op[5][i].e1,op[5][i].e2}].push_back(i);} 
 ofstream out(argv[2]); if(!out)throw runtime_error("out");
 long long triples=0,miss8=0,l6c=0,l7c=0,e2miss=0,line=0,zrej=0,gates=0;
 auto st=chrono::steady_clock::now();
 for(int i0=0;i0<(int)op[0].size();i0++){
  auto&a=op[0][i0];
  for(int i1=0;i1<(int)op[1].size();i1++){
   auto&b=op[1][i1];array<int,9>L{};if(!addload(L,a)||!addload(L,b))continue;
   for(int i2=0;i2<(int)op[2].size();i2++){
    auto&c=op[2][i2];auto L3=L;if(!addload(L3,c))continue;triples++;
    int S[6]={a.e1,b.e1,c.e1,3*c.e1-3*b.e1+a.e1,6*c.e1-8*b.e1+3*a.e1,10*c.e1-15*b.e1+6*a.e1};
    if(!sum8.count(S[5])){miss8++;continue;}
    int base=-a.e2+5*b.e2-10*c.e2;
    for(int i3=0;i3<(int)op[3].size();i3++){
      auto&d=op[3][i3];auto L4=L3;if(!addload(L4,d)){line++;continue;}
      int lam6=S[3]-d.e1;if(new_source_collision(6,d,lam6)){l6c++;continue;}
      int E26=d.e2+lam6*d.e1;
      for(int i4=0;i4<(int)op[4].size();i4++){
        auto&e=op[4][i4];auto L5=L4;if(!addload(L5,e)){line++;continue;}
        int lam7=S[4]-e.e1;if(new_source_collision(7,e,lam7)){l7c++;continue;}
        int E27=e.e2+lam7*e.e1;
        int need=-(base+10*E26-5*E27);
        auto it=key8.find({S[5],need});if(it==key8.end()){e2miss++;continue;}
        for(int i5:it->second){auto&f=op[5][i5];auto L6=L5;if(!addload(L6,f)){line++;continue;}
          int z=a.z+b.z+c.z+d.z+e.z+f.z;if(z<14){zrej++;continue;}
          gates++;
          out<<q<<' '<<z<<' '<<lam6<<' '<<lam7;
          int ids[6]={i0,i1,i2,i3,i4,i5};
          for(int r=3;r<=8;r++){auto&o=op[r-3][ids[r-3]];for(int s=0;s<=r/2;s++)out<<' '<<o.m[s];}
          out<<'\n';
        }
      }
    }
   }
  }
 }
 cerr<<"q "<<q<<" triples "<<triples<<" miss8 "<<miss8<<" coll6 "<<l6c<<" coll7 "<<l7c<<" e2miss "<<e2miss<<" line "<<line<<" z "<<zrej<<" gates "<<gates<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-st).count()<<"\n";
 cout<<"DOUBLE67_GATES q "<<q<<" gates "<<gates<<"\n";
}
