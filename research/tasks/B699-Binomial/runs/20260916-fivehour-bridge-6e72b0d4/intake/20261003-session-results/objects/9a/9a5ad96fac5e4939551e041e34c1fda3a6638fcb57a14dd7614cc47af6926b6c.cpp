#include <vector>
#include <iostream>
#include <fstream>
#include <algorithm>
#include <string>
using namespace std;int p=32003;
int md(long long a){a%=p;if(a<0)a+=p;return a;}int pw(int a,int e){int b=1;for(;e;e>>=1,a=md((long long)a*a))if(e&1)b=md((long long)b*a);return b;}
using Poly=vector<int>;
void trim(Poly&x){while(!x.empty()&&!x.back())x.pop_back();}
Poly rem(Poly a,const Poly&b){int n=b.size()-1,inv=pw(b.back(),p-2);for(int k=(int)a.size()-1;k>=n;--k){int q=md((long long)a[k]*inv);if(q)for(int j=0;j<=n;++j)a[k-n+j]=md(a[k-n+j]-(long long)q*b[j]);}trim(a);return a;}
int res(Poly a,Poly b){trim(a);trim(b);if(a.empty()||b.empty())return 0;int ans=1;while(b.size()>1){int m=a.size()-1,n=b.size()-1;if(m<n){if((m*n)&1)ans=md(-ans);swap(a,b);continue;}auto rr=rem(a,b);if(rr.empty())return 0;int k=rr.size()-1;ans=md((long long)ans*pw(b.back(),m-k));if((m*n)&1)ans=md(-ans);a=move(b);b=move(rr);}return md((long long)ans*pw(b[0],a.size()-1));}
int fixed(Poly a,Poly b){int m=a.size()-1,n=b.size()-1;trim(a);trim(b);if(a.empty()||b.empty())return 0;int mm=a.size()-1,nn=b.size()-1;if(mm<m&&nn<n)return 0;int f=1;if(mm<m){f=pw(b.back(),m-mm);if(((m-mm)*n)&1)f=md(-f);}if(nn<n)f=pw(a.back(),n-nn);return md((long long)f*res(a,b));}
vector<Poly> read(ifstream&f){int du,dy,n;f>>du>>dy>>n;vector<Poly> a(du+1,Poly(dy+1));for(int i=0;i<n;i++){int x,y;string z;f>>x>>y>>z;int c=0;bool neg=z[0]=='-';for(int j=neg;j<(int)z.size();++j)c=md((long long)c*10+z[j]-'0');a[x][y]=neg?md(-c):c;}return a;}
Poly eval(const vector<Poly>&a,int y){Poly b;for(auto &c:a){int v=0;for(int i=c.size()-1;i>=0;--i)v=md((long long)v*y+c[i]);b.push_back(v);}return b;}
int main(int argc,char**argv){if(argc>3)p=stoi(argv[3]);ifstream f(argv[1]);auto a=read(f),b=read(f);int B=(a.size()-1)*(b[0].size()-1)+(b.size()-1)*(a[0].size()-1);if(B>=p){cerr<<"badp";return 1;}Poly vals;for(int y=0;y<=B;++y)vals.push_back(fixed(eval(a,y),eval(b,y)));Poly coeff(B+1),cur{1};int fac=1;for(int k=0;k<=B;++k){int c=md((long long)vals[0]*pw(fac,p-2));for(int j=0;j<=k;++j)coeff[j]=md(coeff[j]+(long long)c*cur[j]);for(int j=0;j<B-k;++j)vals[j]=md(vals[j+1]-vals[j]);vals.pop_back();if(k<B){cur.push_back(0);for(int j=k+1;j>=0;--j)cur[j]=md((j?cur[j-1]:0)-(long long)k*cur[j]);fac=md((long long)fac*(k+1));}}
 trim(coeff);ofstream out(argv[2]);out<<p<<" "<<coeff.size()-1<<" "<<B<<"\n";for(auto c:coeff)out<<c<<" ";out<<"\n";cerr<<"bound "<<B<<" actual "<<coeff.size()-1<<" LC "<<coeff.back()<<"\n";
}
