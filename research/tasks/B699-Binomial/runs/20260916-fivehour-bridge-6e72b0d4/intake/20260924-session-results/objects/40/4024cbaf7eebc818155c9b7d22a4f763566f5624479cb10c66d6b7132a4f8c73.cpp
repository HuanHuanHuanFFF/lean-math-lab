#include <bits/stdc++.h>
using namespace std;
#ifndef MODULUS
#define MODULUS 32749
#endif
const int P=MODULUS;
int mod(long long x){x%=P;if(x<0)x+=P;return (int)x;}
int mul(int a,int b){return (long long)a*b%P;}
int pw(int a,int e){int r=1;while(e){if(e&1)r=mul(r,a);a=mul(a,a);e>>=1;}return r;}
int Cb[16][16],Pow[16][16];
vector<pair<int,int>> mons;

int basis_coeff(int a,int b,int r,int v,int shear,int i,int j){
 if(j>b)return 0;int out=0;
 for(int z=0;z<=b-j;z++) if(i>=z && i-z<=a){
  int term=mul(Cb[b][j],mul(Cb[b-j][z],mul(Pow[v][b-j-z],mul(Pow[shear][z],mul(Cb[a][i-z],Pow[r][a-i+z])))));
  out=mod(out+term);
 }
 return out;
}
struct Basis{
 array<array<int,20>,20> row{}; array<char,20> used{}; int rank=0;
 bool add(array<int,20> x){
  for(int c=0;c<20;c++) if(x[c]){
   if(!used[c]){int inv=pw(x[c],P-2);for(int k=c;k<20;k++)x[k]=mul(x[k],inv);row[c]=x;used[c]=1;rank++;return true;}
   int z=x[c];for(int k=c;k<20;k++)x[k]=mod(x[k]-(long long)z*row[c][k]);
  }return false;
 }
};
struct Opt{vector<int> m;array<int,9> load{};int z=0;vector<array<int,20>> eq;};
vector<Opt> opts[6];

void make_comps(int r,int pos,int rem,vector<int>&m){
 int k=r/2+1;
 if(pos==k-1){m[pos]=rem;Opt o;o.m=m;
  for(int s=0;s<k;s++){int mm=m[s];if(mm){o.z++;o.load[s]+=mm;o.load[r-s]+=mm;int v=s*(r-s);bool diag=(2*s==r);if(diag){for(int w=0;w<2*mm;w++)for(int j=0;2*j<=w;j++){int i=w-2*j;array<int,20>x{};for(int c=0;c<20;c++)x[c]=basis_coeff(mons[c].first,mons[c].second,r,v,s,i,j);o.eq.push_back(x);}}else{for(int t=0;t<mm;t++)for(int j=0;j<=t;j++){int i=t-j;array<int,20>x{};for(int c=0;c<20;c++)x[c]=basis_coeff(mons[c].first,mons[c].second,r,v,0,i,j);o.eq.push_back(x);}}}}
  bool bad=false;for(int t=0;t<9;t++)if(o.load[t]>7)bad=true;if(!bad)opts[r-3].push_back(move(o));return;
 }
 for(int x=0;x<=rem;x++){m[pos]=x;make_comps(r,pos+1,rem-x,m);}
}

long long leaves=0, lineprune=0,zprune=0,fullrank=0,residual=0;
ofstream out;
void dfs(int ri,array<int,9> load,int z,Basis B,vector<int>&choice){
 if(ri==6){leaves++;if(z<14){zprune++;return;}if(B.rank==20){fullrank++;return;}residual++;out<<B.rank<<' '<<z;for(int q:choice)out<<' '<<q;out<<'\n';return;}
 int remainMax=0;for(int j=ri;j<6;j++)remainMax += min(3,(j+3)/2+1); // crude max z each row <= min(3,#sources)
 if(z+remainMax<14){zprune++;return;}
 for(int oi=0;oi<(int)opts[ri].size();oi++){
  auto&o=opts[ri][oi];auto L=load;bool bad=false;for(int t=0;t<9;t++){L[t]+=o.load[t];if(L[t]>7){bad=true;break;}}if(bad){lineprune++;continue;}
  Basis B2=B;for(auto x:o.eq)B2.add(x);if(B2.rank==20){ // further rows cannot restore nonzero kernel
    fullrank++; continue;
  }
  choice.push_back(oi);dfs(ri+1,L,z+o.z,B2,choice);choice.pop_back();
 }
}
int main(int argc,char**argv){if(argc!=2){cerr<<"out\n";return 2;}for(int n=0;n<16;n++){Cb[n][0]=Cb[n][n]=1;for(int k=1;k<n;k++)Cb[n][k]=mod(Cb[n-1][k-1]+Cb[n-1][k]);}for(int a=0;a<16;a++){Pow[a][0]=1;for(int b=1;b<16;b++)Pow[a][b]=mul(Pow[a][b-1],a);}
 for(int b=3;b>=0;b--)for(int a=7-2*b;a>=0;a--)mons.push_back({a,b});
 cerr<<"mons "<<mons.size()<<"\n";for(int r=3;r<=8;r++){vector<int>m(r/2+1);make_comps(r,0,3,m);cerr<<"row "<<r<<" opts "<<opts[r-3].size()<<"\n";}
 out.open(argv[1]);vector<int>choice;Basis B;dfs(0,{},0,B,choice);cerr<<"leaves "<<leaves<<" lineprune "<<lineprune<<" zprune "<<zprune<<" fullrank "<<fullrank<<" residual "<<residual<<"\n";
}
