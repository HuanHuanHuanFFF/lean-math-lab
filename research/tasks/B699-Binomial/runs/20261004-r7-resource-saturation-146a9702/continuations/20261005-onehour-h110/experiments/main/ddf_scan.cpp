#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
using namespace std;
template<int P> struct FieldPoly {
 using V=vector<int>;
 static void trim(V &a){while(!a.empty()&&!a.back())a.pop_back();}
 static int degree(const V&a){return int(a.size())-1;}
 static int power(int a,int n){int b=1;for(;n;n>>=1,a=a*a%P)if(n&1)b=b*a%P;return b;}
 static V monic(V a){trim(a);if(a.empty())return a;int t=power(a.back(),P-2);for(int &x:a)x=x*t%P;return a;}
 static V rem(V a,const V&b){if(b.empty())throw runtime_error("zero divisor");if(b.size()==1)return {};int inv=power(b.back(),P-2),n=degree(b);while(degree(a)>=n){int k=degree(a)-n,t=a.back()*inv%P;a.pop_back();for(int j=0;j<n;j++)a[k+j]=(a[k+j]+P*P-t*b[j])%P;trim(a);}return a;}
 static V quotient(V a,const V&b){if(b.empty())throw runtime_error("zero divisor");V q(max(0,degree(a)-degree(b)+1));int inv=power(b.back(),P-2),n=degree(b);while(degree(a)>=n){int k=degree(a)-n,t=a.back()*inv%P;q[k]=t;a.pop_back();for(int j=0;j<n;j++)a[k+j]=(a[k+j]+P*P-t*b[j])%P;trim(a);}if(!a.empty())throw runtime_error("inexact quotient");trim(q);return q;}
 static V gcd(V a,V b){while(!b.empty()){V c=rem(a,b);a=move(b);b=move(c);}return monic(a);}
 static V mulmod(const V&a,const V&b,const V&f){if(a.empty()||b.empty())return {};if(a.size()>1001||b.size()>1001)throw runtime_error("convolution bound");V c(a.size()+b.size()-1);for(size_t i=0;i<a.size();i++)for(size_t j=0;j<b.size();j++)c[i+j]+=a[i]*b[j];for(int &v:c)v%=P;trim(c);return rem(c,f);}
 static V frob(V a,const V&f){V z{1};int n=P;for(;n;n>>=1,a=mulmod(a,a,f))if(n&1)z=mulmod(z,a,f);return z;}
 static int squarefree_count(V f,int cap){f=monic(f);if(degree(f)<=0)return 0;int count=0;V x{0,1},z=rem(x,f);for(int d=1;2*d<=degree(f);d++){
  z=frob(z,f);V b=z;if(b.size()<2)b.resize(2);b[1]=(b[1]+P-1)%P;trim(b);V g=gcd(f,b);int k=degree(g);
  if(k>0){if(k%d)throw runtime_error("DDF degree not divisible");count+=k/d;if(count>=cap)return cap;f=quotient(f,g);if(degree(f)<=0)return count;z=rem(z,f);}
 }if(degree(f)>0)count++;return min(count,cap);}
 static int omega(V f,int cap=10000){trim(f);if(f.empty())throw runtime_error("zero polynomial");if(degree(f)<=0)return 0;if(cap<=0)return 0;V d(max(0,degree(f)));for(int i=1;i<(int)f.size();i++)d[i-1]=(i%P)*f[i]%P;trim(d);
  if(d.empty()){V r(degree(f)/P+1);for(int i=0;i<(int)f.size();i++){if(i%P&&f[i])throw runtime_error("bad pth root");if(i%P==0)r[i/P]=f[i];}return min(cap,P*omega(r,(cap+P-1)/P));}
  V g=gcd(f,d),w=quotient(f,g);int n=squarefree_count(w,cap);if(n>=cap)return cap;if(degree(g)>0)n+=omega(g,cap-n);return min(n,cap);
 }
};
template<int P> int checks(istream &in){using F=FieldPoly<P>;int n;in>>n;int ok=0;for(int i=0;i<n;i++){int id,degree,expected;in>>id>>degree>>expected;typename F::V f(degree+1);for(int &a:f){in>>a;if(a<0||a>=P)throw runtime_error("coefficient range");}int got=F::omega(f);if(got!=expected)throw runtime_error("omega mismatch id "+to_string(id)+" expected "+to_string(expected)+" got "+to_string(got));for(int cap=1;cap<=8;cap++)if(F::omega(f,cap)!=min(cap,expected))throw runtime_error("capped mismatch");ok++;}cout<<"CHECK_PASS prime="<<P<<" cases="<<ok<<" exact_and_caps1to8\n";return 0;}
int scan(const string&input,const string&prefix,int limit,int start){using F=FieldPoly<11>;ifstream in(input);int p,h,dim,nc;in>>p>>h>>dim>>nc;if(p!=11||h!=110||dim!=6||nc!=5)throw runtime_error("wrong scan contract");vector<int> cs(nc);vector<vector<vector<int>>> val(nc,vector<vector<int>>(dim,vector<int>(h+1)));for(int i=0;i<nc;i++){in>>cs[i];for(auto &v:val[i])for(int &a:v){in>>a;if(a<0||a>=11)throw runtime_error("value range");}}if(!in)throw runtime_error("short scan input");
 ofstream rows(prefix+".tsv"),bad(prefix+".residual.tsv");rows<<"id\tc\tdegree\tomega\tbound\n";bad<<"id\ta0\ta1\ta2\ta3\ta4\ta5\n";int id=0,done=0,passed=0,failed=0,attempts=0;auto t=chrono::steady_clock::now();
 for(int pivot=0;pivot<dim;pivot++){int tails=1;for(int j=pivot+1;j<dim;j++)tails*=11;for(int code=0;code<tails;code++,id++){if(id<start)continue;if(limit>=0&&done>=limit)goto complete;vector<int>a(dim);a[pivot]=1;int z=code;for(int j=dim-1;j>pivot;j--){a[j]=z%11;z/=11;}bool success=false;
  for(int ic=0;ic<nc;ic++){F::V f(h+1);for(int j=0;j<=h;j++){int q=0;for(int k=0;k<dim;k++)q+=a[k]*val[ic][k][j];f[j]=q%11;}F::trim(f);if(f.empty())continue;int deg=F::degree(f),loss=h-deg;if(loss>=7)continue;attempts++;int cnt=F::omega(f,7-loss);if(cnt+loss<=6){rows<<id<<'\t'<<cs[ic]<<'\t'<<deg<<'\t'<<cnt<<'\t'<<cnt+loss<<'\n';success=true;break;}}
  if(success)passed++;else{failed++;rows<<id<<"\t-1\t-1\t-1\t-1\n";bad<<id;for(int x:a)bad<<'\t'<<x;bad<<'\n';}done++;
  if(done%10000==0)cout<<"PROGRESS done="<<done<<" passed="<<passed<<" residual="<<failed<<" seconds="<<chrono::duration<double>(chrono::steady_clock::now()-t).count()<<'\n'<<flush;
 }}
 complete: double seconds=chrono::duration<double>(chrono::steady_clock::now()-t).count();ofstream report(prefix+".json");report<<"{\"prime\":11,\"h\":110,\"dimension\":6,\"start\":"<<start<<",\"limit\":"<<limit<<",\"total_projective\":177156,\"done\":"<<done<<",\"passed\":"<<passed<<",\"residual\":"<<failed<<",\"attempts\":"<<attempts<<",\"seconds\":"<<seconds<<"}\n";cout<<"SCAN_COMPLETE done="<<done<<" passed="<<passed<<" residual="<<failed<<" attempts="<<attempts<<" seconds="<<seconds<<'\n';return 0;
}
int main(int argc,char**argv){try{if(argc<2)throw runtime_error("mode");string mode=argv[1];if(mode=="check"){int p;cin>>p;if(p==11)return checks<11>(cin);if(p==257)return checks<257>(cin);throw runtime_error("prime");}if(mode=="scan"&&argc==6)return scan(argv[2],argv[3],stoi(argv[4]),stoi(argv[5]));throw runtime_error("arguments");}catch(const exception&e){cerr<<e.what()<<'\n';return 1;}}
