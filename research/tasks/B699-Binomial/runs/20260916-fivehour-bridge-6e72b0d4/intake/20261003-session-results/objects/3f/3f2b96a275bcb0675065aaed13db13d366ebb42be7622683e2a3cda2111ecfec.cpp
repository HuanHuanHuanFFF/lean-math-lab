// Separate condition-major receiver; local coefficients via literal multiplication.
// Checks every supplied pivot, discrepancy, leading weight and complete module update.
#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <tuple>
#include <vector>
using namespace std;
struct J { int r,s,a,b,pu,pt,point,w; };
int power(int x,int n,int p){int a=1;while(n){if(n&1)a=a*x%p;x=x*x%p;n>>=1;}return a;}
int main(int argc,char**argv){try{
 if(argc!=3)throw runtime_error("usage: check_trace input trace");
 ifstream in(argv[1]),tr(argv[2]); int e,D,p,mode,n; if(!(in>>e>>D>>p>>mode>>n))throw runtime_error("header");
 if(e<0||e>200||(p!=257&&p!=263)||n!=21)throw runtime_error("input range");
 vector<tuple<int,int,int,int>> points(n);for(auto &[r,s,w,m]:points){in>>r>>s>>w>>m;if(!in||m<0||(w!=1&&w!=2))throw runtime_error("point");}
 if(mode)reverse(points.begin(),points.end());
 vector<J> js;
 for(int z=0;z<n;z++) {auto [r,s,w,m]=points[z]; vector<vector<int>> ids(m,vector<int>(m,-1));
  for(int a=0;a<m;a++)for(int b=0;a+w*b<m;b++) {
   int at=js.size();ids[a][b]=at;
   js.push_back({r,s,a,b,a?ids[a-1][b]:-1,b?ids[a][b-1]:-1,z,w});
  }
 }
 int M=js.size(),K=e+1;
 // Jets are rows, basis vectors are columns. Build X^i from X^{i-1}
 // by multiplication by x0+t (ordinary) or x0+s*u+t (central).
 vector<int> mat(size_t(M)*K,0);
 for(int k=0;k<M;k++) if(js[k].a==0&&js[k].b==0)mat[size_t(k)*K]=1;
 for(int i=1;i<K;i++) for(int k=0;k<M;k++) {
  auto j=js[k];int x=j.s*(j.r-j.s), val=x*mat[size_t(k)*K+i-1]%p;
  if(j.pt>=0)val+=mat[size_t(j.pt)*K+i-1];
  if(j.w==2&&j.pu>=0)val+=j.s*mat[size_t(j.pu)*K+i-1];
  mat[size_t(k)*K+i]=val%p;
 }
 vector<int> weights(K),factors(K),old(M);for(int i=0;i<K;i++)weights[i]=2*i;
 string line;getline(tr,line);if(line!="condition\tpoint\ta\tb\tpivot\tpivot_value\tweight_before")throw runtime_error("trace header");
 int rank=0;
 for(int t=0;t<M;t++){
  if(!getline(tr,line))throw runtime_error("short trace");
  istringstream ss(line);int ct,cp,ca,cb,pi,pv,pw;
  if(!(ss>>ct>>cp>>ca>>cb>>pi>>pv>>pw)||ct!=t||cp!=js[t].point||ca!=js[t].a||cb!=js[t].b)throw runtime_error("trace condition mismatch");
  int pick=-1;for(int i=0;i<K;i++)if(mat[size_t(t)*K+i]&&(pick<0||pair(weights[i],i)<pair(weights[pick],pick)))pick=i;
  if(pi!=pick)throw runtime_error("pivot mismatch at "+to_string(t));
  if(pick<0){if(pv!=0||pw!=-1)throw runtime_error("redundant mismatch");continue;}
  int pivot=mat[size_t(t)*K+pick];if(pv!=pivot||pw!=weights[pick])throw runtime_error("pivot value/weight mismatch at "+to_string(t));
  int inv=power(pivot,p-2,p);
  for(int i=0;i<K;i++) factors[i]=i==pick?0:mat[size_t(t)*K+i]*inv%p;
  for(int k=t;k<M;k++)old[k]=mat[size_t(k)*K+pick];
  for(int k=t;k<M;k++) {
   int* row=&mat[size_t(k)*K];
   for(int i=0;i<K;i++)if(factors[i])row[i]=(row[i]+p*p-factors[i]*old[k])%p;
   int delta=(js[k].r-js[t].r+p)%p;
   row[pick]=(delta*old[k]+(js[k].pu>=t?old[js[k].pu]:0))%p;
  }
  for(int i=0;i<K;i++)if(mat[size_t(t)*K+i])throw runtime_error("current constraint not killed");
  weights[pick]++;rank++;
 }
 while(getline(tr,line))if(!line.empty())throw runtime_error("extra trace data");
 int dim=0;for(int w:weights)dim+=max(0,D-w+1);
 cout<<"{\"verified\":true,\"e\":"<<e<<",\"D\":"<<D<<",\"p\":"<<p<<",\"mode\":"<<mode<<",\"conditions\":"<<M<<",\"nonredundant\":"<<rank<<",\"dimension\":"<<dim<<",\"min_weight\":"<<*min_element(weights.begin(),weights.end())<<",\"weights\":[";
 for(int i=0;i<K;i++){if(i)cout<<',';cout<<weights[i];}cout<<"]}\n";
 return 0;
}catch(const exception&e){cerr<<"REJECT: "<<e.what()<<'\n';return 1;}}
