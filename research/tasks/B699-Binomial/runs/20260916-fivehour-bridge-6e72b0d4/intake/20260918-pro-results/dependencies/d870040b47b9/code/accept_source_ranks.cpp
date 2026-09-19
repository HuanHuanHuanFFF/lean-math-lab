// Independent acceptance: row-by-row subset recursion, reversed monomials,
// full Gauss-Jordan elimination, prime 1000033. No CAS or floating arithmetic.
#include <array>
#include <cstdint>
#include <iostream>
#include <vector>
#include <map>
#include <algorithm>
using namespace std;
constexpr int64_t P=1000033;
using Row=array<int64_t,16>;
int64_t power(int64_t x,int k){int64_t y=1;while(k){if(k&1)y=y*x%P;x=x*x%P;k>>=1;}return y;}
int rank_exact_mod(vector<Row> A){
  int r=0;
  for(int c=0;c<16&&r<(int)A.size();++c){
    int k=(int)A.size()-1;while(k>=r&&!A[k][c])--k;if(k<r)continue;
    swap(A[k],A[r]);int64_t u=power(A[r][c],P-2);
    for(int t=0;t<16;++t)A[r][t]=A[r][t]*u%P;
    for(int i=0;i<(int)A.size();++i)if(i!=r){int64_t v=A[i][c];if(!v)continue;
      for(int t=0;t<16;++t){A[i][t]=(A[i][t]-v*A[r][t])%P;if(A[i][t]<0)A[i][t]+=P;}}
    ++r;
  }
  return r;
}
vector<Row> rows;
vector<vector<int>> choices(6);
int offsets[7]={0,2,5,8,12,16,21};
map<pair<int,int>,int> counts;
vector<array<int,3>> exceptions;
void visit(int rr,int mask,int z){
  if(z>17)return;
  int left=0;for(int j=rr;j<6;++j)left+=min(3,offsets[j+1]-offsets[j]);
  if(z+left<14)return;
  if(rr==6){if(z<14||z>17)return;vector<Row>A;
    for(int i=20;i>=0;--i)if(mask&(1<<i))A.push_back(rows[i]);
    int r=rank_exact_mod(A);counts[{z,r}]++;
    if((z==14&&r<14)||(z>14&&r<15))exceptions.push_back({z,mask,r});
    return;
  }
  for(int c:choices[rr])visit(rr+1,mask|(c<<offsets[rr]),z+__builtin_popcount((unsigned)c));
}
int main(){
  vector<pair<int,int>> mon;
  for(int b=3;b>=0;--b)for(int a=6-2*b;a>=0;--a)mon.push_back({a,b});
  for(int r=3;r<=8;++r)for(int s=0;s<=r/2;++s){int v=s*(r-s);Row row{};
    for(int t=0;t<16;++t)row[t]=power(r,mon[t].first)*power(v,mon[t].second)%P;
    rows.push_back(row);
  }
  for(int r=0;r<6;++r){int q=offsets[r+1]-offsets[r];for(int s=(1<<q)-1;s>0;--s)
    if(__builtin_popcount((unsigned)s)<=3)choices[r].push_back(s);}
  visit(0,0,0);sort(exceptions.begin(),exceptions.end());
  for(auto x:exceptions)cout<<"MASK "<<x[0]<<" "<<x[1]<<" "<<x[2]<<"\n";
  for(auto [k,n]:counts)cout<<"COUNT "<<k.first<<" "<<k.second<<" "<<n<<"\n";
}
