#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <tuple>
#include <vector>
using namespace std;
constexpr int P=11;
int pw(int a,int n){int v=1;for(;n;n/=2,a=a*a%P)if(n&1)v=v*a%P;return v;}
struct Point{int r,s,w,m;vector<vector<int>> id;};
struct Jet{int r,s,x,a,b,prev,w,point;};
int main(int argc,char**argv){
 if(argc!=2)return 2;int e,D,p,mode,n;cin>>e>>D>>p>>mode>>n;if(p!=P||mode||n!=21||e>152||D!=305)return 3;
 vector<Point>pts;vector<Jet>js;
 for(int z=0;z<n;z++){int r,s,w,m;cin>>r>>s>>w>>m;pts.push_back({r,s,w,m,vector<vector<int>>(m+3,vector<int>(m+3,-1))});auto &pt=pts.back();
  for(int a=0;a<m;a++)for(int b=0;a+w*b<m;b++){pt.id[a][b]=js.size();js.push_back({r,s,s*(r-s),a,b,a?pt.id[a-1][b]:-1,w,z});}
 }
 int M=js.size();
 for(int z=0;z<n;z++){auto &pt=pts[z];for(int lev=pt.m;lev<pt.m+3;lev++)for(int b=0;pt.w*b<=lev;b++){int a=lev-pt.w*b;pt.id[a][b]=js.size();js.push_back({pt.r,pt.s,pt.s*(pt.r-pt.s),a,b,a?pt.id[a-1][b]:-1,pt.w,z});}}
 int T=js.size(),K=e+1;vector<vector<int>>C(D+1,vector<int>(D+1));for(int i=0;i<=D;i++){C[i][0]=C[i][i]=1;for(int j=1;j<i;j++)C[i][j]=(C[i-1][j-1]+C[i-1][j])%P;}
 vector<vector<int>>E(K,vector<int>(T));for(int i=0;i<K;i++)for(int k=0;k<T;k++){auto j=js[k];if(i<j.a+j.b||(j.w==1&&j.a))continue;int v=C[i][j.b]*C[i-j.b][j.a]%P;v=v*pw(j.x%P,i-j.b-j.a)%P;if(j.w==2)v=v*pw(j.s,j.a)%P;E[i][k]=v;}
 vector<int>W(K),disc(K);for(int i=0;i<K;i++)W[i]=2*i;int rank=0;auto start=chrono::steady_clock::now();
 for(int t=0;t<M;t++){int piv=-1;for(int i=0;i<K;i++)if((disc[i]=E[i][t])&&(piv<0||pair(W[i],i)<pair(W[piv],piv)))piv=i;if(piv<0)continue;int iv=pw(disc[piv],P-2);
  const int*src=E[piv].data();for(int i=0;i<K;i++)if(i!=piv&&disc[i]){int f=disc[i]*iv%P;int*dst=E[i].data();for(int k=t;k<T;k++)dst[k]=(dst[k]+P*P-f*src[k])%P;}
  for(int k=T-1;k>=t;k--){int v=js[k].r-js[t].r;if(v<0)v+=P;int prior=(js[k].prev<0||js[k].prev<t)?0:E[piv][js[k].prev];E[piv][k]=(v*E[piv][k]+prior)%P;}
  W[piv]++;rank++;
 }
 vector<pair<int,int>>directions;for(int i=0;i<K;i++)for(int a=0;a<=D-W[i];a++)directions.push_back({i,a});
 ofstream out(string(argv[1])+".jets.tsv");out<<"point\tr\ts\tweight\torder\tu\tt";for(int i=0;i<(int)directions.size();i++)out<<"\tv"<<i;out<<'\n';
 for(int k=M;k<T;k++){auto j=js[k];out<<j.point<<'\t'<<j.r<<'\t'<<j.s<<'\t'<<j.w<<'\t'<<(j.a+j.w*j.b)<<'\t'<<j.a<<'\t'<<j.b;for(auto [i,a]:directions){int v=0;for(int z=0;z<=min(a,j.a);z++){int id=pts[j.point].id[j.a-z][j.b];if(id<0)return 7;v=(v+C[a][z]*pw(j.r,a-z)%P*E[i][id])%P;}out<<'\t'<<v;}out<<'\n';}
 ofstream meta(string(argv[1])+".json");meta<<"{\"prime\":11,\"e\":"<<e<<",\"D\":"<<D<<",\"source_conditions\":"<<M<<",\"transported_jets\":"<<T-M<<",\"nonredundant\":"<<rank<<",\"dimension\":"<<directions.size()<<",\"min_weight\":"<<*min_element(W.begin(),W.end())<<",\"directions\":[";
 for(int z=0;z<(int)directions.size();z++){if(z)meta<<',';meta<<'['<<directions[z].first<<','<<directions[z].second<<']';}meta<<"],\"weights\":[";for(int i=0;i<K;i++){if(i)meta<<',';meta<<W[i];}meta<<"],\"seconds\":"<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"}\n";
 cout<<"h="<<e<<" dimension="<<directions.size()<<" min_weight="<<*min_element(W.begin(),W.end())<<" jets="<<T-M<<" seconds="<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<'\n';
}
