// Second receiver for the six-variable real domain: exhaust the finite
// breakpoint grid. Every nonnegative real vector rounds down to this grid
// preserving all disjunctions, and all sixteen objectives are monotone.
#include <algorithm>
#include <array>
#include <cstdint>
#include <fstream>
#include <functional>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <vector>
struct E{int p,q,a,b;};
void need(bool b,const char*s){if(!b)throw std::runtime_error(s);}
int main(int argc,char**argv){try{
 need(argc==2,"graph input");std::ifstream f(argv[1]);int n;f>>n;need(bool(f)&&n>0&&n<1000,"cut count");std::vector<E> es(n);std::array<std::vector<int>,6> grid;for(auto&g:grid)g.push_back(0);
 for(auto&e:es){f>>e.p>>e.q>>e.a>>e.b;need(bool(f)&&e.p>=0&&e.p<6&&e.q>=0&&e.q<6&&e.p!=e.q&&e.a>0&&e.a<10000&&e.b>0&&e.b<10000,"cut domain");grid[e.p].push_back(e.a);grid[e.q].push_back(e.b);}
 std::string extra;need(!(f>>extra),"extra input");uint64_t total=1;
 for(auto&g:grid){std::sort(g.begin(),g.end());g.erase(std::unique(g.begin(),g.end()),g.end());total*=g.size();}
 std::array<long long,16> best;best.fill(std::numeric_limits<long long>::max());std::array<std::array<int,6>,16>witness;std::array<int,6>z{};uint64_t visited=0,feasible=0;
 auto score=[](std::vector<int>v){std::sort(v.begin(),v.end());long long ans=0,prefix=0;int m=v.size();for(int k=0;k<m;++k){ans+=(19-m)*v[k];prefix+=v[k];if(k<m-1)ans+=prefix;}return ans;};
 auto record=[&](int k,long long s){if(s<best[k]){best[k]=s;witness[k]=z;}};
 std::function<void(int)> rec=[&](int depth){++visited;if(depth==6){++feasible;record(0,score(std::vector<int>(z.begin(),z.end())));int ix=1;for(int a=0;a<6;++a)for(int b=a+1;b<6;++b){std::vector<int>v{std::max(0,z[a]+z[b]-10000)};for(int k=0;k<6;++k)if(k!=a&&k!=b)v.push_back(z[k]);record(ix++,score(v));}return;}
  for(int v:grid[depth]){z[depth]=v;bool ok=true;for(auto e:es)if(e.p<=depth&&e.q<=depth&&z[e.p]<e.a&&z[e.q]<e.b){ok=false;break;}if(ok)rec(depth+1);}};
 rec(0);need(feasible>0,"empty grid");std::cout<<"{\"status\":\"PASS_EXHAUSTIVE_BREAKPOINT_GRID\",\"grid_size\":"<<total<<",\"visited_partial_nodes\":"<<visited<<",\"feasible_corners\":"<<feasible<<",\"coordinate_counts\":[";for(int k=0;k<6;++k){if(k)std::cout<<",";std::cout<<grid[k].size();}std::cout<<"],\"minima\":[";for(int k=0;k<16;++k){if(k)std::cout<<",";std::cout<<best[k];}std::cout<<"]}\n";
 }catch(const std::exception&e){std::cerr<<"REJECT "<<e.what()<<"\n";return 1;}}
