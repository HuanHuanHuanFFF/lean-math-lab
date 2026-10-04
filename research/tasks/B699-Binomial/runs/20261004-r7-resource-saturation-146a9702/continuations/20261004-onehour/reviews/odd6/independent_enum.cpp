#include <array>
#include <vector>
#include <fstream>
#include <iostream>
#include <chrono>
#include <algorithm>
using namespace std;
const int prime=65521, ncols=56;
using Vec=array<int,ncols>;
long long comb(int n,int k){if(k<0||k>n)return 0; long long r=1; for(int i=1;i<=k;i++)r=r*(n-i+1)/i;return r;}
int pw(int a,int n){long long z=1,y=a;for(;n;n>>=1,y=y*y%prime)if(n&1)z=z*y%prime;return z;}
int mod(long long v){v%=prime;return v<0?v+prime:v;}
struct Echelon{
 array<Vec,ncols> pivot{};int rank=0;
 void insert(Vec v){for(int k=0;k<ncols;k++){if(!v[k])continue;if(!pivot[k][k]){int inv=pw(v[k],prime-2);for(int j=k;j<ncols;j++)v[j]=(long long)v[j]*inv%prime;pivot[k]=v;rank++;return;}int scale=v[k];for(int j=k;j<ncols;j++)v[j]=mod(v[j]-(long long)scale*pivot[k][j]);}}
};
vector<pair<int,int>> mon;
int coeff(int a,int b,int r,int s,int i,int j){
 if(j>b)return 0;long long val=0;int sh=(2*s==r?s:0),v=s*(r-s);
 for(int h=0;h<=a;h++){
  int k=i-h;if(k<0||k>b-j)continue;
  long long c=comb(a,h)*pw(r,a-h)%prime;
  c=c*comb(b,j)%prime*comb(b-j,k)%prime;
  c=c*pw(sh,k)%prime*pw(v,b-j-k)%prime;val=(val+c)%prime;
 }return val;
}
struct Option{vector<int> mult;array<int,9> hit{};int z=0;vector<Vec> rows;};
array<vector<Option>,6> choices;
void partitions(int r,int pos,int left,vector<int>& m){
 if(pos+1<(int)m.size()){for(int v=left;v>=0;v--){m[pos]=v;partitions(r,pos+1,left-v,m);}return;}
 m[pos]=left;Option opt;opt.mult=m;Echelon local;
 for(int s=0;s<(int)m.size();s++){
  int d=m[s];if(!d)continue;opt.z++;bool center=2*s==r;
  if(center)opt.hit[s]+=2*d;else{opt.hit[s]+=d;opt.hit[r-s]+=d;}
  for(int j=0;j<=6;j++)for(int i=0;i<=13;i++)if(i+j<d||(center&&i+2*j<2*d)){
   Vec row{};for(int k=0;k<ncols;k++)row[k]=coeff(mon[k].first,mon[k].second,r,s,i,j);local.insert(row);
  }
 }
 for(auto &row:local.pivot)if(any_of(row.begin(),row.end(),[](int x){return x!=0;}))opt.rows.push_back(row);
 choices[r-3].push_back(move(opt));
}
uint64_t calls=0,line_cuts=0,rank_cuts=0,z_cuts=0,leaves=0;bool timeout=false;
auto start=chrono::steady_clock::now();ofstream residual;
void walk(int depth,int z,array<int,9> hit,Echelon space,vector<int>& selected){
 ++calls;if(calls%512==0&&chrono::duration<double>(chrono::steady_clock::now()-start).count()>180){timeout=true;return;}
 int possible=0;for(int k=depth;k<6;k++)possible+=k/2+2; // row r=k+3 has floor(r/2)+1 sources; exact formula below
 possible=0;for(int k=depth;k<6;k++)possible+=(k+3)/2+1;
 if(z+possible<14){z_cuts++;return;}
 if(depth==6){leaves++;residual<<space.rank<<' '<<z;for(int k=0;k<6;k++){residual<<" |";for(int v:choices[k][selected[k]].mult)residual<<' '<<v;}residual<<'\n';return;}
 for(int o=0;o<(int)choices[depth].size();o++){
  auto &opt=choices[depth][o];auto next=hit;bool fail=false;for(int k=0;k<9;k++){next[k]+=opt.hit[k];if(next[k]>13)fail=true;}if(fail){line_cuts++;continue;}
  Echelon ns=space;for(auto &row:opt.rows){ns.insert(row);if(ns.rank==ncols)break;}if(ns.rank==ncols){rank_cuts++;continue;}
  selected.push_back(o);walk(depth+1,z+opt.z,next,ns,selected);selected.pop_back();if(timeout)return;
 }
}
int main(int argc,char**argv){if(argc!=2)return 2;residual.open(argv[1]);if(!residual)return 3;
 for(int b=0;b<=6;b++)for(int a=0;a+2*b<=13;a++)mon.push_back({a,b});if(mon.size()!=ncols)return 4;
 for(int r=3;r<=8;r++){vector<int> v(r/2+1);partitions(r,0,6,v);cout<<"r="<<r<<" options="<<choices[r-3].size()<<'\n';}
 vector<int> sel;walk(0,0,{},Echelon{},sel);cout<<"prime="<<prime<<" calls="<<calls<<" line_cuts="<<line_cuts<<" rank_cuts="<<rank_cuts<<" z_cuts="<<z_cuts<<" residual="<<leaves<<" timeout="<<timeout<<" seconds="<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<'\n';return timeout?5:0;
}
