#include <algorithm>
#include <iostream>
#include <vector>
#include <array>
#include <map>
using namespace std;
const int p=32749;
int pw(int a,int n){int b=1;while(n){if(n&1)b=(long long)b*a%p;a=(long long)a*a%p;n>>=1;}return b;}
vector<array<int,9>> rows;map<array<int,9>,array<int,8>> found;
int choice[8], ndep=0;
void check(){int A[8][9];for(int i=0;i<8;i++)for(int j=0;j<9;j++)A[i][j]=rows[choice[i]][j];int rr=0;vector<int>piv;
for(int c=0;c<9&&rr<8;c++){int z=rr;while(z<8&&!A[z][c])z++;if(z==8)continue;for(int j=0;j<9;j++)swap(A[rr][j],A[z][j]);int in=pw(A[rr][c],p-2);for(int j=c;j<9;j++)A[rr][j]=(long long)A[rr][j]*in%p;for(int i=0;i<8;i++)if(i!=rr){int k=A[i][c];if(k)for(int j=c;j<9;j++)A[i][j]=(A[i][j]-(long long)k*A[rr][j]%p+p)%p;}piv.push_back(c);rr++;}
if(rr<8){ndep++;return;}int free=0;while(find(piv.begin(),piv.end(),free)!=piv.end())free++;
array<int,9> v{};v[free]=1;for(int i=0;i<8;i++)v[piv[i]]=(p-A[i][free])%p;
int first=0;while(!v[first])first++;int iv=pw(v[first],p-2);for(int &x:v)x=(long long)x*iv%p;array<int,8> ids;for(int i=0;i<8;i++)ids[i]=choice[i];found.emplace(v,ids);
}
void dfs(int k,int j){if(k==8){check();return;}for(int i=j;i<=(int)rows.size()-8+k;i++){choice[k]=i;dfs(k+1,i+1);}}
int main(){for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++){int x=s*(r-s);array<int,9>a{1,r,r*r,r*r*r,r*r*r*r,x,r*x,r*r*x,x*x};rows.push_back(a);}dfs(0,0);cerr<<"unique "<<found.size()<<" dependent "<<ndep<<"\n";
int count; cin>>count; vector<array<int,22>> states(count); for(auto &a:states)for(int &v:a)cin>>v;
auto md=[](long long a){return int((a%p+p)%p);}; int nf=0;
for(auto &[v,ids]:found){if(!v[8])continue; array<int,21> ms{};array<int,3> di{};int z=0;
for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++){int x=s*(r-s);long long vv=0;for(int j=0;j<9;j++)vv+=(long long)v[j]*rows[z][j];if(md(vv)){z++;continue;}
int dx=md(v[5]+(long long)v[6]*r+(long long)v[7]*r*r+2LL*v[8]*x);
int dn=md(v[1]+2LL*v[2]*r+3LL*v[3]*r*r+4LL*v[4]*r*r*r+(long long)v[6]*x+2LL*v[7]*r*x);
ms[z]=(!dx&&!dn)?2:1;
if(r%2==0&&2*s==r){int d=(r-4)/2;di[d]=ms[z]==2?3:md(dn+(long long)s*dx)==0?2:1;}
z++;}
bool good=false;for(auto &a:states){int load=0,j=0;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++,j++){
if(r%2==0&&2*s==r){int b=a[j+1],k=di[(r-4)/2];load+=(k==3?2*((b+1)/2):k==2?b:k==1?(b+1)/2:0);}else load+=ms[j]*a[j+1];}
if(load>4*a[0]){good=true;break;}}
if(good){nf++;for(int i:ids)cout<<i<<" ";cout<<"\n";}}
cerr<<"filtered "<<nf<<"\n";
}
