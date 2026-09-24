// Final selected-minor verifier. Entries are reconstructed by local polynomial
// convolution, independently of the discovery global-monomial jet formula.
// All columns are homogeneous: WQ variables and 120*H0. No modular affine shortcut.
#include <algorithm>
#include <array>
#include <vector>
#include <map>
#include <set>
#include <iostream>
#include <fstream>
#include <sstream>
#include <stdexcept>
#include <chrono>
using namespace std;
#ifndef PRIME
#define PRIME 32749
#endif
constexpr int p=PRIME;
int md(long long a){a%=p;if(a<0)a+=p;return a;}
int mul(int a,int b){return (long long)a*b%p;}
int pw(int a,int e){int v=1;for(;e;e>>=1,a=mul(a,a))if(e&1)v=mul(v,a);return v;}
vector<int> pmul(const vector<int>&a,const vector<int>&b){vector<int>o(a.size()+b.size()-1);for(int i=0;i<(int)a.size();i++)for(int j=0;j<(int)b.size();j++)o[i+j]=md(o[i+j]+(long long)a[i]*b[j]);return o;}
int main(int argc,char**argv){try{
 if(argc<5||argc>6)throw runtime_error("q gates minors out [limit]");for(int d=2;d*d<=p;d++)if(p%d==0)throw runtime_error("prime");int q=stoi(argv[1]),nc=(q-2)*(q-2),K=nc+1,limit=argc==6?stoi(argv[5]):0;if(q<16||q>30)throw runtime_error("range");
 int C[80][80]{};for(int n=0;n<80;n++){C[n][0]=C[n][n]=1;for(int k=1;k<n;k++)C[n][k]=md(C[n-1][k]+C[n-1][k-1]);}
 int pow[32][80]{};for(int a=0;a<32;a++){pow[a][0]=1;for(int k=1;k<80;k++)pow[a][k]=mul(pow[a][k-1],a);}
 vector<pair<int,int>>mon;for(int b=0;b<=q-3;b++)for(int a=0;a<=2*q-6-2*b;a++)mon.emplace_back(a,b);if((int)mon.size()!=nc)throw runtime_error("monomial count");
 vector<vector<int>> localN[6];array<array<array<int,6>,6>,6> lag{}; // target, interpolation row, u coefficient
 for(int r=3;r<=8;r++){
  vector<int>W{1};for(int t=3;t<=8;t++)W=pmul(W,{md(r-t),1});
  for(int a=0;a<=2*q-6;a++){vector<int>N(a+1);for(int i=0;i<=a;i++)N[i]=mul(C[a][i],pow[r][a-i]);localN[r-3].push_back(pmul(W,N));}
  for(int t=3;t<=8;t++){vector<int>L{1};int den=1;for(int s=3;s<=8;s++)if(s!=t){L=pmul(L,{md(r-s),1});den=mul(den,md(t-s));}int inv=pw(den,p-2);for(int i=0;i<6;i++)lag[r-3][t-3][i]=mul(L[i],inv);}
 }
 map<int,vector<int>>varcache;
 auto varrow=[&](int id,int r,int ss,int i,int j)->const vector<int>&{
  auto it=varcache.find(id);if(it!=varcache.end())return it->second;auto &out=varcache[id];int v=ss*(r-ss),sig=2*ss==r?ss:0;
  for(auto[a,b]:mon){int val=0;if(b>=j)for(int z=0;z<=min(i,b-j);z++){if(!sig&&z)break;auto &n=localN[r-3][a];if(i-z>=(int)n.size())continue;int c=mul(C[b][j],mul(C[b-j][z],mul(pow[v][b-j-z],mul(pow[sig][z],n[i-z]))));val=md(val+c);}out.push_back(val);}return out;
 };
 ifstream ing(argv[2]),inc(argv[3]);ofstream output(argv[4]);if(!ing||!inc||!output)throw runtime_error("files");string gl,cl;int checked=0;auto start=chrono::steady_clock::now();
 while(getline(ing,gl)){
  if(!getline(inc,cl))throw runtime_error("missing minor");istringstream gs(gl),cs(cl);int qq,h,lambda,genus;gs>>qq>>h>>lambda>>genus;if(qq!=q)throw runtime_error("q mismatch");vector<vector<int>>ms(6),Prow(6);int ztotal=0,gactual=0,mutotal=0;
  for(int r=3;r<=8;r++){ms[r-3].resize(r/2+1);vector<int>pr{1};int sum=0;for(int s=0;s<=r/2;s++){int m;if(!(gs>>m)||m<0||m>q)throw runtime_error("multiplicity");ms[r-3][s]=m;sum+=m;ztotal+=m>0;gactual+=m*(m-1)/2;if(2*s==r)gactual+=m*(m-1)/2;for(int a=0;a<m;a++)pr=pmul(pr,{md(-s*(r-s)),1});}if(sum!=q-(r==h))throw runtime_error("row deficit");mutotal+=sum;if(r==h)pr=pmul(pr,{md(-lambda),1});if((int)pr.size()!=q+1)throw runtime_error("row polynomial degree");Prow[r-3]=move(pr);}
  if(genus!=gactual||gactual>(q-1)*(q-1)||ztotal<14)throw runtime_error("genus or full source count");
  int expected;cs>>expected;vector<int>ids;int id;while(cs>>id)ids.push_back(id);if((int)ids.size()!=K||set<int>(ids.begin(),ids.end()).size()!=ids.size())throw runtime_error("minor size");
  // H0 expanded in N around each source row, with X still a formal variable.
  vector<vector<vector<int>>>H(6,vector<vector<int>>(6,vector<int>(q+1)));
  for(int r=0;r<6;r++)for(int i=0;i<6;i++)for(int b=0;b<=q;b++)for(int t=0;t<6;t++)H[r][i][b]=md(H[r][i][b]+(long long)lag[r][t][i]*Prow[t][b]);
  map<pair<int,int>,vector<vector<int>>>hx;
  vector<vector<int>>A;A.reserve(K);
  for(int code:ids){int r=code/100000,ss=code%100000/10000,i=code%10000/100,j=code%100;if(r<3||r>8||ss>r/2||i<1)throw runtime_error("jet identifier");int m=ms[r-3][ss],sig=2*ss==r?ss:0,v=ss*(r-ss);if(sig?i+2*j>=2*m:i+j>=m)throw runtime_error("jet is not necessary");
   auto key=make_pair(r,ss);if(!hx.count(key)){auto &T=hx[key];T.assign(6,vector<int>(q+1));for(int a=0;a<6;a++)for(int k=0;k<=q;k++)for(int b=k;b<=q;b++)T[a][k]=md(T[a][k]+(long long)H[r-3][a][b]*mul(C[b][k],pow[v][b-k]));}
   auto &T=hx[key];int last=0;for(int a=0;a<=min(5,i);a++){int k=i+j-a;if(k<j||k>q||(!sig&&k!=j))continue;last=md(last+(long long)T[a][k]*mul(C[k][j],pow[sig][k-j]));}
   auto row=varrow(code,r,ss,i,j);row.push_back(mul(120,last));A.push_back(move(row));
  }
  int determinant=1;
  // Bottom-pivot row elimination differs from discovery first-column insertion.
  for(int k=0;k<K;k++){
   int pivot=K-1;while(pivot>=k&&!A[pivot][k])pivot--;if(pivot<k)throw runtime_error("zero certified determinant at index "+to_string(checked));
   if(pivot!=k){swap(A[pivot],A[k]);determinant=md(-determinant);}int pv=A[k][k];determinant=mul(determinant,pv);int inv=pw(pv,p-2);
   for(int r=k+1;r<K;r++){int f=mul(A[r][k],inv);if(!f)continue;for(int c=k+1;c<K;c++){int v=A[r][c]-(long long)f*A[k][c]%p;if(v<0)v+=p;A[r][c]=v;}A[r][k]=0;}
  }
  if(!determinant)throw runtime_error("zero determinant");if(p==32749){int e=mul(120,expected);if(determinant!=e&&determinant!=md(-e))throw runtime_error("independent determinant mismatch");}
  output<<checked<<' '<<determinant<<'\n';checked++;if(limit&&checked>=limit)break;
 }
 if(!limit&&getline(inc,cl))throw runtime_error("surplus minor");if(!checked)throw runtime_error("empty batch");
 cout<<"PASS_SELECTED_MINORS q="<<q<<" prime="<<p<<" checked="<<checked<<" dim="<<K<<" seconds="<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<endl;
 }catch(exception&e){cerr<<"FAIL "<<e.what()<<endl;return 1;}}
