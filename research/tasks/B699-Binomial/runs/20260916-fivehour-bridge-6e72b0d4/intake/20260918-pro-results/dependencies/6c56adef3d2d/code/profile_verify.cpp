// Second implementation: row-state DFS, a different prime/monomial ordering,
// and streaming row-echelon insertion. This is a finite coefficient-space check.
#include <array>
#include <vector>
#include <string>
#include <fstream>
#include <iostream>
#include <algorithm>
#include <chrono>
#include <cstdint>
using Z=std::int64_t;
constexpr Z p=1000033;
Z modpow(Z a,Z b){Z r=1;while(b){if(b&1)r=r*a%p;a=a*a%p;b/=2;}return r;}
struct State{unsigned h,s;int nh,ns;};
struct Point{int n,x;};
std::vector<Point> points;
std::array<std::vector<int>,6> rowids;
std::array<std::vector<State>,6> choices;
std::vector<std::pair<int,int>> exponents;
Z vals[21][3][25];
long long total=0,deficient=0;int dimension,target;std::ofstream output;
int bitcount(unsigned n){int r=0;while(n){r+=n&1;n>>=1;}return r;}
int rank_of(unsigned h,unsigned s){
 Z basis[25][25]={};bool used[25]={};int rank=0;
 for(int index=20;index>=0;--index)if(h>>index&1){
  const int types=(s>>index&1)?3:1;
  for(int type=0;type<types;++type){Z row[25]={};std::copy_n(vals[index][type],dimension,row);
   for(int column=dimension-1;column>=0;--column){
    if(!row[column])continue;
    if(used[column]){
     Z factor=row[column];for(int c=0;c<=column;++c)row[c]=(row[c]-factor*basis[column][c]%p+p)%p;
    }else{
     Z inverse=modpow(row[column],p-2);for(int c=0;c<=column;++c)basis[column][c]=row[c]*inverse%p;
     used[column]=true;++rank;break;
    }
   }
   if(rank==dimension)return rank;
  }
 }
 return rank;
}
void enumerate(int r,int nh,int ns,unsigned h,unsigned s){
 if(nh>13||ns>target)return;
 if(nh+(6-r)>13||nh+3*(6-r)<13)return;
 if(ns+2*(6-r)<target)return;
 if(r==6){if(nh!=13||ns!=target)return;int rank=rank_of(h,s);++total;
  if(rank<dimension){++deficient;output<<h<<" "<<s<<" "<<rank<<"\n";}return;}
 for(const State& state:choices[r])enumerate(r+1,nh+state.nh,ns+state.ns,h|state.h,s|state.s);
}
int main(int argc,char** argv){
 if(argc!=3){std::cerr<<"usage: profile_verify cubic|quartic output_path\n";return 2;}
 if(std::string(argv[1])!="cubic" && std::string(argv[1])!="quartic"){std::cerr<<"invalid mode\n";return 2;}
 const bool cubic=std::string(argv[1])=="cubic";int degree=cubic?6:8;target=cubic?4:9;
 output.open(argv[2]);if(!output)return 2;
 for(int n=3;n<=8;++n)for(int a=0;2*a<=n;++a){int id=points.size();points.push_back({n,a*(n-a)});rowids[n-3].push_back(id);}
 for(int a=0;a<=degree;++a)for(int b=0;a+2*b<=degree;++b)exponents.push_back({a,b});dimension=exponents.size();
 for(int id=0;id<21;++id){int n=points[id].n,x=points[id].x;
  for(int c=0;c<dimension;++c){auto [a,b]=exponents[c];
   vals[id][0][c]=modpow(n,a)*modpow(x,b)%p;
   vals[id][1][c]=a?a*modpow(n,a-1)%p*modpow(x,b)%p:0;
   vals[id][2][c]=b?b*modpow(n,a)%p*modpow(x,b-1)%p:0;
  }
 }
 for(int r=0;r<6;++r){int m=rowids[r].size();
  for(unsigned mask=1;mask<(1u<<m);++mask)for(unsigned singular=mask;;singular=(singular-1)&mask){
   int h=bitcount(mask),s=bitcount(singular);bool accept;
   if(cubic)accept=h+s<=3 && s<=1;
   else accept=(h==3&&s==0)||(h==2&&s==1)||(h==2&&s==2);
   if(accept){unsigned hh=0,ss=0;for(int j=0;j<m;++j){if(mask>>j&1)hh|=1u<<rowids[r][j];if(singular>>j&1)ss|=1u<<rowids[r][j];}choices[r].push_back({hh,ss,h,s});}
   if(singular==0)break;
  }
 }
 auto start=std::chrono::steady_clock::now();enumerate(0,0,0,0,0);
 std::cout<<"kind="<<argv[1]<<" total="<<total<<" deficient="<<deficient<<" prime="<<p<<" seconds="<<std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count()<<"\n";
 return 0;
}
