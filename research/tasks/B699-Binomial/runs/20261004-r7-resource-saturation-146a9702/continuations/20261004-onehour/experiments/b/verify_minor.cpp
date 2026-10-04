#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
using namespace std;constexpr int P=32003;
struct T{int a,b,c;long long v;};struct F{int d,a,b,c;vector<T>ts;};
int powmod(int x,int n){int a=1;for(;n;n>>=1,x=(long long)x*x%P)if(n&1)a=(long long)a*x%P;return a;}
int main(int argc,char**argv){
 if(argc!=3)return 2;auto begin=chrono::steady_clock::now();ifstream in(argv[1]);int A,B,C,TD,ng;if(!(in>>A>>B>>C>>TD>>ng))return 3;vector<F>fs(ng+1);
 for(auto &f:fs){int n;in>>f.d>>f.a>>f.b>>f.c>>n;for(int j=0;j<n;j++){T t;in>>t.a>>t.b>>t.c>>t.v;f.ts.push_back(t);}}if(!in)return 4;string more;if(in>>more)return 5;
 ifstream ci(argv[2]);string ctext((istreambuf_iterator<char>(ci)),{});auto pos=ctext.find("\"columns_in_row_order\"");auto lo=ctext.find('[',pos),hi=ctext.find(']',lo);string cv=ctext.substr(lo+1,hi-lo-1);replace(cv.begin(),cv.end(),',',' ');istringstream cs(cv);vector<int> cols;int v;while(cs>>v)cols.push_back(v);
 pos=ctext.find("\"determinant_mod_p\"");int expected=stoi(ctext.substr(ctext.find(':',pos)+1));int N=cols.size();
 vector<array<int,3>> mons;for(int a=0;a<=A;a++)for(int b=0;b<=B;b++)for(int c=0;c<=C;c++)if(a+b+c<=TD)mons.push_back({a,b,c});sort(mons.begin(),mons.end(),[](auto a,auto b){int x=a[0]+a[1]+a[2],y=b[0]+b[1]+b[2];return x!=y?x>y:a>b;});
 auto ix=[&](int a,int b,int c){return(a*(B+1)+b)*(C+1)+c;};vector<int> selected((A+1)*(B+1)*(C+1),-1);
 for(int j=0;j<N;j++){if(cols[j]<0||cols[j]>=(int)mons.size())return 6;auto t=mons[cols[j]];if(selected[ix(t[0],t[1],t[2])]!=-1)return 7;selected[ix(t[0],t[1],t[2])]=j;}
 struct Shift{int f,a,b,c,d;};vector<Shift> shifts;for(int j=0;j<ng;j++)for(int a=0;a<=A-fs[j].a;a++)for(int b=0;b<=B-fs[j].b;b++)for(int c=0;c<=C-fs[j].c;c++)if(a+b+c+fs[j].d<=TD)shifts.push_back({j,a,b,c,a+b+c+fs[j].d});stable_sort(shifts.begin(),shifts.end(),[](auto a,auto b){return a.d<b.d;});shifts.push_back({ng,0,0,0,TD});if((int)shifts.size()!=N)return 8;
 vector<vector<uint16_t>> mat(N,vector<uint16_t>(N));for(int j=0;j<N;j++){auto s=shifts[j];for(auto t:fs[s.f].ts){int k=selected[ix(t.a+s.a,t.b+s.b,t.c+s.c)];if(k>=0){long long z=t.v%P;if(z<0)z+=P;mat[j][k]=z;}}}
 int det=1,swaps=0;for(int k=0;k<N;k++){
  if(chrono::duration<double>(chrono::steady_clock::now()-begin).count()>45){cerr<<"TIMEOUT\n";return 9;}
  int j=k;while(j<N&&!mat[j][k])j++;if(j==N){cerr<<"SINGULAR\n";return 10;}if(j!=k){swap(mat[j],mat[k]);det=(P-det)%P;swaps++;}
  int p=mat[k][k];det=(long long)det*p%P;int iv=powmod(p,P-2);for(j=k+1;j<N;j++)mat[k][j]=(long long)mat[k][j]*iv%P;mat[k][k]=1;
  for(int i=k+1;i<N;i++)if(int z=mat[i][k]){mat[i][k]=0;for(j=k+1;j<N;j++){int t=mat[i][j]-(long long)z*mat[k][j]%P;mat[i][j]=t<0?t+P:t;}}
 }
 cout<<"{\"status\":\""<<(det==expected?"PASS":"FAIL")<<"\",\"minor_order\":"<<N<<",\"determinant_mod_p\":"<<det<<",\"expected\":"<<expected<<",\"row_swaps\":"<<swaps<<",\"seconds\":"<<chrono::duration<double>(chrono::steady_clock::now()-begin).count()<<"}\n";return det==expected?0:11;
}
