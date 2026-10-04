#include <algorithm>
#include <array>
#include <fstream>
#include <iostream>
#include <vector>
using namespace std;
// Independent q=3,D=7 ordinary/weighted jet enumerator. The six minimal
// cost upper profiles retain smaller costs, so result is a safe superset.
constexpr int P=32749,K=20;
int norm(long long x){x%=P;return x<0?x+P:x;}
int power(int a,int e){int v=1;while(e){if(e&1)v=(long long)v*a%P;a=(long long)a*a%P;e>>=1;}return v;}
long long choose(int n,int k){if(k<0||k>n)return 0;long long c=1;for(int j=1;j<=k;j++)c=c*(n-j+1)/j;return c;}
vector<pair<int,int>> mons;
int jet(int a,int b,int r,int v,int shear,int i,int j){
 if(j>b)return 0;long long ans=0;
 for(int t=0;t<=b-j;t++)if(i>=t && i-t<=a){
  long long x=choose(b,j)*choose(b-j,t)%P;
  x=x*power(v,b-j-t)%P*power(shear,t)%P;
  x=x*choose(a,i-t)%P*power(r,a-i+t)%P;ans=(ans+x)%P;
 }return (int)ans;
}
struct Basis{array<array<int,K>,K> rows{};array<bool,K> used{};int rank=0;
 void add(array<int,K> x){for(int c=0;c<K;c++)if(x[c]){if(!used[c]){int iv=power(x[c],P-2);for(int k=c;k<K;k++)x[k]=(long long)x[k]*iv%P;rows[c]=x;used[c]=true;rank++;return;}int f=x[c];for(int k=c;k<K;k++)x[k]=norm(x[k]-(long long)f*rows[c][k]);}}
};
struct Row{vector<int> m;int kappa=0,z=0;array<int,9> load{};vector<array<int,K>> eq;};
vector<Row> opts[6];
void compose(int r,int pos,int rem,vector<int>&m,int kp){
 if(pos+1<(int)m.size()){for(int t=0;t<=rem;t++){m[pos]=t;compose(r,pos+1,rem-t,m,kp);}return;}
 m[pos]=rem;Row o;o.m=m;o.kappa=kp;
 if(r%2==0 && kp>m.back())return;
 for(int s=0;s<(int)m.size();s++){
  int mm=m[s];if(!mm)continue;o.z++;bool diag=2*s==r;int w=diag?2*mm-kp:0;
  if(diag)o.load[s]+=w;else {o.load[s]+=mm;o.load[r-s]+=mm;}
  for(int i=0;i<8;i++)for(int j=0;j<4;j++)if(i+j<mm || (diag && i+2*j<w)){
   array<int,K>x{};for(int c=0;c<K;c++)x[c]=jet(mons[c].first,mons[c].second,r,s*(r-s),diag?s:0,i,j);o.eq.push_back(x);
  }
 }
 if(*max_element(o.load.begin(),o.load.end())<=7)opts[r-3].push_back(move(o));
}
long long nodes=0,line_reject=0,z_reject=0,rank_reject=0,residual=0;ofstream fout;int profile;
void dfs(int row,int z,array<int,9> loads,Basis b,vector<int>&idx){
 nodes++;
 if(row==6){if(z<14){z_reject++;return;}residual++;fout<<profile<<' '<<b.rank<<' '<<z;
  for(int r=0;r<6;r++){auto&o=opts[r][idx[r]];fout<<" | "<<o.kappa;for(int m:o.m)fout<<' '<<m;}fout<<'\n';return;}
 int zmax=0;for(int r=row;r<6;r++){int v=0;for(auto&o:opts[r])v=max(v,o.z);zmax+=v;}
 if(z+zmax<14){z_reject++;return;}
 for(int j=0;j<(int)opts[row].size();j++){
  auto&o=opts[row][j];auto L=loads;bool bad=false;for(int t=0;t<9;t++){L[t]+=o.load[t];if(L[t]>7){bad=true;break;}}if(bad){line_reject++;continue;}
  auto B=b;for(auto&eq:o.eq){B.add(eq);if(B.rank==K)break;}if(B.rank==K){rank_reject++;continue;}
  idx.push_back(j);dfs(row+1,z+o.z,L,B,idx);idx.pop_back();
 }
}
int main(int argc,char**argv){if(argc!=3)return 2;profile=stoi(argv[1]);fout.open(argv[2]);if(!fout)return 3;
 for(int b=3;b>=0;b--)for(int a=7-2*b;a>=0;a--)mons.push_back({a,b});if(mons.size()!=K)return 4;
 for(int r=3;r<=8;r++){
  vector<int>m(r/2+1);compose(r,0,3,m,0);
  if(profile==r){if(r%2)compose(r,0,2,m,0);else compose(r,0,3,m,1);}
 }
 vector<int>idx;dfs(0,0,{},Basis{},idx);
 cout<<"profile="<<profile<<" modulus="<<P<<" nodes="<<nodes<<" line_reject="<<line_reject<<" z_reject="<<z_reject<<" rank_reject="<<rank_reject<<" residual="<<residual<<'\n';
}
