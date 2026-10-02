#include <bits/stdc++.h>
using namespace std; using ll=long long;
ll P;
ll mul(ll a,ll b){return a*b%P;}
ll add(ll a,ll b){a+=b;if(a>=P)a-=P;return a;}
ll sub(ll a,ll b){a-=b;if(a<0)a+=P;return a;}
ll pw(ll a,ll b){ll z=1;for(;b;b>>=1,a=mul(a,a))if(b&1)z=mul(z,a);return z;}
struct Term{int u,y,r;ll c;};
vector<Term> readp(istream &in){int n;in>>n;vector<Term>o(n);for(auto &t:o){string c;in>>t.u>>t.y>>t.r>>c;bool neg=c[0]=='-';t.c=0;for(char ch:c)if(isdigit(ch))t.c=(t.c*10+(ch-'0'))%P;if(neg&&t.c)t.c=P-t.c;}return o;}
ll det(vector<vector<ll>>a){int n=a.size();ll d=1;for(int i=0;i<n;i++){int pi=i;while(pi<n&&!a[pi][i])pi++;if(pi==n)return 0;if(pi!=i){swap(a[i],a[pi]);d=P-d;}ll pp=a[i][i];d=mul(d,pp);ll iv=pw(pp,P-2);for(int j=i+1;j<n;j++)if(a[j][i]){ll co=mul(a[j][i],iv);for(int k=i+1;k<n;k++)a[j][k]=sub(a[j][k],mul(co,a[i][k]));} }return d;}
vector<ll> interp(vector<ll>v){int n=v.size();vector<ll>out(n),basis(n);basis[0]=1;ll fact=1;for(int k=0;k<n;k++){if(k)fact=mul(fact,k);ll co=mul(v[0],pw(fact,P-2));for(int j=0;j<=k;j++)out[j]=add(out[j],mul(co,basis[j]));for(int j=0;j<n-k-1;j++)v[j]=sub(v[j+1],v[j]);for(int j=k+1;j>=0;j--){ll a=j?basis[j-1]:0;ll b=j<n?mul(k,basis[j]):0;if(j<n)basis[j]=sub(a,b);} }return out;}
int main(int argc,char**argv){P=atoll(argv[1]);int du=atoi(argv[2]),dy=atoi(argv[3]);auto f=readp(cin),g=readp(cin);int m=0,n=0,uf=0,ug=0;for(auto t:f){m=max(m,t.r);uf=max(uf,t.u);}for(auto t:g){n=max(n,t.r);ug=max(ug,t.u);}vector<vector<ll>>vals(dy+1,vector<ll>(du+1));
for(int yy=0;yy<=dy;yy++){
 vector<ll>yp(100,1);for(int i=1;i<100;i++)yp[i]=mul(yp[i-1],yy);
 vector<vector<ll>>ff(m+1,vector<ll>(uf+1)),gg(n+1,vector<ll>(ug+1));
 for(auto t:f)ff[t.r][t.u]=add(ff[t.r][t.u],mul(t.c,yp[t.y]));for(auto t:g)gg[t.r][t.u]=add(gg[t.r][t.u],mul(t.c,yp[t.y]));
 for(int uu=0;uu<=du;uu++){
  vector<ll>a(m+1),b(n+1);for(int i=0;i<=m;i++)for(int j=uf;j>=0;j--)a[i]=add(mul(a[i],uu),ff[i][j]);for(int i=0;i<=n;i++)for(int j=ug;j>=0;j--)b[i]=add(mul(b[i],uu),gg[i][j]);
  vector<vector<ll>>A(m+n,vector<ll>(m+n));for(int i=0;i<n;i++)for(int j=0;j<=m;j++)A[i][i+j]=a[m-j];for(int i=0;i<m;i++)for(int j=0;j<=n;j++)A[n+i][i+j]=b[n-j];vals[yy][uu]=det(A);
 }
 vals[yy]=interp(vals[yy]);
 if(yy%20==0)cerr<<"y "<<yy<<"/"<<dy<<"\n";
}
vector<vector<ll>>coeff(du+1,vector<ll>(dy+1));for(int u=0;u<=du;u++){vector<ll>v(dy+1);for(int y=0;y<=dy;y++)v[y]=vals[y][u];coeff[u]=interp(v);}
for(int u=0;u<=du;u++)for(int y=0;y<=dy;y++)if(coeff[u][y])cout<<u<<' '<<y<<' '<<coeff[u][y]<<'\n';
}
