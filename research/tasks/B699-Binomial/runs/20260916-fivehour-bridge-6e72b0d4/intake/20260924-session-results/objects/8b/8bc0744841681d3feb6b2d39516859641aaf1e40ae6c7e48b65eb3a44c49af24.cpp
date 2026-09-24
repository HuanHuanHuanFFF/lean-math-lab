// Exact finite-field squarefree/distinct-degree factor count, including multiplicity.
#include <bits/stdc++.h>
using namespace std;
using Poly=vector<int>;
constexpr int P=11;
void trim(Poly& a){while(!a.empty()&&!a.back())a.pop_back();}
int md(long long x){int y=x%P;return y<0?y+P:y;}
int pw(int a,int k){int z=1;for(;k;k>>=1,a=md(a*a))if(k&1)z=md(z*a);return z;}
Poly remd(Poly a,const Poly&b){if(b.empty())throw runtime_error("division zero");int iv=pw(b.back(),P-2);while(a.size()>=b.size()){
 int n=a.size()-b.size(),c=md(a.back()*iv);for(size_t i=0;i<b.size();i++)a[n+i]=md(a[n+i]-c*b[i]);trim(a);}return a;}
Poly divq(Poly a,const Poly&b){if(b.empty())throw runtime_error("division zero");Poly q(max(0,(int)a.size()-(int)b.size()+1));int iv=pw(b.back(),P-2);while(a.size()>=b.size()){
 int n=a.size()-b.size(),c=md(a.back()*iv);q[n]=c;for(size_t i=0;i<b.size();i++)a[n+i]=md(a[n+i]-c*b[i]);trim(a);}if(!a.empty())throw runtime_error("nonexact quotient");trim(q);return q;}
Poly monic(Poly a){if(a.empty())return a;int iv=pw(a.back(),P-2);for(int &x:a)x=md(x*iv);return a;}
Poly gcdp(Poly a,Poly b){while(!b.empty()){Poly c=remd(a,b);a=move(b);b=move(c);}return monic(a);}
Poly frob(const Poly&a,const Poly&m){Poly z(a.empty()?0:P*(a.size()-1)+1);for(size_t i=0;i<a.size();i++)z[P*i]=a[i];trim(z);return remd(z,m);}
struct Block{int d,m;Poly f;};
vector<pair<Poly,int>> sqfree(Poly f){f=monic(f);vector<pair<Poly,int>>out;if(f.size()<=1)return out;
 Poly der(f.size()-1);for(size_t i=1;i<f.size();i++)der[i-1]=md((long long)i*f[i]);trim(der);
 Poly c=gcdp(f,der),w=divq(f,c);int i=1;
 while(w.size()>1){Poly y=gcdp(w,c),z=divq(w,y);if(z.size()>1)out.emplace_back(z,i);w=move(y);c=divq(c,w);i++;}
 if(c.size()>1){Poly root((c.size()-1)/P+1);for(size_t k=0;k<c.size();k++)if(k%P){if(c[k])throw runtime_error("not p-power");}else root[k/P]=c[k];for(auto [a,b]:sqfree(root))out.emplace_back(a,b*P);}
 return out;}
vector<Block> dd(Poly f,int m){vector<Block>out;Poly z{0,1};int d=1;
 while(f.size()>1 && 2*d<=(int)f.size()-1){z=frob(z,f);Poly zz=z;if(zz.size()<2)zz.resize(2);zz[1]=md(zz[1]-1);trim(zz);Poly g=gcdp(zz,f);
 if(g.size()>1){out.push_back({d,m,g});f=divq(f,g);if(f.size()>1)z=remd(z,f);}d++;}
 if(f.size()>1)out.push_back({(int)f.size()-1,m,f});return out;}
vector<Block> blocks(Poly f){vector<Block>z;for(auto [v,m]:sqfree(f)){auto q=dd(v,m);z.insert(z.end(),q.begin(),q.end());}return z;}
int main(int argc,char**argv){if(argc<5)throw runtime_error("trace prime output certificate_threshold [strictmax] ");if(stoi(argv[2])!=P)throw runtime_error("this certificate generator is fixed at prime 11");int threshold=stoi(argv[4]);
 ifstream in(argv[1]);string line;map<int,vector<Poly>>bas;int h=-1;vector<int>ids;while(getline(in,line)){istringstream s(line);string t;s>>t;if(t=="p"){int pp;string w;s>>pp>>w>>h;}if(t=="POLY"){int b,w,n;s>>b>>w>>n;Poly v;int x;while(s>>x)v.push_back(x);if(w!=2*h)throw runtime_error("lower weight requires expanded kernel basis");bas[n].push_back(v);}}
 if(bas.empty())throw runtime_error("no basis");int dim=bas.begin()->second.size();vector<int>ns;for(auto &[n,b]:bas)ns.push_back(n);stable_sort(ns.begin(),ns.end(),[](int a,int b){return (a==0?999:a)<(b==0?999:b);});
 ofstream out(argv[3]);out<<"p "<<P<<" h "<<h<<" dimension "<<dim<<" minimum_factor_degree 3 threshold "<<threshold<<'\n';
 vector<int>v(dim);long long count=0,sur=0,totaltests=0; long long lo=(argc>5?stoll(argv[5]):0),hi=(argc>6?stoll(argv[6]):LLONG_MAX);map<int,int>bounds;
 function<void(int)> leaf=[&](int unused){long long serial=count++;if(serial<lo||serial>=hi)return;int best=100000,chosen=-1;Poly chosenf;vector<Block>bs;
  for(int n:ns){Poly f(h+1);for(int b=0;b<dim;b++)for(int k=0;k<=h;k++)f[k]=md(f[k]+v[b]*bas[n][b][k]);trim(f);if(f.empty())continue;
   auto data=blocks(f);totaltests++;int omega=0;for(auto &x:data){int d=x.f.size()-1;if(d%x.d)throw runtime_error("block degree");omega+=d/x.d*x.m;}
   int bound=(h-((int)f.size()-1))/3+omega;
   if(bound<best){best=bound;chosen=n;chosenf=f;bs=move(data);}if(best<threshold)break;
  }
  out<<"POINT";for(int x:v)out<<' '<<x;out<<" AT "<<chosen<<" BOUND "<<best<<" DEG "<<(int)chosenf.size()-1<<" LC "<<(chosenf.empty()?0:chosenf.back())<<" BLOCKS "<<bs.size()<<'\n';
  for(auto &x:bs){out<<x.d<<' '<<x.m<<' '<<x.f.size()-1;for(int a:x.f)out<<' '<<a;out<<'\n';}
  bounds[best]++;if(best>=threshold)sur++;
 };
 function<void(int)> rec=[&](int i){if(i==dim){leaf(0);return;}for(int k=0;k<P;k++){v[i]=k;rec(i+1);}};
 for(int lead=0;lead<dim;lead++){fill(v.begin(),v.end(),0);v[lead]=1;rec(lead+1);}
 cout<<"DIM "<<dim<<" POINTS "<<count<<" TESTS "<<totaltests<<" SURVIVORS "<<sur<<" BOUNDS";for(auto [b,n]:bounds)cout<<' '<<b<<':'<<n;cout<<'\n';
}
