// Independent receiver: full coefficient jets, projective coverage, and Frobenius block checks.
// Does not use the creator's factorization, module updates, or specialization tail values.
#include <bits/stdc++.h>
using namespace std;using V=vector<int>;using Bivar=vector<V>;
constexpr int p=11;
int reduce_p(long long x){int t=x%p;return t<0?t+p:t;}
int ipow(int x,int n){int r=1;while(n){if(n&1)r=reduce_p(r*x);x=reduce_p(x*x);n>>=1;}return r;}
void clean(V &a){while(!a.empty()&&a.back()==0)a.pop_back();}
V add(V a,const V&b,int sign=1){a.resize(max(a.size(),b.size()));for(size_t i=0;i<b.size();i++)a[i]=reduce_p(a[i]+sign*b[i]);clean(a);return a;}
V times(const V&a,const V&b){if(a.empty()||b.empty())return {};V c(a.size()+b.size()-1);for(size_t i=0;i<a.size();i++)for(size_t j=0;j<b.size();j++)c[i+j]=reduce_p(c[i+j]+a[i]*b[j]);clean(c);return c;}
V residue(V a,const V&f){if(f.empty())throw runtime_error("zero divisor");int inv=ipow(f.back(),p-2);for(int k=(int)a.size()-(int)f.size();k>=0;k--){int t=reduce_p(a[k+f.size()-1]*inv);if(t)for(size_t j=0;j<f.size();j++)a[k+j]=reduce_p(a[k+j]-t*f[j]);}if(a.size()>=f.size())a.resize(f.size()-1);clean(a);return a;}
V power(V x,int e,const V&f){V z{1};while(e){if(e&1)z=residue(times(z,x),f);e>>=1;if(e)x=residue(times(x,x),f);}return z;}
V euclid(V a,V b){while(!b.empty()){auto r=residue(a,b);a=b;b=r;}if(!a.empty()){int v=ipow(a.back(),p-2);for(int &x:a)x=reduce_p(x*v);}return a;}
vector<int> primes(int d){vector<int> q;for(int x=2;x*x<=d;x++)if(d%x==0){q.push_back(x);while(d%x==0)d/=x;}if(d>1)q.push_back(d);return q;}
void require(bool x,const string&s){if(!x)throw runtime_error(s);}
void pure_degree(const V&f,int d){require(f.size()>1&&f.back()==1&&d>0&&((int)f.size()-1)%d==0,"block degree/monicity");
 set<int> check;for(int r:primes(d))check.insert(d/r);
 const int n=f.size()-1; vector<V> T(n,V(n));T[0][0]=1;
 for(int i=1;i<n;i++){
  V z(n+p);for(int j=0;j<n;j++)z[j+p]=T[i-1][j];
  auto a=residue(z,f);for(int j=0;j<(int)a.size();j++)T[i][j]=a[j];
 }
 V x=residue(V{0,1},f),cur=x;cur.resize(n);
 for(int i=1;i<=d;i++){
  V acc(n);for(int a=0;a<n;a++)if(cur[a])for(int b=0;b<n;b++)acc[b]+=cur[a]*T[a][b];
  for(int b=0;b<n;b++)cur[b]=reduce_p(acc[b]);
  if(check.count(i))require(euclid(f,add(cur,x,-1))==V{1},"proper subfield factor");
 }
 clean(cur);require(cur==x,"Frobenius identity");
}
struct Basis {int h,dim;vector<Bivar> f;};
Basis load_basis(const string&path){ifstream in(path);require(bool(in),"basis missing");string s;int pp,h,d;in>>s>>pp;require(s=="p"&&pp==p,"basis field");in>>s>>h;require(s=="h","header");in>>s>>d;require(s=="dimension","header");Basis B{h,d,{}};
 for(int k=0;k<d;k++){int id,w;in>>s>>id>>w;require(s=="BASIS"&&w==2*h,"basis header");Bivar f;
  for(int b=0;b<=h;b++){int bb,dd;in>>bb>>dd;require(bb==b&&dd>=-1&&dd<=2*h-2*b,"degree bound");V z(dd+1);for(int &x:z){in>>x;require(x>=0&&x<p,"coefficient residue");}require(z.empty()||z.back()!=0,"untrimmed coefficient");f.push_back(z);}B.f.push_back(f);
 }
 require(bool(in),"truncated basis");string rest;require(!(in>>rest),"trailing basis payload");
 vector<V> flat;for(auto&f:B.f){V r((h+1)*(h+1));int z=0;for(int b=0;b<=h;b++)for(int a=0;a<=2*h-2*b;a++)r[z++]=(a<(int)f[b].size()?f[b][a]:0);flat.push_back(r);}
 int rank=0;for(size_t col=0;col<flat[0].size()&&rank<d;col++){int a=rank;while(a<d&&!flat[a][col])a++;if(a==d)continue;swap(flat[a],flat[rank]);int iv=ipow(flat[rank][col],p-2);for(size_t j=col;j<flat[0].size();j++)flat[rank][j]=reduce_p(flat[rank][j]*iv);for(int i=rank+1;i<d;i++){int c=flat[i][col];for(size_t j=col;j<flat[0].size();j++)flat[i][j]=reduce_p(flat[i][j]-c*flat[rank][j]);}rank++;}require(rank==d,"basis independence");return B;
}
long long check_jets(const Basis&B,const V&v){
 int h=B.h,L=2*h+1;vector<V>C(L,V(L));for(int a=0;a<L;a++){C[a][0]=C[a][a]=1;for(int j=1;j<a;j++)C[a][j]=reduce_p(C[a-1][j-1]+C[a-1][j]);}
 vector<V>OFF{{77,74},{67,57},{51,54,46},{40,43,48},{31,34,39,45},{25,28,33,39}};V D{0,56,0,41,0,52};long long checks=0;
 for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++){
  bool diag=2*s==r;int M=max(0,(diag?D[r-3]:OFF[r-3][s])-v[r-3]);if(!M)continue;int value=s*(r-s),shear=diag?s:0;
  V rp(L,1),vp(L,1),sp(L,1);for(int a=1;a<L;a++){rp[a]=reduce_p(rp[a-1]*r);vp[a]=reduce_p(vp[a-1]*value);sp[a]=reduce_p(sp[a-1]*shear);}
  for(const auto&F:B.f){vector<V>N(h+1,V(M));
   for(int b=0;b<=h;b++)for(int i=0;i<M;i++){long long val=0;for(int a=i;a<(int)F[b].size();a++)val+=(long long)F[b][a]*C[a][i]*rp[a-i];N[b][i]=reduce_p(val);}
   for(int j=0;j<M;j++)for(int i=0;i+(diag?2:1)*j<M;i++){
    long long val=0;for(int b=j;b<=h;b++)for(int z=0;z<=min(b-j,diag?i:0);z++)
     val+=(long long)C[b][j]*C[b-j][z]*vp[b-j-z]*sp[z]*N[b][i-z];
    require(reduce_p(val)==0,"raw coefficient jet is nonzero");checks++;
   }
  }
 }
 return checks;
}
V specialize(const Basis&B,const V&u,int n){V z(B.h+1);for(int b=0;b<=B.h;b++)for(int k=0;k<B.dim;k++){int a=0;const auto&f=B.f[k][b];for(int i=(int)f.size()-1;i>=0;i--)a=reduce_p(a*n+f[i]);z[b]=reduce_p(z[b]+u[k]*a);}clean(z);return z;}
int main(int argc,char**argv){require(argc>=9,"basis v3..v8 certificate files...");Basis B=load_basis(argv[1]);V v;for(int i=2;i<8;i++)v.push_back(stoi(argv[i]));auto jets=check_jets(B,v);set<V> points;map<int,int> histogram;long long blockchecks=0;
 bool partial=string(argv[8])=="--partial"; require(!partial||argc>=10,"missing slice certificate");
 for(int path=(partial?9:8);path<argc;path++){ifstream in(argv[path]);require(bool(in),"certificate missing");string s;int val;in>>s>>val;require(s=="p"&&val==p,"certificate prime");in>>s>>val;require(s=="h"&&val==B.h,"certificate h");in>>s>>val;require(s=="dimension"&&val==B.dim,"certificate dimension");in>>s>>val;require(s=="minimum_factor_degree"&&val==3,"minimum factor degree");in>>s>>val;require(s=="threshold"&&val==8,"threshold");
  while(in>>s){require(s=="POINT","point header");V u(B.dim);for(int &x:u){in>>x;require(x>=0&&x<p,"coordinate residue");}int lead=0;while(lead<B.dim&&!u[lead])lead++;require(lead<B.dim&&u[lead]==1,"noncanonical projective point");require(points.insert(u).second,"duplicate point");
   int n,bound,deg,lc,nb;in>>s>>n;require(s=="AT","AT");in>>s>>bound;require(s=="BOUND","BOUND");in>>s>>deg;require(s=="DEG","DEG");in>>s>>lc;require(s=="LC","LC");in>>s>>nb;require(s=="BLOCKS","BLOCKS");
   require(n>=0&&n<p,"evaluation point");V f=specialize(B,u,n);require(!f.empty()&&(int)f.size()-1==deg&&f.back()==lc,"specialization mismatch");V product{1};int omega=0;
   for(int b=0;b<nb;b++){int d,m,D;in>>d>>m>>D;require(d>=1&&m>=1&&m<=B.h&&D>=1&&D<=B.h,"block header bounds");V g(D+1);for(int &x:g){in>>x;require(x>=0&&x<p,"factor coefficient");}pure_degree(g,d);blockchecks++;for(int a=0;a<m;a++)product=times(product,g);omega+=D/d*m;}
   for(int &a:product){a=reduce_p(a*lc);}require(product==f,"factor block product");require(bound==(B.h-deg)/3+omega&&bound<8,"factor count bound");require(bool(in),"truncated point");histogram[bound]++;
  }
 }
 long long expected=0,z=1;for(int i=0;i<B.dim;i++){expected+=z;z*=p;}if(!partial){require((long long)points.size()==expected,"incomplete projective cover");}
 cout<<(partial?"PASS_INDEPENDENT_COVER_SLICE h ":"PASS_INDEPENDENT_COVER h ")<<B.h<<" dimension "<<B.dim<<" points "<<points.size()<<" full_coefficient_jet_checks "<<jets<<" factor_blocks "<<blockchecks<<" bounds";for(auto[b,n]:histogram)cout<<' '<<b<<':'<<n;cout<<'\n';
}
