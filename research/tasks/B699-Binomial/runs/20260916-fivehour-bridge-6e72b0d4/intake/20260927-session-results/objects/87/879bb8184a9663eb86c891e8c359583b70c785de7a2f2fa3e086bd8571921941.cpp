#include <array>
#include <vector>
#include <fstream>
#include <iostream>
#include <algorithm>
#include <stdexcept>
using namespace std;
#ifndef MODULUS
#define MODULUS 32749
#endif
constexpr int P=MODULUS;
int md(long long v){v%=P;return v<0?v+P:v;}
int pw(int a,int n){int v=1;while(n){if(n&1)v=md(1LL*v*a);a=md(1LL*a*a);n>>=1;}return v;}
vector<int> mul(vector<int>a,vector<int>b){vector<int>c(a.size()+b.size()-1);for(int i=0;i<(int)a.size();i++)for(int j=0;j<(int)b.size();j++)c[i+j]=md(c[i+j]+1LL*a[i]*b[j]);return c;}
int binom[25][25];int q,K,delta,kappa; vector<pair<int,int>> mons; vector<int> W; vector<vector<int>> lag;
struct JRow{int pt,i,j;vector<int>var,lin;};
vector<JRow> rows;
int rowid[21][25][12];int rs[21],vs[21],ss[21];bool ds[21];
int mon_jet(int a,int b,int r,int v,int s,int i,int j){
 if(j>b)return 0;long long ans=0;for(int l=0;l<=b-j && l<=i;l++)if(i-l<=a){
 int z=md(1LL*binom[b][j]*binom[b-j][l]);z=md(1LL*z*pw(v,b-j-l));z=md(1LL*z*pw(s,l));z=md(1LL*z*binom[a][i-l]);z=md(1LL*z*pw(r,a-i+l));ans+=z;
 }return md(ans);
}
void prepare(){for(int n=0;n<25;n++){binom[n][0]=binom[n][n]=1;for(int i=1;i<n;i++)binom[n][i]=md(binom[n-1][i-1]+binom[n-1][i]);}
 W={1};for(int r=3;r<=8;r++)W=mul(W,{md(-r),1});
 for(int r=3;r<=8;r++){vector<int>a={1};int d=1;for(int t=3;t<=8;t++)if(t!=r){a=mul(a,{md(-t),1});d=md(1LL*d*(r-t));}for(auto&v:a)v=md(1LL*v*pw(d,P-2));lag.push_back(a);}
 for(int b=0;b<=q-3;b++)for(int a=0;a+2*b<=2*q-6;a++)mons.push_back({a,b});K=mons.size()+1;if(K!=(q-2)*(q-2)+1)throw runtime_error("columns");
 int pt=0;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++,pt++){int v=s*(r-s),shear=(2*s==r?s:0);rs[pt]=r;vs[pt]=v;ss[pt]=shear;ds[pt]=(2*s==r);
 for(int j=0;j<q;j++)for(int i=1;i<(ds[pt]?2*q-2*j:q-j);i++){
 JRow row;row.pt=pt;row.i=i;row.j=j;
 for(auto [a,b]:mons){long long u=0;for(int d=0;d<=6;d++)u+=1LL*W[d]*mon_jet(a+d,b,r,v,shear,i,j);row.var.push_back(md(u));}
 for(int b=0;b<=q;b++)for(int a=0;a<6;a++)row.lin.push_back(mon_jet(a,b,r,v,shear,i,j));
 rowid[pt][i][j]=rows.size();rows.push_back(row);
 }}
}
int main(int argc,char**argv){if(argc<6)throw runtime_error("q delta gates minors exceptions [limit]");q=stoi(argv[1]);delta=stoi(argv[2]);if(delta<0||delta>2)throw runtime_error("delta");kappa=4-2*delta;if(q!=8&&q!=9)throw runtime_error("only q8/q9 certified");prepare();ifstream in(argv[3]);ofstream out(argv[4]),exceptions(argv[5]);int qq;long long L,R0;long long count=0,good=0,bad=0;int limit=argc>6?stoi(argv[6]):1000000000;
 while(count<limit && in>>qq>>L>>R0){if(qq!=q)throw runtime_error("q mismatch");array<int,21> ms{};for(auto&v:ms)in>>v;
 vector<vector<int>> F;int pt=0;for(int r=3;r<=8;r++){vector<int>f={1};for(int s=0;s<=r/2;s++,pt++)for(int t=0;t<ms[pt];t++)f=mul(f,{md(-s*(r-s)),1});if(r==8){if(delta==1)f=mul(f,{md(-L),1});if(delta==2)f=mul(f,{md(R0),md(-L),1});}if((int)f.size()!=q+1)throw runtime_error("row degree");F.push_back(f);}
 vector<int>H0((q+1)*6);for(int b=0;b<=q;b++)for(int a=0;a<6;a++){long long val=0;for(int r=0;r<6;r++)val+=1LL*F[r][b]*lag[r][a];H0[b*6+a]=md(val);}
 vector<vector<int>>basis(K);vector<int>selected,pivcols;int det=1,rank=0;
 for(int t=0;t<21 && rank<K;t++)for(int j=0;j<ms[t] && rank<K;j++)for(int i=1;i<(ds[t]?max(ms[t]-j,2*ms[t]-2*j-(t==20?kappa:0)):ms[t]-j) && rank<K;i++){
 int id=rowid[t][i][j];auto &r=rows[id];vector<int>v=r.var;long long z=0;for(int u=0;u<(int)H0.size();u++)z+=1LL*r.lin[u]*H0[u];v.push_back(md(z));
 for(int k=0;k<K;k++){if(!v[k])continue;if(basis[k].empty()){int pivot=v[k];det=md(1LL*det*pivot);int inv=pw(pivot,P-2);for(int l=k;l<K;l++)v[l]=md(1LL*v[l]*inv);basis[k]=move(v);selected.push_back(id);pivcols.push_back(k);rank++;break;}else{int fac=v[k];for(int l=k;l<K;l++)v[l]=md(v[l]-1LL*fac*basis[k][l]);}}
 }
 if(rank==K){for(int a=0;a<K;a++)for(int b=a+1;b<K;b++)if(pivcols[a]>pivcols[b])det=md(-det);good++;out<<count<<' '<<K<<' '<<det;for(int i:selected)out<<' '<<i;out<<'\n';}
 else{bad++;exceptions<<count<<' '<<rank<<' '<<q<<' '<<L<<' '<<R0;for(int m:ms)exceptions<<' '<<m;exceptions<<'\n';}
 count++;if(count%10000==0)cerr<<"q="<<q<<" progress="<<count<<" full="<<good<<" deficient="<<bad<<'\n';
 }
 cout<<"q="<<q<<" delta="<<delta<<" kappa="<<kappa<<" prime="<<P<<" gates="<<count<<" full_column_rank="<<good<<" deficient="<<bad<<" columns="<<K<<'\n';
}
