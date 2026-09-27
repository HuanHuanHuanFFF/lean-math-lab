// Second exhaustive implementation: no Bellman pruning; sorted multisets and
// elementary nonnegative-resource / minimum-degree bounds only.
#include <array>
#include <vector>
#include <set>
#include <fstream>
#include <iostream>
#include <functional>
#include <stdexcept>
using namespace std;
using Sig=array<int,7>;using Cap=array<int,6>;
int main(int argc,char**argv){if(argc!=5)throw runtime_error("signatures queries output stats");ifstream si(argv[1]);set<Sig> uniq;Sig x;while(si>>x[0]){for(int j=1;j<7;j++)si>>x[j];uniq.insert(x);}ifstream qi(argv[2]);ofstream out(argv[3]),log(argv[4]);int sid,h;Cap cap;
while(qi>>sid>>h){for(int &v:cap)qi>>v;vector<Sig> items;for(auto a:uniq){bool ok=true;for(int j=0;j<6;j++)if(a[j+1]>cap[j])ok=false;if(ok)items.push_back(a);}long long nodes=0,count=0;vector<Sig> seq;
function<void(int,int,int,Cap)> dfs=[&](int start,int n,int b,Cap c){nodes++;if(n==0){out<<sid<<' '<<h-b;for(auto a:seq)for(auto v:a)out<<' '<<v;out<<'\n';count++;return;}for(int k=start;k<(int)items.size();k++){auto a=items[k];if(n*a[0]>b)break;Cap d;bool ok=true;for(int j=0;j<6;j++){d[j]=c[j]-a[j+1];if(d[j]<0)ok=false;}if(ok){seq.push_back(a);dfs(k,n-1,b-a[0],d);seq.pop_back();}}};dfs(0,8,h,cap);log<<sid<<' '<<items.size()<<' '<<count<<' '<<nodes<<'\n';cout<<sid<<" multisets="<<count<<" nodes="<<nodes<<'\n';}
}
