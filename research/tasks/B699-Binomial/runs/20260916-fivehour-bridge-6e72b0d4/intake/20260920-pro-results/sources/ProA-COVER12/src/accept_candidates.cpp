// Independent exhaustive gate: enumerate quadratic trace VALUE triples first,
// then row multiplicity distributions. No discovery code is imported.
#include <array>
#include <vector>
#include <map>
#include <set>
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <algorithm>
#include <numeric>
#include <stdexcept>
using namespace std;
struct R {vector<int> m; int trace=0,square=0,cost=0,z=0; array<int,9>lines{};};
vector<R> patterns[6]; map<int,vector<int>> bytrace[6];
int q,missing,zmin,limitcost; array<int,6>trace{},chosen{}; array<int,6>fd={-1,5,-10,10,-5,1};
set<vector<int>> obtained,expected; long long trace_triples=0,trace_polynomials=0;
void compositions(int row,vector<int>&v,int rem,int count){
 if(count==1){v.push_back(rem);R a;a.m=v;int n=row+3;
  for(int s=0;s<(int)v.size();s++){int m=v[s],x=s*(n-s);a.trace+=m*x;a.square+=m*x*x;a.cost+=m*(m-1)/2;a.z+=(m!=0);a.lines[s]+=m;if(n-s!=s)a.lines[n-s]+=m;}
  bytrace[row][a.trace].push_back(patterns[row].size());patterns[row].push_back(a);v.pop_back();return;}
 for(int i=0;i<=rem;i++){v.push_back(i);compositions(row,v,rem-i,count-1);v.pop_back();}
}
vector<vector<int>> pools; vector<int> order,mincost;
void visit(int depth,int cost,int zeros,array<int,9>loads,long long square,int extra){
 if(depth==6){if(square!=0||zeros<zmin)return;vector<int>a={q,missing,cost,zeros,extra};for(int i=0;i<6;i++){auto&m=patterns[i][chosen[i]].m;a.insert(a.end(),m.begin(),m.end());}if(!obtained.insert(a).second)throw runtime_error("duplicate generation");return;}
 int i=order[depth],lower=0;for(int d=depth+1;d<6;d++)lower+=mincost[order[d]];
 for(int idx:pools[i]){auto&a=patterns[i][idx];if(cost+a.cost+lower>limitcost)continue;auto L=loads;bool ok=true;
  for(int t=0;t<9;t++){L[t]+=a.lines[t];if(L[t]>2*q){ok=false;break;}}if(!ok)continue;
  int x=i==missing?trace[i]-a.trace:extra;long long s=square+1LL*fd[i]*a.square;if(i==missing)s+=1LL*fd[i]*x*x;
  chosen[i]=idx;visit(depth+1,cost+a.cost,zeros+a.z,L,s,x);
 }
}
int main(int argc,char**argv){try{
 if(argc!=5)throw runtime_error("usage q defect csv min_z");q=stoi(argv[1]);missing=stoi(argv[2]);zmin=stoi(argv[4]);limitcost=(q-1)*(q-1);
 for(int i=0;i<6;i++){vector<int>v;compositions(i,v,q-(i==missing),(i+3)/2+1);}
 vector<int>base; // choose LAST three nondefect rows: independent of discover.cpp
 for(int i=5;i>=0&&base.size()<3;i--)if(i!=missing)base.push_back(i);
 int a=base[0],b=base[1],c=base[2],den=(a-b)*(a-c)*(b-c);
 for(auto&[A,av]:bytrace[a])for(auto&[B,bv]:bytrace[b])for(auto&[C,cv]:bytrace[c]){
  trace_triples++;bool ok=true;
  for(int i=0;i<6;i++){long long num=1LL*A*(i-b)*(i-c)*(b-c)-1LL*B*(i-a)*(i-c)*(a-c)+1LL*C*(i-a)*(i-b)*(a-b);if(num%den){ok=false;break;}trace[i]=num/den;if(i!=missing&&!bytrace[i].count(trace[i])){ok=false;break;}}
  if(!ok)continue;trace_polynomials++;pools.assign(6,{});mincost.assign(6,1000000);
  for(int i=0;i<6;i++){if(i==missing){pools[i].resize(patterns[i].size());iota(pools[i].begin(),pools[i].end(),0);}else pools[i]=bytrace[i].at(trace[i]);for(int k:pools[i])mincost[i]=min(mincost[i],patterns[i][k].cost);}
  if(accumulate(mincost.begin(),mincost.end(),0)>limitcost)continue;
  order={0,1,2,3,4,5};stable_sort(order.begin(),order.end(),[](int a,int b){return pools[a].size()<pools[b].size();});visit(0,0,0,{},0,0);
 }
 ifstream f(argv[3]);if(!f)throw runtime_error("missing CSV");string l;
 while(getline(f,l)){stringstream s(l);vector<int>v;string t;while(getline(s,t,','))v.push_back(stoi(t));if(v.size()!=26||!expected.insert(v).second)throw runtime_error("bad/duplicate CSV");}
 if(obtained!=expected){cerr<<"expected="<<expected.size()<<" actual="<<obtained.size()<<'\n';throw runtime_error("exhaustive gate mismatch");}
 cout<<"PASS_CANDIDATES q="<<q<<" defect="<<missing<<" count="<<obtained.size()<<" trace_triples="<<trace_triples<<" rational_quadratics="<<trace_polynomials<<'\n';
 }catch(exception&e){cerr<<"REJECT: "<<e.what()<<'\n';return 1;}}
