#include <algorithm>
#include <array>
#include <vector>
#include <map>
#include <iostream>
#include <fstream>
#include <sstream>
#include <chrono>
#include <stdexcept>
#include <cstdint>
using namespace std;
static constexpr int p=257;
using E=uint16_t;
E MT[p][p], INV[p];
inline E addm(int a){ a%=p; if(a<0)a+=p; return (E)a; }
int pw(int a,int e){int o=1;while(e){if(e&1)o=(o*a)%p;a=(a*a)%p;e>>=1;}return o;}
E C[100][100],P[32][100];
inline E basis(int a,int b,int r,int v,int s,int i,int j){if(j>b)return 0;int out=0;for(int z=0;z<=b-j;z++)if(i>=z&&i-z<=a){E term=MT[C[b][j]][MT[C[b-j][z]][MT[P[v][b-j-z]][MT[P[s][z]][MT[C[a][i-z]][P[r][a-i+z]]]]]];out+=term;if(out>=p)out-=p;}return (E)out;}
vector<E> poly_mul(const vector<E>&a,const vector<E>&b){vector<E>o(a.size()+b.size()-1);for(size_t i=0;i<a.size();i++)for(size_t j=0;j<b.size();j++){int t=o[i+j]+MT[a[i]][b[j]];if(t>=p)t-=p;o[i+j]=(E)t;}return o;}
struct JRow{vector<E>w,h;};
int main(int argc,char**argv){if(argc!=4)throw runtime_error("gates output q");int q=stoi(argv[3]),nc=(q-2)*(q-2),K=nc+1;
for(int a=0;a<p;a++)for(int b=0;b<p;b++)MT[a][b]=(E)((a*b)%p);for(int a=1;a<p;a++)INV[a]=(E)pw(a,p-2);
for(int n=0;n<100;n++){C[n][0]=C[n][n]=1;for(int k=1;k<n;k++){int t=C[n-1][k-1]+C[n-1][k];if(t>=p)t-=p;C[n][k]=(E)t;}}for(int a=0;a<32;a++){P[a][0]=1;for(int b=1;b<100;b++)P[a][b]=MT[P[a][b-1]][a%p];}
vector<pair<int,int>>mons;for(int b=q-3;b>=0;b--)for(int a=2*q-6-2*b;a>=0;a--)mons.emplace_back(a,b);if((int)mons.size()!=nc)throw runtime_error("dimension");
vector<E>W{1};for(int r=3;r<=8;r++)W=poly_mul(W,{(E)(p-r),1});vector<vector<E>>L;
for(int r=3;r<=8;r++){vector<E>l{1};int den=1;for(int t=3;t<=8;t++)if(t!=r){l=poly_mul(l,{(E)(p-t),1});den=den*((r-t)%p+p)%p%p;}E inv=INV[den];for(E &x:l)x=MT[x][inv];L.push_back(l);}
map<array<int,4>,JRow>cache;
auto get=[&](int r,int ss,int i,int j)->JRow&{array<int,4>key{r,ss,i,j};auto it=cache.find(key);if(it!=cache.end())return it->second;JRow &R=cache[key];int v=ss*(r-ss),shear=(2*ss==r?ss:0);R.w.reserve(nc);R.h.reserve(6*(q+1));for(auto [a,b]:mons){int c=0;for(int t=0;t<=6;t++){c+=MT[W[t]][basis(a+t,b,r,v,shear,i,j)]; if(c>=p)c-=p;}R.w.push_back((E)c);}for(int b=0;b<=q;b++)for(int a=0;a<6;a++)R.h.push_back(basis(a,b,r,v,shear,i,j));return R;};
ifstream in(argv[1]);ofstream out(argv[2]);if(!in||!out)throw runtime_error("file");string line;int count=0,full=0;auto start=chrono::steady_clock::now();
while(getline(in,line)){istringstream is(line);int qq,h,lambda,genus;is>>qq>>h>>lambda>>genus;if(qq!=q)throw runtime_error("q");vector<vector<int>>mm(6);for(int r=3;r<=8;r++){mm[r-3].resize(r/2+1);for(int &m:mm[r-3])is>>m;}vector<E>h0(6*(q+1));for(int r=3;r<=8;r++){vector<E>row{1};for(int ss=0;ss<=r/2;ss++)for(int t=0;t<mm[r-3][ss];t++)row=poly_mul(row,{(E)((p-ss*(r-ss)%p)%p),1});if(r==h)row=poly_mul(row,{(E)((p-lambda%p)%p),1});if((int)row.size()!=q+1)throw runtime_error("rowdeg");for(int b=0;b<=q;b++)for(int a=0;a<6;a++){int z=h0[6*b+a]+MT[row[b]][L[r-3][a]];if(z>=p)z-=p;h0[6*b+a]=(E)z;}}
for(int b=0;b<=q;b++)for(int a=0;a<6;a++)if(a+2*b>2*q&&h0[6*b+a])throw runtime_error("weight");
vector<vector<E>>B(K);int rank=0;E det=1;vector<int>ids;
for(int r=3;r<=8&&rank<K;r++)for(int ss=0;ss<=r/2&&rank<K;ss++){int m=mm[r-3][ss];bool diag=2*ss==r;for(int w=1;w<(diag?2*m:m)&&rank<K;w++)for(int j=0;j<=w/(diag?2:1)&&rank<K;j++){int i=w-(diag?2:1)*j;if(!i)continue;auto&R=get(r,ss,i,j);vector<E>x=R.w;int last=0;for(size_t b=0;b<h0.size();b++){last+=MT[h0[b]][R.h[b]]; if(last>=p)last-=p;}x.push_back((E)last);
for(int col=0;col<K;col++){E c=x[col];if(!c)continue;if(B[col].empty()){E inv=INV[c];det=MT[det][c];for(int k=col;k<K;k++)x[k]=MT[x[k]][inv];B[col]=move(x);rank++;ids.push_back(r*100000+ss*10000+i*100+j);break;}else{const auto &bc=B[col];for(int k=col;k<K;k++){int t=(int)x[k]-(int)MT[c][bc[k]];if(t<0)t+=p;x[k]=(E)t;}}}
}}
count++;full+=rank==K;out<<count-1<<' '<<rank<<' '<<(int)det;for(int id:ids)out<<' '<<id;out<<'\n';if(rank<K)cerr<<"LOW "<<count-1<<" rank "<<rank<<" K "<<K<<" "<<line<<'\n';
if(count%100==0)cerr<<"processed "<<count<<" full "<<full<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<'\n';
}
cout<<"JETS257 q "<<q<<" count "<<count<<" full "<<full<<" seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<'\n';
}
