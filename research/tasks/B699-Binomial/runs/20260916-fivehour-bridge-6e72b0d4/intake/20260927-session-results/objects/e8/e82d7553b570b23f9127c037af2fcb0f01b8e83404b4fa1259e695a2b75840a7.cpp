// Independent all-raw-signature capacity DP versus exact-used convolution
// plus coordinate prefix minima. Compare EVERY cell, not only terminal values.
// Inputs: raw signatures; queries sid,h,C[6]; summary output; all-cell output.
#include <array>
#include <vector>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <set>
using namespace std;
constexpr int INF=1000000;
struct Item{int e;array<int,6> c;};
int main(int argc,char**argv){
 if(argc!=5)throw runtime_error("signatures queries summary full_cells");
 ifstream in(argv[1]),qs(argv[2]);ofstream out(argv[3]),cells(argv[4]);
 if(!in||!qs||!out||!cells)throw runtime_error("file open");
 vector<Item> raw;Item a;while(in>>a.e){if(a.e<4)throw runtime_error("degree");for(int &x:a.c)if(!(in>>x)||x<0)throw runtime_error("cost");raw.push_back(a);}
 cells<<"state n c3 c4 c5 c6 c7 c8 minimum\n";out<<"state h minimum gridsize compared_cells active_raw unique_types\n";
 int sid,h;array<int,6>C;long long compared=0;int queries=0;
 while(qs>>sid>>h){for(int&x:C)if(!(qs>>x)||x<0)throw runtime_error("bad query");
  array<int,6>stride;int grid=1;for(int j=5;j>=0;j--){stride[j]=grid;grid*=C[j]+1;}
  vector<array<int,6>>coords(grid);for(int i=0;i<grid;i++)for(int j=0;j<6;j++)coords[i][j]=(i/stride[j])%(C[j]+1);
  vector<Item> fit;set<array<int,7>>uniq;
  for(auto x:raw){bool good=true;for(int j=0;j<6;j++)if(x.c[j]>C[j])good=false;if(good){fit.push_back(x);array<int,7>k;k[0]=x.e;copy(x.c.begin(),x.c.end(),k.begin()+1);uniq.insert(k);}}
  vector<Item> exact_items;for(auto k:uniq){Item x;x.e=k[0];copy(k.begin()+1,k.end(),x.c.begin());exact_items.push_back(x);}
  reverse(fit.begin(),fit.end());
  vector<vector<pair<int,int>>>pred(grid),succ(grid);
  for(int i=0;i<grid;i++){
   for(auto x:fit){bool good=true;int step=0;for(int j=0;j<6;j++){if(x.c[j]>coords[i][j]){good=false;break;}step+=x.c[j]*stride[j];}if(good)pred[i].push_back({i-step,x.e});}
   for(auto x:exact_items){bool good=true;int step=0;for(int j=0;j<6;j++){if(x.c[j]+coords[i][j]>C[j]){good=false;break;}step+=x.c[j]*stride[j];}if(good)succ[i].push_back({i+step,x.e});}
  }
  vector<int>cap(grid,0),exact(grid,INF);exact[0]=0;
  for(int n=0;n<=8;n++){
   vector<int>pref=exact;
   for(int j=0;j<6;j++)for(int i=0;i<grid;i++)if(coords[i][j])pref[i]=min(pref[i],pref[i-stride[j]]);
   for(int i=0;i<grid;i++){
    if(cap[i]!=pref[i])throw runtime_error("independent full grid disagreement");
    cells<<sid<<' '<<n;for(int v:coords[i])cells<<' '<<v;cells<<' '<<cap[i]<<'\n';compared++;
   }
   if(n==8)break;
   vector<int>nextcap(grid,INF),nextexact(grid,INF);
   for(int i=0;i<grid;i++)for(auto[j,e]:pred[i])if(cap[j]<INF)nextcap[i]=min(nextcap[i],cap[j]+e);
   for(int i=0;i<grid;i++)if(exact[i]<INF)for(auto[j,e]:succ[i])nextexact[j]=min(nextexact[j],exact[i]+e);
   cap.swap(nextcap);exact.swap(nextexact);
  }
  out<<sid<<' '<<h<<' '<<cap.back()<<' '<<grid<<' '<<9*grid<<' '<<fit.size()<<' '<<exact_items.size()<<'\n';queries++;
 }
 cout<<"PASS all_raw_capacity_vs_exact_used_prefix queries="<<queries<<" compared_cells="<<compared<<" raw_signatures="<<raw.size()<<'\n';
}
