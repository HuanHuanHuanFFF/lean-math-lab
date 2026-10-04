#include <algorithm>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
using namespace std; constexpr int p=11;
int main(int argc,char**argv){
 if(argc!=3)return 2; ifstream in(argv[1]);int e,D,pp,mode,k;
 if(!(in>>e>>D>>pp>>mode>>k)||e!=114||D!=305||pp!=p||mode!=0||k!=21)return 3;
 struct Point{int r,s,w,m;};vector<Point> pts(k);for(auto &q:pts)if(!(in>>q.r>>q.s>>q.w>>q.m)||q.r<3||q.r>8||q.s<0||q.s>q.r/2||q.m<1||(q.w!=1&&q.w!=2)||(q.w==2&&q.r!=2*q.s))return 4;string extra;if(in>>extra)return 5;
 ifstream f(argv[2]);string header;getline(f,header);if(header!="a\tb\tcoefficient")return 6;
 vector<vector<int>> c(e+1,vector<int>(D+1));int a,b,v,terms=0,dx=-1,dw=-1;vector<vector<bool>>seen(e+1,vector<bool>(D+1));
 while(f>>a>>b>>v){if(a<0||b<0||b>e||a+2*b>D||v<=0||v>=p||seen[b][a])return 7;seen[b][a]=true;c[b][a]=v;terms++;dx=max(dx,b);dw=max(dw,a+2*b);}if(!f.eof())return 8;
 if(terms<=0||dx>114||dw!=305)return 9;
 int total=0;cout<<"{\"prime\":11,\"terms\":"<<terms<<",\"q\":"<<dx<<",\"D\":"<<dw<<",\"sources\":[";
 for(int z=0;z<k;z++){
  auto q=pts[z];int m=q.m,x=q.s*(q.r-q.s),shear=q.w==2?q.s:0;
  vector<vector<int>> nc(e+1,vector<int>(m));
  // Direct truncated univariate Horner: p_b(r+u), independent of module trace.
  for(int j=0;j<=e;j++)for(int n=D;n>=0;n--){for(int i=m-1;i>0;i--)nc[j][i]=(q.r*nc[j][i]+nc[j][i-1])%p;nc[j][0]=(q.r*nc[j][0]+c[j][n])%p;}
  vector<int>cur(m*m),next(m*m);auto ix=[&](int i,int j){return i*m+j;};
  // Direct P(r+u,x+shear*u+t), discarded only a+w*b>=m.
  for(int j=e;j>=0;j--){fill(next.begin(),next.end(),0);for(int tb=0;q.w*tb<m;tb++)for(int ua=0;ua+q.w*tb<m;ua++){
   int n=x*cur[ix(ua,tb)]+(tb?cur[ix(ua,tb-1)]:0)+(ua?shear*cur[ix(ua-1,tb)]:0)+(tb==0?nc[j][ua]:0);next[ix(ua,tb)]=n%p;
  }cur.swap(next);}
  int count=0;for(int tb=0;q.w*tb<m;tb++)for(int ua=0;ua+q.w*tb<m;ua++){count++;if(cur[ix(ua,tb)]){cerr<<"NONZERO source="<<z<<" u="<<ua<<" t="<<tb<<" value="<<cur[ix(ua,tb)]<<"\n";return 10;}}
  total+=count;if(z)cout<<',';cout<<"{\"r\":"<<q.r<<",\"s\":"<<q.s<<",\"weight\":"<<q.w<<",\"required_order\":"<<q.m<<",\"all_zero_jets\":"<<count<<"}";
 }
 cout<<"],\"conditions_checked\":"<<total<<",\"all_source_jets_zero\":true}\n";return total==23476?0:11;
}



