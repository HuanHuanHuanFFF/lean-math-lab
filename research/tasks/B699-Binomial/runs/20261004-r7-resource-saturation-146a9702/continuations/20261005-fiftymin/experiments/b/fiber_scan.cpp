#include <algorithm>
#include <chrono>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <string>
#include <vector>
using namespace std;
struct Term{int u,y,r;long long c;};struct Poly3{string name;int du=0,dr=0;vector<Term>terms;vector<vector<int>>uy;};
int P;vector<int> invs;using V=vector<int>;
void trim(V&a){while(!a.empty()&&!a.back())a.pop_back();}
int mod(long long c){c%=P;return c<0?c+P:c;}
V rem(V a,const V&b){while(a.size()>=b.size()&&!a.empty()){int k=a.size()-b.size(),z=(long long)a.back()*invs[b.back()]%P;for(int i=0;i<(int)b.size();i++)a[k+i]=mod(a[k+i]-(long long)z*b[i]);trim(a);}return a;}
V quo(V a,const V&b){V q(max(0,(int)a.size()-(int)b.size()+1));while(a.size()>=b.size()&&!a.empty()){int k=a.size()-b.size(),z=(long long)a.back()*invs[b.back()]%P;q[k]=z;for(int i=0;i<(int)b.size();i++)a[k+i]=mod(a[k+i]-(long long)z*b[i]);trim(a);}if(!a.empty())throw string("nonexact quotient");trim(q);return q;}
V gcd(V a,V b){while(!b.empty()){V r=rem(a,b);a=move(b);b=move(r);}if(!a.empty()){int iv=invs[a.back()];for(auto &z:a)z=(long long)z*iv%P;}return a;}
V mul(const V&a,const V&b){if(a.empty()||b.empty())return {};V c(a.size()+b.size()-1);for(int i=0;i<(int)a.size();i++)for(int j=0;j<(int)b.size();j++)c[i+j]=mod(c[i+j]+(long long)a[i]*b[j]);trim(c);return c;}
V eval(const Poly3&f,int u){V v(f.dr+1);for(int k=0;k<=f.dr;k++)for(int i=f.du;i>=0;i--)v[k]=mod((long long)v[k]*u+f.uy[k][i]);trim(v);return v;}
void pv(ostream&o,const V&v){o<<"[";for(int j=0;j<(int)v.size();j++){if(j)o<<",";o<<v[j];}o<<"]";}
int main(int argc,char**argv){
 if(argc!=4)return 2;P=stoi(argv[2]);if(P<7||P>40000)return 3;for(int d=2;d*d<=P;d++)if(P%d==0)return 4;
 invs.resize(P);invs[1]=1;for(int i=2;i<P;i++)invs[i]=P-(long long)(P/i)*invs[P%i]%P;
 ifstream in(argv[1]);int ng;if(!(in>>ng)||ng!=9)return 5;vector<Poly3>fs(ng);for(auto &f:fs){int n;in>>f.name>>n;for(int j=0;j<n;j++){Term t;in>>t.u>>t.y>>t.r>>t.c;f.du=max(f.du,t.u);f.dr=max(f.dr,t.r);f.terms.push_back(t);}f.uy=vector<vector<int>>(f.dr+1,vector<int>(f.du+1));}if(!in)return 6;string extra;if(in>>extra)return 7;
 auto start=chrono::steady_clock::now();long long count=0,common=0,allowed=0;vector<long long>stages(6);map<int,int>degrees,satdegrees;ofstream out(argv[3]);out<<"{\"prime\":"<<P<<",\"common_fibres\":[";bool comma=false;
 for(int y=2;y<P;y++){
  vector<int>yp(64,1);for(int j=1;j<64;j++)yp[j]=(long long)yp[j-1]*y%P;
  for(auto &f:fs){for(auto &v:f.uy)fill(v.begin(),v.end(),0);for(auto t:f.terms)f.uy[t.r][t.u]=mod(f.uy[t.r][t.u]+(long long)mod(t.c)*yp[t.y]);}
  for(int u=2;u<P;u++){
   if(mod((long long)u*y-y+1)==0)continue;count++;
   V p=eval(fs[0],u),v0=eval(fs[5],u);if(v0.size()!=10){cerr<<"V0 degree loss";return 8;}V g=gcd(p,v0);if(g.size()<2)continue;stages[0]++;
   for(int k=1;k<=4&&g.size()>1;k++){g=gcd(g,eval(fs[k],u));if(g.size()>1)stages[k]++;}
   if(g.size()<2)continue;common++;degrees[g.size()-1]++;
   V N=eval(fs[6],u),K=eval(fs[7],u),D=eval(fs[8],u),s=mul(V{0,1},mul(N,mul(K,D)));V sat=g;
   while(sat.size()>1){V d=gcd(sat,s);if(d.size()<2)break;sat=quo(sat,d);}
   if(sat.size()>1){allowed++;satdegrees[sat.size()-1]++;}
   if(comma)out<<",";comma=true;out<<"{\"u\":"<<u<<",\"y\":"<<y<<",\"gcd\":";pv(out,g);out<<",\"saturated\":";pv(out,sat);out<<"}";
  }
  if(y%64==0&&chrono::duration<double>(chrono::steady_clock::now()-start).count()>60){cerr<<"TIMEOUT";return 9;}
 }
 double sec=chrono::duration<double>(chrono::steady_clock::now()-start).count();out<<"],\"base_points\":"<<count<<",\"common_count\":"<<common<<",\"allowed_count\":"<<allowed<<",\"stages\":[";for(int i=0;i<5;i++){if(i)out<<",";out<<stages[i];}out<<"],\"seconds\":"<<sec<<"}\n";
 cout<<"{\"prime\":"<<P<<",\"base_points\":"<<count<<",\"common_fibres\":"<<common<<",\"allowed_fibres\":"<<allowed<<",\"seconds\":"<<sec<<"}\n";
}
