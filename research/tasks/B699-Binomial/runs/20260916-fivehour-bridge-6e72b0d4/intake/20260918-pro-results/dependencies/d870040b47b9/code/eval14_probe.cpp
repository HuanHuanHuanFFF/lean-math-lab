#include <bits/stdc++.h>
using namespace std; const int P=1000003;
using Row=array<int,16>;
long long pw(long long x,int e){long long y=1;for(;e;e>>=1,x=x*x%P)if(e&1)y=y*x%P;return y;}
int rankm(vector<Row> a,int cols){int r=0;for(int j=0;j<cols && r<(int)a.size();j++){int k=r;while(k<(int)a.size()&&!a[k][j])k++;if(k==(int)a.size())continue;swap(a[k],a[r]);long long inv=pw(a[r][j],P-2);for(int t=j;t<cols;t++)a[r][t]=a[r][t]*inv%P;for(k=r+1;k<(int)a.size();k++)if(a[k][j]){long long m=a[k][j];for(int t=j;t<cols;t++)a[k][t]=(a[k][t]-m*a[r][t]%P+P)%P;}r++;}return r;}
int main(){vector<pair<int,int>> pts,b;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++)pts.push_back({r,s*(r-s)});for(int c=0;c<=3;c++)for(int a=0;a+2*c<=6;a++)b.push_back({a,c});vector<Row>A;for(auto[r,v]:pts){Row q{};for(int t=0;t<16;t++)q[t]=pw(r,b[t].first)*pw(v,b[t].second)%P;A.push_back(q);}map<pair<int,int>,int>counts;int total=0;
for(int mask=(1<<14)-1;mask<(1<<21);){int cnt[9]={};vector<Row>M;for(int i=0;i<21;i++)if(mask>>i&1){cnt[pts[i].first]++;M.push_back(A[i]);}bool ok=true;for(int r=3;r<=8;r++)if(cnt[r]<1||cnt[r]>3)ok=false;if(ok){total++;int r=rankm(M,16),r0=rankm(M,15);counts[{r,r0}]++;if(r<14)cout<<mask<<" "<<r<<" "<<r0<<"\n";}int c=mask&-mask,v=mask+c;mask=v+(((v^mask)/c)>>2);}
cerr<<"total "<<total<<"\n";for(auto[k,v]:counts)cerr<<k.first<<","<<k.second<<"="<<v<<"\n";
}
