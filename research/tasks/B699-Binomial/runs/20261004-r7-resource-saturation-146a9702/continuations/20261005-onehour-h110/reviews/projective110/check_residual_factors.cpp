#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <map>
#include <stdexcept>
#include <string>
#include <vector>
using namespace std;constexpr int P=11;using Poly=vector<int>;
void trim(Poly&a){while(!a.empty()&&a.back()==0)a.pop_back();}
int scalarPow(int a,int n){int z=1;for(;n;n>>=1,a=a*a%P)if(n&1)z=z*a%P;return z;}
Poly mul(const Poly&a,const Poly&b){if(a.empty()||b.empty())return {};vector<long long>c(a.size()+b.size()-1);for(size_t i=0;i<a.size();i++)for(size_t j=0;j<b.size();j++)c[i+j]+=(long long)a[i]*b[j];Poly d(c.size());for(size_t i=0;i<c.size();i++)d[i]=c[i]%P;trim(d);return d;}
Poly rem(Poly a,const Poly&b){if(b.empty())throw runtime_error("division zero");int iv=scalarPow(b.back(),P-2);while(!a.empty()&&a.size()>=b.size()){int shift=a.size()-b.size(),z=a.back()*iv%P;for(size_t j=0;j<b.size();j++)a[shift+j]=(a[shift+j]+P*P-z*b[j])%P;trim(a);}return a;}
Poly sub(Poly a,const Poly&b){a.resize(max(a.size(),b.size()));for(size_t i=0;i<b.size();i++)a[i]=(a[i]+P-b[i])%P;trim(a);return a;}
Poly gcd(Poly a,Poly b){while(!b.empty()){Poly r=rem(a,b);a=b;b=r;}if(!a.empty()){int iv=scalarPow(a.back(),P-2);for(int &x:a)x=x*iv%P;}return a;}
Poly power(Poly a,int n,const Poly&f){Poly z{1};for(;n;n>>=1){if(n&1)z=rem(mul(z,a),f);if(n>1)a=rem(mul(a,a),f);}return z;}
vector<int> divisors(int n){vector<int>q;for(int x=2;x*x<=n;x++)if(n%x==0){q.push_back(x);while(n%x==0)n/=x;}if(n>1)q.push_back(n);return q;}
long long frobenius=0,gcdchecks=0;void rabin(const Poly&f){int d=f.size()-1;auto qs=divisors(d);Poly x{0,1},v=x;for(int j=1;j<=d;j++){v=power(v,P,f);frobenius++;for(int q:qs)if(j==d/q){if(gcd(f,sub(v,x))!=Poly{1})throw runtime_error("Rabin gcd");gcdchecks++;}}if(!rem(sub(v,x),f).empty())throw runtime_error("Rabin endpoint");}
int main(int argc,char**argv){try{if(argc!=3)return 2;auto start=chrono::steady_clock::now();ifstream in(argv[1]);ofstream out(argv[2]);int p,h,n;if(!(in>>p>>h>>n)||p!=P||h!=110||n!=528)throw runtime_error("header");for(int q=2;q*q<=P;q++)if(P%q==0)throw runtime_error("not prime");map<Poly,bool>cache;map<int,int>hist;int occurrences=0;out<<"{\"verified\":true,\"prime\":11,\"h\":110,\"directions\":[";
 for(int index=0;index<n;index++){
  int id,c,d,unit,nf,bound,omega;if(!(in>>id>>c>>d>>unit>>nf>>bound>>omega)||id!=index||c<0||c>=P||d<0||d>h||unit<=0||unit>=P||nf<0||nf>h)throw runtime_error("case header");Poly expected(d+1);for(int&x:expected)if(!(in>>x)||x<0||x>=P)throw runtime_error("expected coeff");if(expected.back()!=unit)throw runtime_error("degree/unit");Poly product{unit};int om=0,deg=0;
  for(int j=0;j<nf;j++){
   int dd,m;if(!(in>>dd>>m)||dd<1||dd>h||m<1||m>h)throw runtime_error("factor header");Poly f(dd+1);for(int&x:f)if(!(in>>x)||x<0||x>=P)throw runtime_error("factor coeff");if(f.back()!=1)throw runtime_error("not monic");
   if(cache.find(f)==cache.end()){rabin(f);cache.emplace(f,true);}for(int a=0;a<m;a++){product=mul(product,f);if(product.size()>size_t(h+1))throw runtime_error("too much degree");}om+=m;deg+=dd*m;occurrences++;
  }
  if(product!=expected||deg!=d||om!=omega||om+h-d!=bound||bound>110)throw runtime_error("product/bound");hist[bound]++;if(index)out<<',';out<<"{\"index\":"<<index<<",\"N\":"<<c<<",\"degree\":"<<d<<",\"omega\":"<<om<<",\"bound\":"<<bound<<",\"complete_factor_product\":true,\"all_factors_Rabin\":true}";
  if(index%32==31)cerr<<"verified "<<index+1<<" directions; unique factors "<<cache.size()<<"; seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";
 }
 string extra;if(in>>extra)throw runtime_error("trailing input");out<<"],\"factor_occurrences\":"<<occurrences<<",\"distinct_irreducible_polynomials\":"<<cache.size()<<",\"Frobenius_iterations\":"<<frobenius<<",\"Rabin_gcd_checks\":"<<gcdchecks<<",\"bound_histogram\":{";bool first=true;for(auto [b,k]:hist){if(!first)out<<',';first=false;out<<'\"'<<b<<"\":"<<k;}out<<"},\"seconds\":"<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"}\n";cout<<"PASS 528 factor_occurrences="<<occurrences<<" unique="<<cache.size()<<" seconds="<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";return 0;
 }catch(const exception&e){cerr<<"REJECT "<<e.what()<<"\n";return 1;}}


