#include <algorithm>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
using namespace std;constexpr int P=11;
int main(int argc,char**argv){if(argc!=3)return 2;ifstream in(argv[1]);int e,D,p,mode,k;in>>e>>D>>p>>mode>>k;if(e!=152||D!=305||p!=P||mode||k!=21)return 3;struct Point{int r,s,w,m;};vector<Point>pts(k);for(auto&q:pts)in>>q.r>>q.s>>q.w>>q.m;
 ifstream f(argv[2]);string header;getline(f,header);if(header!="a\tb\tcoefficient")return 4;vector<vector<int>>c(e+1,vector<int>(D+1));int a,b,v,terms=0,dx=-1,dw=-1;while(f>>a>>b>>v){if(a<0||b<0||b>e||a+2*b>D||v<=0||v>=P||c[b][a])return 5;c[b][a]=v;terms++;dx=max(dx,b);dw=max(dw,a+2*b);}if(!f.eof())return 6;
 int total=0;cout<<"{\"prime\":11,\"terms\":"<<terms<<",\"q\":"<<dx<<",\"D\":"<<dw<<",\"sources\":[";
 for(int z=0;z<k;z++){auto q=pts[z];int m=q.m+3,x=q.s*(q.r-q.s)%P,shear=q.w==2?q.s:0;vector<vector<int>>nc(e+1,vector<int>(m));
  for(int j=0;j<=e;j++)for(int n=D;n>=0;n--){for(int i=m-1;i>0;i--)nc[j][i]=(q.r*nc[j][i]+nc[j][i-1])%P;nc[j][0]=(q.r*nc[j][0]+c[j][n])%P;}
  vector<int>cur(m*m),nxt(m*m);auto ix=[&](int i,int j){return i*m+j;};
  for(int j=e;j>=0;j--){fill(nxt.begin(),nxt.end(),0);for(int tb=0;q.w*tb<m;tb++)for(int ua=0;ua+q.w*tb<m;ua++){int v=x*cur[ix(ua,tb)]+(tb?cur[ix(ua,tb-1)]:0)+(ua?shear*cur[ix(ua-1,tb)]:0)+(tb==0?nc[j][ua]:0);nxt[ix(ua,tb)]=v%P;}cur.swap(nxt);}
  int count=0;for(int tb=0;q.w*tb<q.m;tb++)for(int ua=0;ua+q.w*tb<q.m;ua++){count++;if(cur[ix(ua,tb)])return 7;}total+=count;
  int ord=-1;for(int lev=q.m;lev<m&&ord<0;lev++)for(int tb=0;q.w*tb<=lev;tb++)if(cur[ix(lev-q.w*tb,tb)]){ord=lev;break;}if(ord<0)return 8;
  if(z)cout<<',';cout<<"{\"point\":"<<z<<",\"r\":"<<q.r<<",\"s\":"<<q.s<<",\"weight\":"<<q.w<<",\"required_order\":"<<q.m<<",\"initial_order\":"<<ord<<",\"dehomogenized_coefficients\":[";
  for(int tb=0;q.w*tb<=ord;tb++){if(tb)cout<<',';cout<<cur[ix(ord-q.w*tb,tb)];}cout<<"]}";
 }
 cout<<"],\"conditions_checked\":"<<total<<",\"all_source_jets_zero\":true}\n";return total==23476?0:9;
}
