#include <algorithm>
#include <array>
#include <vector>
#include <map>
#include <iostream>
#include <fstream>
#include <sstream>
#include <chrono>
#include <stdexcept>
using namespace std;
#ifndef MODULUS
#define MODULUS 32749
#endif
const int p=MODULUS;
int mul(int a,int b){return (long long)a*b%p;}
int pw(int a,int e){int o=1;while(e){if(e&1)o=mul(o,a);a=mul(a,a);e>>=1;}return o;}
int mod(long long a){a%=p;if(a<0)a+=p;return a;}
int C[80][80],P[32][80];
int basis(int a,int b,int r,int v,int s,int i,int j){if(j>b)return 0;int out=0;for(int z=0;z<=b-j;z++)if(i>=z&&i-z<=a){int term=mul(C[b][j],mul(C[b-j][z],mul(P[v][b-j-z],mul(P[s][z],mul(C[a][i-z],P[r][a-i+z])))));out=mod(out+term);}return out;}
vector<int> poly_mul(vector<int>a,vector<int>b){vector<int>o(a.size()+b.size()-1);for(int i=0;i<(int)a.size();i++)for(int j=0;j<(int)b.size();j++)o[i+j]=mod(o[i+j]+(long long)a[i]*b[j]);return o;}
struct JRow{vector<int>w,h;};
int main(int argc,char**argv){if(argc!=4)throw runtime_error("gates output q");int q=stoi(argv[3]),nc=(q-2)*(q-2),K=nc+1;
for(int n=0;n<80;n++){C[n][0]=C[n][n]=1;for(int k=1;k<n;k++)C[n][k]=mod(C[n-1][k-1]+C[n-1][k]);}for(int a=0;a<32;a++){P[a][0]=1;for(int b=1;b<80;b++)P[a][b]=mul(P[a][b-1],a);}
vector<pair<int,int>>mons;for(int b=q-3;b>=0;b--)for(int a=2*q-6-2*b;a>=0;a--)mons.emplace_back(a,b);if((int)mons.size()!=nc)throw runtime_error("dimension");
vector<int>W{1};for(int r=3;r<=8;r++)W=poly_mul(W,{mod(-r),1});vector<vector<int>>L;
for(int r=3;r<=8;r++){vector<int>l{1};int den=1;for(int t=3;t<=8;t++)if(t!=r){l=poly_mul(l,{mod(-t),1});den=mul(den,mod(r-t));}int inv=pw(den,p-2);for(int &x:l)x=mul(x,inv);L.push_back(l);}
map<array<int,4>,JRow>cache; // row, source s, i, j. At centers shear is automatic.
auto get=[&](int r,int ss,int i,int j)->JRow&{array<int,4>key{r,ss,i,j};auto it=cache.find(key);if(it!=cache.end())return it->second;JRow &R=cache[key];int v=ss*(r-ss),shear=(2*ss==r?ss:0);for(auto[a,b]:mons){int c=0;for(int t=0;t<=6;t++)c=mod(c+(long long)W[t]*basis(a+t,b,r,v,shear,i,j));R.w.push_back(c);}for(int b=0;b<=q;b++)for(int a=0;a<6;a++)R.h.push_back(basis(a,b,r,v,shear,i,j));return R;};
ifstream in(argv[1]);ofstream out(argv[2]);if(!in||!out)throw runtime_error("file");string line;int count=0,full=0;auto start=chrono::steady_clock::now();
while(getline(in,line)){istringstream is(line);int qq,h,lambda,genus;is>>qq>>h>>lambda>>genus;if(qq!=q)throw runtime_error("q");vector<vector<int>>mm(6);for(int r=3;r<=8;r++){mm[r-3].resize(r/2+1);for(int &m:mm[r-3])is>>m;}vector<int>h0(6*(q+1));for(int r=3;r<=8;r++){vector<int>row{1};for(int ss=0;ss<=r/2;ss++)for(int t=0;t<mm[r-3][ss];t++)row=poly_mul(row,{mod(-ss*(r-ss)),1});if(r==h)row=poly_mul(row,{mod(-lambda),1});if((int)row.size()!=q+1)throw runtime_error("rowdeg");for(int b=0;b<=q;b++)for(int a=0;a<6;a++)h0[6*b+a]=mod(h0[6*b+a]+(long long)row[b]*L[r-3][a]);}
for(int b=0;b<=q;b++)for(int a=0;a<6;a++)if(a+2*b>2*q&&h0[6*b+a])throw runtime_error("weight");
vector<vector<int>>B(K);int rank=0,det=1;vector<int>ids;int eqid=0;
for(int r=3;r<=8&&rank<K;r++)for(int ss=0;ss<=r/2&&rank<K;ss++){int m=mm[r-3][ss];bool diag=2*ss==r;for(int w=1;w<(diag?2*m:m)&&rank<K;w++)for(int j=0;j<=w/(diag?2:1)&&rank<K;j++){int i=w-(diag?2:1)*j;if(!i)continue;eqid++;auto&R=get(r,ss,i,j);vector<int>x=R.w;long long last=0;for(int b=0;b<(int)h0.size();b++)last+=(long long)h0[b]*R.h[b];x.push_back(last%p);
for(int col=0;col<K;col++){int c=x[col];if(!c)continue;if(B[col].empty()){int inv=pw(c,p-2);det=mul(det,c);for(int k=col;k<K;k++)x[k]=mul(x[k],inv);B[col]=move(x);rank++;ids.push_back(r*100000+ss*10000+i*100+j);break;}else{for(int k=col;k<K;k++){int t=x[k]-(long long)c*B[col][k]%p;if(t<0)t+=p;x[k]=t;}}}
}}
count++;full+=rank==K;out<<count-1<<' '<<rank<<' '<<det;for(int id:ids)out<<' '<<id;out<<'\n';if(rank<K)cerr<<"LOW "<<count-1<<" rank "<<rank<<" K "<<K<<" "<<line<<endl;
if(count%100==0)cerr<<"processed "<<count<<" full "<<full<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<endl;
}
cout<<"JETS q "<<q<<" count "<<count<<" full "<<full<<" seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<endl;
}
