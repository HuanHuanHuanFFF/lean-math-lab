#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <numeric>
#include <vector>
using namespace std;
static constexpr int P=32003;
struct Term { int a,b,c; long long v; };
struct Poly { int deg,a,b,c; vector<Term> ts; };
int pw(int a,int b) {int v=1; for(;b;b>>=1,a=(long long)a*a%P)if(b&1)v=(long long)v*a%P;return v;}
int main(int argc,char**argv){
 if(argc!=4)return 2; ifstream in(argv[1]); ofstream out(argv[2]);
 int A,B,C,TD,ng; if(!(in>>A>>B>>C>>TD>>ng) || ng!=6 || A!=26 || B!=20 || C!=12 || TD!=56)return 3;
 vector<Poly> fs(ng+1);
 for(auto &f:fs){int n;in>>f.deg>>f.a>>f.b>>f.c>>n;for(int i=0;i<n;i++){Term t;in>>t.a>>t.b>>t.c>>t.v;f.ts.push_back(t);}} if(!in)return 4; string extra; if(in>>extra)return 5;
 vector<array<int,3>> mons;for(int a=0;a<=A;a++)for(int b=0;b<=B;b++)for(int c=0;c<=C;c++)if(a+b+c<=TD)mons.push_back({a,b,c});
 sort(mons.begin(),mons.end(),[](auto a,auto b){int x=a[0]+a[1]+a[2],y=b[0]+b[1]+b[2];return x!=y?x>y:a>b;});
 int M=mons.size();vector<int> ix((A+1)*(B+1)*(C+1),-1);auto index=[&](int a,int b,int c){return (a*(B+1)+b)*(C+1)+c;};
 for(int j=0;j<M;j++)ix[index(mons[j][0],mons[j][1],mons[j][2])]=j;
 struct Shift {int f,a,b,c,deg;}; vector<Shift> shifts;
 for(int f=0;f<ng;f++)for(int a=0;a<=A-fs[f].a;a++)for(int b=0;b<=B-fs[f].b;b++)for(int c=0;c<=C-fs[f].c;c++)if(a+b+c+fs[f].deg<=TD)shifts.push_back({f,a,b,c,a+b+c+fs[f].deg});
 stable_sort(shifts.begin(),shifts.end(),[](auto a,auto b){return a.deg<b.deg;});
 vector<vector<uint16_t>> rows(M); vector<uint16_t> v(M);int rank=0,done=0; vector<int> piv,pv; long long det_product=1;
 auto start=chrono::steady_clock::now();
 auto reduce=[&](bool insert){for(int k=0;k<M;k++)if(v[k]){if(rows[k].empty()){if(!insert)return k;piv.push_back(k);pv.push_back(v[k]);det_product=det_product*v[k]%P;int inv=pw(v[k],P-2);for(int j=k;j<M;j++)v[j]=(long long)v[j]*inv%P;rows[k]=v;rank++;return -1;}int z=v[k];auto &r=rows[k];for(int j=k;j<M;j++){int q=v[j]-(long long)z*r[j]%P;v[j]=q<0?q+P:q;}}return -1;};
 cerr<<"rows "<<shifts.size()<<" monomials "<<M<<"\n";
 for(auto s:shifts){fill(v.begin(),v.end(),0);for(auto t:fs[s.f].ts){int j=ix[index(s.a+t.a,s.b+t.b,s.c+t.c)];long long z=t.v%P;if(z<0)z+=P;v[j]=z;}reduce(true);done++;if(done%100==0)cerr<<"processed "<<done<<" rank "<<rank<<" seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";}
 fill(v.begin(),v.end(),0);for(auto t:fs.back().ts){int j=ix[index(t.a,t.b,t.c)];long long z=t.v%P;if(z<0)z+=P;v[j]=z;}
 int obstruction=reduce(false); if(obstruction>=0){piv.push_back(obstruction);pv.push_back(v[obstruction]);det_product=det_product*v[obstruction]%P;} ofstream cert(argv[3]);cert<<"{\"prime\":"<<P<<",\"minor_order\":"<<piv.size()<<",\"determinant_mod_p\":"<<det_product<<",\"columns_in_row_order\":[";for(int i=0;i<(int)piv.size();i++){if(i)cert<<",";cert<<piv[i];}cert<<"],\"elimination_pivots\":[";for(int i=0;i<(int)pv.size();i++){if(i)cert<<",";cert<<pv[i];}cert<<"]}\n";
 out<<"{\"prime\":"<<P<<",\"rows\":"<<shifts.size()<<",\"monomials\":"<<M<<",\"rank\":"<<rank<<",\"target_in_span\":"<<(obstruction<0?"true":"false")<<",\"seconds\":"<<chrono::duration<double>(chrono::steady_clock::now()-start).count();
 if(obstruction>=0){auto t=mons[obstruction];out<<",\"first_unreduced_exponent\":["<<t[0]<<","<<t[1]<<","<<t[2]<<"],\"coefficient\":"<<v[obstruction];}out<<"}\n";
}


