#include <bits/stdc++.h>
using namespace std; const long long P=1000003; using Row=array<long long,16>;
long long pw(long long x,int e){long long y=1;for(;e;e>>=1,x=x*x%P)if(e&1)y=y*x%P;return y;}
vector<Row> ker(vector<Row>a){vector<int> piv;int r=0;for(int j=0;j<16 && r<(int)a.size();j++){int k=r;while(k<(int)a.size()&&!a[k][j])k++;if(k==(int)a.size())continue;swap(a[k],a[r]);long long inv=pw(a[r][j],P-2);for(int t=j;t<16;t++)a[r][t]=a[r][t]*inv%P;for(k=0;k<(int)a.size();k++)if(k!=r&&a[k][j]){long long m=a[k][j];for(int t=j;t<16;t++)a[k][t]=(a[k][t]-m*a[r][t]%P+P)%P;}piv.push_back(j);r++;}vector<Row>res;for(int j=0;j<16;j++)if(find(piv.begin(),piv.end(),j)==piv.end()){Row q{};q[j]=1;for(int t=0;t<r;t++)q[piv[t]]=(P-a[t][j])%P;res.push_back(q);}return res;}
int main(){vector<pair<int,int>>pts,b;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++)pts.push_back({r,s*(r-s)});for(int c=0;c<=3;c++)for(int a=0;a+2*c<=6;a++)b.push_back({a,c});vector<Row>A,D,E;for(auto[r,v]:pts){Row q{},d{},e{};for(int t=0;t<16;t++){auto[a,c]=b[t];q[t]=pw(r,a)*pw(v,c)%P;if(a)d[t]=a*pw(r,a-1)%P*pw(v,c)%P;if(c)e[t]=c*pw(r,a)%P*pw(v,c-1)%P;}A.push_back(q);D.push_back(d);E.push_back(e);}int total=0,positive=0,low=0, cubic=0;set<Row> uniq;
for(int mask=(1<<14)-1;mask<(1<<21);){int cnt[9]={};vector<Row>M;for(int i=0;i<21;i++)if(mask>>i&1){cnt[pts[i].first]++;M.push_back(A[i]);}bool ok=true;for(int r=3;r<=8;r++)if(cnt[r]<1||cnt[r]>3)ok=false;if(ok){auto ks=ker(M);for(int i=0;i<21;i++)if(mask>>i&1){total++;vector<Row> dm(2);for(int u=0;u<(int)ks.size();u++)for(int t=0;t<16;t++){dm[0][u]=(dm[0][u]+ks[u][t]*D[i][t])%P;dm[1][u]=(dm[1][u]+ks[u][t]*E[i][t])%P;}int rr=0;for(int u=0;u<(int)ks.size();u++){int k=rr;while(k<2&&!dm[k][u])k++;if(k==2)continue;swap(dm[k],dm[rr]);auto inv=pw(dm[rr][u],P-2);for(int v=u;v<(int)ks.size();v++)dm[rr][v]=dm[rr][v]*inv%P;for(k=rr+1;k<2;k++){auto m=dm[k][u];for(int v=u;v<(int)ks.size();v++)dm[k][v]=(dm[k][v]-m*dm[rr][v]%P+P)%P;}rr++;if(rr==2)break;}
int dim=ks.size()-rr;if(dim){positive++;if(dim>1)low++;
vector<long long> coef(ks.size());
if(ks.size()==2){coef[0]=(P-dm[0][1])%P;coef[1]=dm[0][0];}
else if(ks.size()==3){for(int u=0;u<3;u++)coef[u]=(dm[0][(u+1)%3]*dm[1][(u+2)%3]-dm[0][(u+2)%3]*dm[1][(u+1)%3]%P+P)%P;}
else return 3;
Row q{};for(int u=0;u<(int)ks.size();u++)for(int t=0;t<16;t++)q[t]=(q[t]+coef[u]*ks[u][t])%P;
if(q[15]){cubic++;auto inv=pw(q[15],P-2);for(auto &x:q)x=x*inv%P;if(uniq.insert(q).second)cout<<mask<<" "<<i<<" "<<dim<<"\n";}
}}}int c=mask&-mask,v=mask+c;mask=v+(((v^mask)/c)>>2);}
cerr<<"total "<<total<<" nonzero "<<positive<<" dimension_at_least2 "<<low<<" cubic_cases "<<cubic<<" unique "<<uniq.size()<<"\n";
}
