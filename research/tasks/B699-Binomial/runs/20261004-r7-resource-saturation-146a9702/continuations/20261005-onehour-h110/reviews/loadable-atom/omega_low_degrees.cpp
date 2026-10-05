// Independent multiplicity counting: characteristic-p squarefree peeling + Berlekamp nullity.
#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <vector>
using namespace std;using Poly=vector<int>;
void trim(Poly&a){while(!a.empty()&&a.back()==0)a.pop_back();}
template<int P>struct Algebra{
 static int inv(int a){if(!a)throw runtime_error("inverse zero");int n=P-2,z=1,b=a;for(;n;n>>=1,b=b*b%P)if(n&1)z=z*b%P;if(z*a%P!=1)throw runtime_error("inverse mismatch");return z;}
 static Poly monic(Poly a){trim(a);if(a.empty())throw runtime_error("zero polynomial");int v=inv(a.back());for(int&x:a)x=x*v%P;return a;}
 static Poly mul(const Poly&a,const Poly&b){if(a.empty()||b.empty())return {};vector<long long>v(a.size()+b.size()-1);for(size_t i=0;i<a.size();i++)for(size_t j=0;j<b.size();j++)v[i+j]+=(long long)a[i]*b[j];Poly z(v.size());for(size_t i=0;i<v.size();i++)z[i]=v[i]%P;trim(z);return z;}
 static pair<Poly,Poly> divide(Poly a,const Poly&b){if(b.empty())throw runtime_error("divide zero");Poly q(a.size()>=b.size()?a.size()-b.size()+1:0);int iv=inv(b.back());while(!a.empty()&&a.size()>=b.size()){int s=a.size()-b.size(),z=a.back()*iv%P;q[s]=z;for(size_t i=0;i<b.size();i++)a[s+i]=(a[s+i]+P*P-z*b[i])%P;trim(a);}trim(q);return {q,a};}
 static Poly mod(Poly a,const Poly&f){return divide(a,f).second;}
 static Poly quotient(const Poly&a,const Poly&b){auto z=divide(a,b);if(!z.second.empty())throw runtime_error("nonexact division");return z.first;}
 static Poly gcd(Poly a,Poly b){while(!b.empty()){Poly z=mod(a,b);a=b;b=z;}return monic(a);}
 static Poly derivative(const Poly&a){Poly z(a.size()>0?a.size()-1:0);for(size_t i=1;i<a.size();i++)z[i-1]=(i%P)*a[i]%P;trim(z);return z;}
 static Poly power(Poly a,int n,const Poly&f){Poly z{1};for(;n;n>>=1){if(n&1)z=mod(mul(z,a),f);if(n>1)a=mod(mul(a,a),f);}return z;}

 static Poly minusX(Poly a){a.resize(max(size_t(2),a.size()));a[1]=(a[1]+P-1)%P;trim(a);return a;}
 static pair<int,int> lowCounts(Poly f){f=monic(f);if(f.size()==1)return {0,0};Poly c=gcd(f,derivative(f)),w=quotient(f,c);int i=1,l=0,q=0;
  while(w!=Poly{1}){Poly y=gcd(w,c),z=quotient(w,y);if(z!=Poly{1}){if(gcd(z,derivative(z))!=Poly{1})throw runtime_error("low layer not squarefree");Poly xp=power(Poly{0,1},P,z),xp2=power(xp,P,z);int a=gcd(z,minusX(xp)).size()-1,b=gcd(z,minusX(xp2)).size()-1;if(b<a||(b-a)%2)throw runtime_error("low spectrum parity");l+=i*a;q+=i*((b-a)/2);}w=y;c=quotient(c,y);i++;}
  if(c!=Poly{1}){if(!derivative(c).empty())throw runtime_error("low p-root derivative");Poly root((c.size()-1)/P+1);for(size_t j=0;j<c.size();j++)if(c[j]){if(j%P)throw runtime_error("low p-root support");root[j/P]=c[j];}trim(root);auto r=lowCounts(root);l+=P*r.first;q+=P*r.second;}return {l,q};
 }
 static int linearValuations(Poly f){int n=0;for(int r=0;r<P;r++)while(f.size()>1){int v=0;for(auto it=f.rbegin();it!=f.rend();it++)v=(v*r+*it)%P;if(v)break;Poly g(f.size()-1);g.back()=f.back();for(int j=(int)g.size()-2;j>=0;j--)g[j]=(f[j+1]+r*g[j+1])%P;if((f[0]+r*g[0])%P)throw runtime_error("synthetic division mismatch");f=g;n++;}return n;}
 static long long matrix_entries,berlekamp_calls,root_calls,squarefree_layers;
 static int distinct(const Poly&f){int n=f.size()-1;if(n==0)return 0;if(gcd(f,derivative(f))!=Poly{1})throw runtime_error("layer not squarefree");berlekamp_calls++;matrix_entries+=1LL*n*n;Poly xp=power(Poly{0,1},P,f),v{1};vector<Poly>basis(n);int rank=0;
  for(int j=0;j<n;j++){Poly c=v;c.resize(n);c[j]=(c[j]+P-1)%P;for(int i=0;i<n;i++)if(c[i]){if(basis[i].empty()){int iv=inv(c[i]);for(int k=i;k<n;k++)c[k]=c[k]*iv%P;basis[i]=move(c);rank++;break;}int z=c[i];for(int k=i;k<n;k++)c[k]=(c[k]+P*P-z*basis[i][k])%P;}if(j+1<n)v=mod(mul(v,xp),f);}
  int answer=n-rank;if(answer<1||answer>n)throw runtime_error("nullity range");return answer;
 }
 static int omega(Poly f){f=monic(f);if(f.size()==1)return 0;Poly c=gcd(f,derivative(f)),w=quotient(f,c);int i=1,result=0;
  while(w!=Poly{1}){Poly y=gcd(w,c),z=quotient(w,y);if(z!=Poly{1}){squarefree_layers++;result+=i*distinct(z);}w=y;c=quotient(c,y);i++;if(i>(int)f.size()+1)throw runtime_error("peeling did not terminate");}
  if(c!=Poly{1}){if(!derivative(c).empty())throw runtime_error("inseparable residual derivative");Poly root((c.size()-1)/P+1);for(size_t j=0;j<c.size();j++)if(c[j]){if(j%P)throw runtime_error("not p-thpower support");root[j/P]=c[j];}trim(root);root_calls++;result+=P*omega(root);}
  if(result<1||result>(int)f.size()-1)throw runtime_error("omega range");return result;
 }
};
template<int P>long long Algebra<P>::matrix_entries=0;
template<int P>long long Algebra<P>::berlekamp_calls=0;
template<int P>long long Algebra<P>::root_calls=0;
template<int P>long long Algebra<P>::squarefree_layers=0;
int main(int argc,char**argv){try{if(argc!=3)return 2;ifstream in(argv[1]);ofstream out(argv[2]);int count;if(!(in>>count)||count<1)throw runtime_error("header");auto start=chrono::steady_clock::now();out<<"{\"method\":\"squarefree decomposition and Berlekamp nullity\",\"cases\":[";
 for(int j=0;j<count;j++){int p,d,expected,expected1,expected2;if(!(in>>p>>d>>expected>>expected1>>expected2)||d<0||d>1000)throw runtime_error("case header");Poly f(d+1);for(int&x:f)if(!(in>>x)||x<0||x>=p)throw runtime_error("coefficients");if(!f.back())throw runtime_error("degree mismatch");int got=p==11?Algebra<11>::omega(f):p==257?Algebra<257>::omega(f):throw runtime_error("prime unsupported");if(expected>=0&&got!=expected)throw runtime_error("expected mismatch case"+to_string(j));auto low=p==11?Algebra<11>::lowCounts(f):Algebra<257>::lowCounts(f);int lv=p==11?Algebra<11>::linearValuations(f):Algebra<257>::linearValuations(f);if(lv!=low.first)throw runtime_error("linear valuation disagreement");if((expected1>=0&&low.first!=expected1)||(expected2>=0&&low.second!=expected2))throw runtime_error("low expected mismatch");int hi=got-low.first-low.second;if(hi<0||low.first+2*low.second+3*hi>d)throw runtime_error("spectrum range");if(j)out<<',';out<<"{\"index\":"<<j<<",\"prime\":"<<p<<",\"degree\":"<<d<<",\"omega\":"<<got<<",\"expected\":"<<expected<<",\"n1\":"<<low.first<<",\"n2\":"<<low.second<<",\"n_high\":"<<hi<<"}";if(j%256==255)cerr<<"checked "<<j+1<<" seconds "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";}
 string extra;if(in>>extra)throw runtime_error("trailing tokens");out<<"],\"verified\":true,\"case_count\":"<<count<<",\"berlekamp_calls\":"<<Algebra<11>::berlekamp_calls+Algebra<257>::berlekamp_calls<<",\"matrix_entries_total\":"<<Algebra<11>::matrix_entries+Algebra<257>::matrix_entries<<",\"p_root_calls\":"<<Algebra<11>::root_calls+Algebra<257>::root_calls<<",\"squarefree_layers\":"<<Algebra<11>::squarefree_layers+Algebra<257>::squarefree_layers<<",\"seconds\":"<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"}\n";cout<<"PASS "<<count<<" cases seconds="<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<"\n";return 0;
 }catch(const exception&e){cerr<<"REJECT "<<e.what()<<"\n";return 1;}}
