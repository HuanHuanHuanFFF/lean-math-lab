#include <array>
#include <vector>
#include <fstream>
#include <sstream>
#include <iostream>
#include <algorithm>
#include <numeric>
#include <chrono>
#include <string>
using namespace std;
static constexpr int P=65521;
inline int add(int a,int b){int c=a+b;return c>=P?c-P:c;}
inline int sub(int a,int b){int c=a-b;return c<0?c+P:c;}
inline int mul(int a,int b){return (int)((long long)a*b%P);}
int pw(int a,int n){int v=1;while(n){if(n&1)v=mul(v,a);a=mul(a,a);n>>=1;}return v;}
int cv(int n){n%=P;return n<0?n+P:n;}
int C[50][50],xp[22][50],np[10][50];
vector<int> pmul(const vector<int>&a,const vector<int>&b){vector<int> c(a.size()+b.size()-1);for(int i=0;i<(int)a.size();i++)for(int j=0;j<(int)b.size();j++)c[i+j]=add(c[i+j],mul(a[i],b[j]));return c;}
vector<int> taylor(const vector<int>&f,int x,int count){vector<int> ans(count),powers(f.size(),1);for(int i=1;i<(int)f.size();i++)powers[i]=mul(powers[i-1],x);for(int j=0;j<count;j++)for(int k=j;k<(int)f.size();k++)ans[j]=add(ans[j],mul(f[k],mul(C[k][j],powers[k-j])));return ans;}
array<vector<int>,6> lag;
int Lt[6][6][6],Wi[6][40];
vector<pair<int,int>> mons;
struct Pt{int r,x;};vector<Pt>pts;
vector<vector<vector<int>>> cache; // point, triangular jet id, monomial entries
int jid(int a,int b){int d=a+b;return d*(d+1)/2+a;}
void setup(int q){
 for(int i=0;i<50;i++){C[i][0]=C[i][i]=1;for(int j=1;j<i;j++)C[i][j]=add(C[i-1][j-1],C[i-1][j]);}
 for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++)pts.push_back({r,s*(r-s)});
 for(int b=0;b<=q-3;b++)for(int a=0;a+2*b<=2*q-6;a++)mons.push_back({a,b});
 cache.resize(21);
 for(int p=0;p<21;p++){
  int r=pts[p].r,x=pts[p].x;cache[p].resize(q*(q+1)/2);
  vector<int>rn(40,1),xn(40,1);for(int i=1;i<40;i++){rn[i]=mul(rn[i-1],r);xn[i]=mul(xn[i-1],x);}
  for(int d=0;d<=q-2;d++)for(int a=0;a<=d;a++){int b=d-a;auto &v=cache[p][jid(a,b)];v.resize(mons.size());
   for(int h=0;h<(int)mons.size();h++){auto [i,j]=mons[h];if(i>=a&&j>=b)v[h]=mul(mul(C[i][a],rn[i-a]),mul(C[j][b],xn[j-b]));}
  }
 }
 for(int i=0;i<6;i++){
  vector<int>f={1};int den=1;for(int j=0;j<6;j++)if(j!=i){f=pmul(f,{cv(-j-3),1});den=mul(den,cv(i-j));}
  for(auto &v:f)v=mul(v,pw(den,P-2));lag[i]=f;
 }
 for(int i=0;i<6;i++){
  for(int j=0;j<6;j++){auto v=taylor(lag[j],i+3,6);for(int k=0;k<6;k++)Lt[i][j][k]=v[k];}
  vector<int>w={1};for(int j=0;j<6;j++)if(j!=i)w=pmul(w,{cv(i-j),1});
  Wi[i][0]=pw(w[0],P-2);for(int k=1;k<40;k++){int t=0;for(int l=1;l<=min(k,5);l++)t=add(t,mul(w[l],Wi[i][k-l]));Wi[i][k]=mul(cv(-t),Wi[i][0]);}
 }
}
int main(int argc,char**argv){
 if(argc<4){cerr<<"usage q input.csv output.jsonl\n";return 2;}
 int q=stoi(argv[1]);setup(q);int u=mons.size();ifstream in(argv[2]);ofstream out(argv[3]);string line;int cases=0,bad=0,cons=0,uncertain=0;auto start=chrono::steady_clock::now();
 while(getline(in,line)){
  vector<int> data;stringstream ss(line);string tok;while(getline(ss,tok,','))data.push_back(stoi(tok));if(data.size()!=26){cerr<<"bad CSV\n";return 2;}
  int def=data[1],extra=data[4];array<vector<int>,6>Fr;array<int,21>m{};for(int p=0;p<21;p++)m[p]=data[p+5];
  int pp=0;for(int i=0;i<6;i++){Fr[i]={1};for(int s=0;s<=(i+3)/2;s++,pp++)for(int j=0;j<m[pp];j++)Fr[i]=pmul(Fr[i],{cv(-pts[pp].x),1});if(i==def)Fr[i]=pmul(Fr[i],{cv(-extra),1});}
  vector<vector<int>> A;int pos=0;
  for(int p=0;p<21;p++){
   int mm=m[p];if(mm<2)continue;int ir=pts[p].r-3,x=pts[p].x;
   array<vector<int>,6>Ft;for(int j=0;j<6;j++)Ft[j]=taylor(Fr[j],x,mm-1);
   for(int d=0;d<=mm-2;d++)for(int a=0;a<=d;a++){int b=d-a;vector<int> v=cache[p][jid(a,b)];int target=0;
    for(int k=0;k<=min(a,4);k++){int h=0;for(int j=0;j<6;j++)h=add(h,mul(Lt[ir][j][k+1],Ft[j][b]));target=sub(target,mul(Wi[ir][a-k],h));}
    v.push_back(target);A.push_back(move(v));
   }
  }
  // Incremental exact modular echelon. Every pivot row is retained by original index.
  vector<vector<int>> basis(u+1);vector<int> pivrows;vector<int> pivotcols;bool contradiction=false;
  for(int r=0;r<(int)A.size();r++){
   vector<int>v=A[r];for(int c=0;c<=u;c++)if(v[c]){
    if(basis[c].empty()){
     int inv=pw(v[c],P-2);for(int j=c;j<=u;j++)v[j]=mul(v[j],inv);basis[c]=move(v);pivrows.push_back(r);pivotcols.push_back(c);if(c==u)contradiction=true;break;
    }else{int w=v[c];for(int j=c;j<=u;j++)v[j]=sub(v[j],mul(w,basis[c][j]));}
   }
  }
  int ra=0;for(int c=0;c<u;c++)ra+=!basis[c].empty();
  string status;
  if(contradiction&&ra==u){status="INCONSISTENT_FULL_MINOR";bad++;}
  else if(contradiction){status="MODULAR_INCONSISTENT_RANK_DEFICIENT";uncertain++;}
  else{status="MODULAR_CONSISTENT";cons++;}
  out<<"{\"case\":"<<cases<<",\"q\":"<<q<<",\"unknowns\":"<<u<<",\"rows\":"<<A.size()<<",\"rankA_mod\":"<<ra<<",\"status\":\""<<status<<"\",\"pivot_rows\":[";
  for(int i=0;i<(int)pivrows.size();i++){if(i)out<<',';out<<pivrows[i];}out<<"],\"pivot_cols\":[";
  for(int i=0;i<(int)pivotcols.size();i++){if(i)out<<',';out<<pivotcols[i];}out<<"]}"<<'\n';cases++;
 }
 auto ms=chrono::duration_cast<chrono::milliseconds>(chrono::steady_clock::now()-start).count();
 cout<<"q="<<q<<" cases="<<cases<<" unknowns="<<u<<" full_minor_rejected="<<bad<<" modular_consistent="<<cons<<" modular_bad_rank_deficient="<<uncertain<<" ms="<<ms<<endl;
}
