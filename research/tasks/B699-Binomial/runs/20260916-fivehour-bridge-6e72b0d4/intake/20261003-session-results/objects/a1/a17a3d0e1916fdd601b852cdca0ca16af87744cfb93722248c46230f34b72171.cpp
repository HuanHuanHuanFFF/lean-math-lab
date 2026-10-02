// Separate exact-used-resource convolution. Compare every capacity grid cell.
#include <array>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <set>
#include <vector>
#include <stdexcept>
#include <cstdint>
using namespace std;
int main(int argc,char**argv){try{
 if(argc!=6)throw runtime_error("header raw649 expected_binary low_output receipt_output");
 ifstream hi(argv[1]),tab(argv[2]),ex(argv[3],ios::binary);if(!hi||!tab||!ex)throw runtime_error("open");
 int h,price,qmax;array<int,6>C,S,step;hi>>h>>price>>qmax;for(int&x:C)hi>>x;if(!hi)throw runtime_error("header");
 int n=1;for(int k=5;k>=0;k--){S[k]=C[k]+1;step[k]=n;n*=S[k];}
 vector<array<int,6>>dig(n);for(int i=0;i<n;i++)for(int k=0;k<6;k++)dig[i][k]=i/step[k]%S[k];
 set<array<int,7>>types;array<int,7>ty;int raw=0;
 while(tab>>ty[0]){for(int k=1;k<7;k++)tab>>ty[k];if(!tab)throw runtime_error("table");raw++;
 bool fit=true;for(int k=0;k<6;k++)if(ty[k+1]<0||ty[k+1]>C[k])fit=false;if(!fit)continue;
 if(ty==array<int,7>{4,0,0,2,1,0,0}){if(price<0)continue;ty[0]=price;}types.insert(ty);
 }if(raw!=649)throw runtime_error("not649");
 const int64_t INF=10000;vector<int64_t>exact(n,INF),prev7;exact[0]=0;long long compared=0;int64_t terminal=-1;
 for(int k=0;k<=8;k++){
  vector<int64_t>within=exact;
  for(int d=5;d>=0;d--)for(int i=0;i<n;i++)if(dig[i][d])within[i]=min(within[i],within[i-step[d]]);
  for(int i=0;i<n;i++){int64_t expected;ex.read(reinterpret_cast<char*>(&expected),8);if(!ex||expected!=within[i])throw runtime_error("DP cell mismatch at layer="+to_string(k)+" cell="+to_string(i));compared++;}
  if(k==7)prev7=within;if(k==8){terminal=within[n-1];break;}
  vector<int64_t>next(n,INF);
  for(int i=0;i<n;i++)if(exact[i]<INF)for(auto&t:types){bool fit=true;int j=i;for(int d=0;d<6;d++){if(dig[i][d]+t[d+1]>C[d]){fit=false;break;}j+=t[d+1]*step[d];}if(fit)next[j]=min(next[j],exact[i]+t[0]);}exact.swap(next);
 }
 char c;if(ex.read(&c,1))throw runtime_error("extra expected bytes");
 ofstream low(argv[4]);int count=0;
 for(int q=4;q<=qmax;q++)for(int i=0;i<n;i++){
  auto fee=dig[i];if(fee[0]%2||fee[2]%2||fee[4]%2||fee[2]<2||fee[3]<1)continue;
  int rem=0;for(int d=0;d<6;d++)rem+=(C[d]-fee[d])*step[d];
  if(q+prev7[rem]>h)continue;
  low<<q;for(int x:fee)low<<'\t'<<x;low<<'\t'<<prev7[rem]<<'\n';count++;
 }
 ofstream rec(argv[5]);rec<<"{\"all_cells_equal\":true,\"grid_cells_per_layer\":"<<n<<",\"compared_cells\":"<<compared<<",\"T_price\":"<<price<<",\"M8\":"<<terminal<<",\"low_count\":"<<count<<"}\n";
 cout<<"PASS price="<<price<<" M8="<<terminal<<" cells="<<compared<<" low="<<count<<'\n';return 0;
}catch(const exception&e){cerr<<"REJECT "<<e.what()<<'\n';return 1;}}
