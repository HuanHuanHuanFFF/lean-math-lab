// Independent B22 enumeration. C++17 + Boost.Multiprecision, no CAS.
// A prime-field rank 25 proves homogeneous inconsistency in characteristic 0.
// Every survivor is tested by fraction-free integer elimination with X^4=1.
#include <array>
#include <vector>
#include <iostream>
#include <fstream>
#include <numeric>
#include <algorithm>
#include <chrono>
#include <stdexcept>
#include <boost/multiprecision/cpp_int.hpp>
using namespace std; using boost::multiprecision::cpp_int;
constexpr int K=25, P=32749;
using Row=array<long long,K>; using MR=array<int,K>; using Mat=array<MR,K>;
struct MB {Mat a{};int rank=0;};
struct Option {int deficit,z;vector<int> m;array<int,9> line{};vector<Row> eq;};
vector<pair<int,int>> mon; vector<int> vals[6]; vector<Option> opts[6];
long long nodes=0,tried=0,line_no=0,rank_no=0,terminal=0,exact_no=0,consistent=0;
long long depth_count[7]{};
vector<vector<vector<int>>> survivors; vector<vector<int>> chosen;
long long powi(long long a,int n){long long x=1;for(int i=0;i<n;i++)x*=a;return x;}
long long bin(int n,int k){if(k<0||k>n)return 0;long long a=1;for(int i=1;i<=k;i++)a=a*(n-i+1)/i;return a;}
int mpow(int a,int n){long long r=1;while(n){if(n&1)r=r*a%P;a=(long long)a*a%P;n>>=1;}return r;}
Row jet(int r,int v,int i,int j){Row a{};for(int k=0;k<K;k++){auto [s,t]=mon[k];if(s>=i&&t>=j)a[k]=bin(s,i)*powi(r,s-i)*bin(t,j)*powi(v,t-j);}return a;}
MB extend_mod(const MB& src,const vector<Row>&eq){MB b=src;for(auto raw:eq){MR x{};for(int j=0;j<K;j++)x[j]=(raw[j]%P+P)%P;for(int p=0;p<K;p++){int c=x[p];if(!c)continue;if(b.a[p][p]){for(int j=p;j<K;j++)x[j]=(x[j]-(long long)c*b.a[p][j]%P+P)%P;}else{int inv=mpow(c,P-2);for(int j=p;j<K;j++)b.a[p][j]=(long long)x[j]*inv%P;b.rank++;if(b.rank==K)return b;break;}}}return b;}
cpp_int ab(cpp_int x){return x<0?-x:x;}
cpp_int igcd(cpp_int a,cpp_int b){a=ab(a);b=ab(b);while(b!=0){cpp_int c=a%b;a=b;b=c;}return a;}
bool exact_consistent(const vector<Row>&eq){
 using BR=array<cpp_int,K>;array<BR,K> B{};array<bool,K>used{};
 for(const Row&raw:eq){BR x{};for(int j=0;j<K;j++)x[j]=raw[j];
  for(int p=0;p<K;p++){if(x[p]==0)continue;
   if(!used[p]){if(p==K-1)return false;cpp_int g=0;for(int j=p;j<K;j++)g=igcd(g,x[j]);if(x[p]<0)g=-g;for(int j=p;j<K;j++)B[p][j]=x[j]/g;used[p]=true;break;}
   cpp_int c=x[p],d=B[p][p],g=igcd(c,d);c/=g;d/=g;
   // Earlier coordinates of BOTH rows are zero: we insert at first pivot.
   for(int j=p;j<K;j++)x[j]=d*x[j]-c*B[p][j];
   g=0;for(int j=p+1;j<K;j++)g=igcd(g,x[j]);if(g>1)for(int j=p+1;j<K;j++)x[j]/=g;
  }
 }return true;
}
void make_comp(int row,int d,int left,int slot,vector<int>&m){if(slot==(int)vals[row].size()-1){m.push_back(left);Option o{};o.deficit=d;o.m=m;int r=row+3;for(int s=0;s<(int)m.size();s++){o.z+=m[s]>0;o.line[s]+=m[s];if(r-s!=s)o.line[r-s]+=m[s];for(int deg=0;deg<m[s];deg++)for(int j=0;j<=deg;j++)o.eq.push_back(jet(r,vals[row][s],deg-j,j));}opts[row].push_back(o);m.pop_back();return;}for(int a=0;a<=left;a++){m.push_back(a);make_comp(row,d,left-a,slot+1,m);m.pop_back();}}
void dfs(int dep,int deficit,const MB&B,array<int,9>line,int z){nodes++;depth_count[dep]++;if(dep==6){if(deficit!=2||z<14)throw runtime_error("invalid terminal");terminal++;vector<Row>eq;for(int i=0;i<6;i++)for(int s=0;s<(int)chosen[i].size();s++)for(int d=0;d<chosen[i][s];d++)for(int j=0;j<=d;j++)eq.push_back(jet(i+3,vals[i][s],d-j,j));if(!exact_consistent(eq)){exact_no++;return;}consistent++;survivors.push_back(chosen);return;}
 for(auto&o:opts[dep]){if(deficit+o.deficit>2||(dep==5&&deficit+o.deficit!=2))continue;int possible=z+o.z;for(int i=dep+1;i<6;i++)possible+=vals[i].size();if(possible<14)continue;tried++;array<int,9>L=line;bool bad=false;for(int t=0;t<9;t++){L[t]+=o.line[t];if(L[t]>8)bad=true;}if(bad){line_no++;continue;}MB C=extend_mod(B,o.eq);if(C.rank==25){rank_no++;continue;}chosen.push_back(o.m);dfs(dep+1,deficit+o.deficit,C,L,z+o.z);chosen.pop_back();}
}
int main(int argc,char**argv){try{if(argc!=2)throw runtime_error("usage: enumerate OUTPUT_JSON");for(int b=3;b>=0;b--)for(int a=8-2*b;a>=0;a--)mon.emplace_back(a,b);mon.emplace_back(0,4);for(int r=3;r<=8;r++){for(int s=0;s<=r/2;s++)vals[r-3].push_back(s*(r-s));for(int d=0;d<=2;d++){vector<int>m;make_comp(r-3,d,4-d,0,m);}}
 // Positive regression: H=P4+W(N-3). Verify monic-compatible source jets.
 vector<vector<int>>control={{2,2},{1,1,1},{1,1,1},{1,1,1,1},{1,1,1,1},{1,1,1,1,0}};vector<Row>ceq;for(int i=0;i<6;i++)for(int s=0;s<(int)control[i].size();s++)for(int d=0;d<control[i][s];d++)for(int j=0;j<=d;j++)ceq.push_back(jet(i+3,vals[i][s],d-j,j));if(!exact_consistent(ceq))throw runtime_error("positive control rejected");
 // Negative regression: 1*leading=0 is inconsistent after monic normalization.
 Row impossible{};impossible[24]=1;if(exact_consistent({impossible}))throw runtime_error("negative control accepted");
 // A monic-affine mod-p inconsistency must NOT be used as a Q obstruction.
 Row trap{};trap[0]=P;trap[24]=1;
 if(!exact_consistent({trap})||extend_mod(MB{},{trap}).rank==25)throw runtime_error("modular affine trap");
 auto start=chrono::steady_clock::now();dfs(0,0,MB{},array<int,9>{},0);double seconds=chrono::duration<double>(chrono::steady_clock::now()-start).count();ofstream out(argv[1]);if(!out)throw runtime_error("output not writable");out<<"{\"prime\":"<<P<<",\"nodes\":"<<nodes<<",\"options\":"<<tried<<",\"line_reject\":"<<line_no<<",\"rank25_reject\":"<<rank_no<<",\"terminals\":"<<terminal<<",\"exact_inconsistent\":"<<exact_no<<",\"consistent\":"<<consistent<<",\"seconds\":"<<seconds<<",\"multiplicities\":[";for(size_t a=0;a<survivors.size();a++){if(a)out<<',';out<<'[';for(int r=0;r<6;r++){if(r)out<<',';out<<'[';for(size_t s=0;s<survivors[a][r].size();s++){if(s)out<<',';out<<survivors[a][r][s];}out<<']';}out<<']';}out<<"]}\n";cout<<"PASS_ENUMERATION prime="<<P<<" nodes="<<nodes<<" options="<<tried<<" line_reject="<<line_no<<" rank25_reject="<<rank_no<<" terminal="<<terminal<<" exact_inconsistent="<<exact_no<<" consistent="<<consistent<<" seconds="<<seconds<<endl;
 }catch(exception&e){cerr<<e.what()<<endl;return 1;}}
