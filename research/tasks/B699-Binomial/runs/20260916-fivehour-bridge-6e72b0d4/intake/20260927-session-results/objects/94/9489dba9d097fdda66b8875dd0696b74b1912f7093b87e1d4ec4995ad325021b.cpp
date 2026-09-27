// A transposed interpolation-trace receiver with literal local multiplication.
#include <bits/stdc++.h>
using namespace std;int p;int md(long long a){a%=p;return a<0?a+p:a;}int pw(int a,int n){int b=1;for(;n;n>>=1,a=md(1LL*a*a))if(n&1)b=md(1LL*b*a);return b;}void need(bool b,const char*s){if(!b)throw runtime_error(s);}
struct J{int r,s,i,j,prev;};
int main(int ac,char**av){need(ac==5,"case trace reverse prime");p=stoi(av[4]);for(int d=2;d*d<=p;d++)need(p%d,"composite");ifstream in(av[1]),tr(av[2]);int h;in>>h;need(h>=0&&h<=152,"degree");vector<array<int,3>>points;int r,s,m;while(in>>r>>s>>m)points.push_back({r,s,m});need(points.size()==21,"points");vector<pair<int,int>>expected,seen;for(r=3;r<=8;r++)for(s=0;s<=r/2;s++)expected.emplace_back(r,s);for(auto t:points){need(t[2]>=0&&t[2]<=200,"order");seen.emplace_back(t[0],t[1]);}sort(seen.begin(),seen.end());need(seen==expected,"source set");if(stoi(av[3]))reverse(points.begin(),points.end());vector<J>jets;
for(auto t:points){r=t[0];s=t[1];m=t[2];for(int j=0;j<m;j++){int prev=-1;for(int i=0;i+(r==2*s?2:1)*j<m;i++){jets.push_back({r,s,i,j,prev});prev=jets.size()-1;}}}
int n=jets.size(),K=h+1;vector<vector<int>>eval(n,vector<int>(K));int start=0;
for(auto t:points){r=t[0];s=t[1];m=t[2];int last=start;while(last<n&&jets[last].r==r&&jets[last].s==s)last++;int sh=r==2*s?s:0,x=s*(r-s);vector<vector<int>>poly(K,vector<int>(K));poly[0][0]=1;
 for(int b=0;b<K;b++){for(int l=start;l<last;l++){auto z=jets[l];if(z.i<K&&z.j<K)eval[l][b]=poly[z.i][z.j];}
 vector<vector<int>>next(K,vector<int>(K));if(b<h)for(int i=0;i<=b+1;i++)for(int j=0;i+j<=b+1;j++){long long z=1LL*x*poly[i][j];if(i)z+=1LL*sh*poly[i-1][j];if(j)z+=poly[i][j-1];next[i][j]=md(z);}poly=move(next);}
 start=last;}
int pp,hh,nn;need(bool(tr>>pp>>hh>>nn)&&pp==p&&hh==h&&nn==n,"trace header");vector<int>w(K);for(int b=0;b<K;b++)w[b]=2*b;int nz=0;
for(int j=0;j<n;j++){int a=-1;for(int b=0;b<K;b++)if(eval[j][b]&&(a<0||pair<int,int>(w[b],b)<pair<int,int>(w[a],a)))a=b;int ix,aa;need(bool(tr>>ix>>aa)&&ix==j&&aa==a,"pivot choice");if(a<0)continue;int val,ww;need(bool(tr>>val>>ww)&&val==eval[j][a]&&ww==w[a],"pivot value");nz++;int iv=pw(val,p-2);vector<int>c(K);for(int b=0;b<K;b++)if(b!=a)c[b]=md(1LL*eval[j][b]*iv);
for(int l=j;l<n;l++){int v=eval[l][a];for(int b=0;b<K;b++)if(b!=a&&c[b])eval[l][b]=md(eval[l][b]-1LL*c[b]*v);}
for(int l=n-1;l>=j;l--){int pre=jets[l].prev;eval[l][a]=md(1LL*(jets[l].r-jets[j].r)*eval[l][a]+(pre<0?0:eval[pre][a]));}for(int b=0;b<K;b++)need(!eval[j][b],"functional");w[a]++;}
string label;need(bool(tr>>label)&&label=="weights","footer");for(int x:w){int y;need(bool(tr>>y)&&x==y,"weight");}need(!(tr>>label),"trailing trace");need(accumulate(w.begin(),w.end(),0)==h*(h+1)+nz,"degree sum");int dim=0;for(int x:w)dim+=max(0,2*h-x+1);cout<<"PASS_TRANSPOSED p "<<p<<" h "<<h<<" constraints "<<n<<" min_weight "<<*min_element(w.begin(),w.end())<<" nullity "<<dim<<'\n';need(dim==0,"nonzero quotient kernel");}
