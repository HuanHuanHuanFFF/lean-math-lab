#include <bits/stdc++.h>
using namespace std;using L=long long; const L P=1000003;
L pw(L x,int e){L y=1;for(;e;e>>=1,x=x*x%P)if(e&1)y=y*x%P;return y;}
L bi(int n,int k){if(k<0||k>n)return 0;L y=1;for(int i=1;i<=k;i++)y=y*(n+1-i)/i;return y;}
int rankm(vector<vector<L>>a,int c){int r=0;for(int j=0;j<c&&r<(int)a.size();j++){int k=r;while(k<(int)a.size()&&!a[k][j])k++;if(k==(int)a.size())continue;swap(a[k],a[r]);auto inv=pw(a[r][j],P-2);for(int t=j;t<c;t++)a[r][t]=a[r][t]*inv%P;for(k=r+1;k<(int)a.size();k++)if(a[k][j]){auto m=a[k][j];for(int t=j;t<c;t++)a[k][t]=(a[k][t]-m*a[r][t]%P+P)%P;}r++;}return r;}
int main(int argc,char**argv){ifstream in(argv[1]);int mask,d,ms[6];set<int>solved;while(in>>mask>>d>>ms[0]>>ms[1]>>ms[2]>>ms[3]>>ms[4]>>ms[5]){if(solved.count(mask))continue;vector<pair<int,int>>b;for(int c=0;2*c<=d;c++)for(int a=0;a+2*c<=d;a++)b.push_back({a,c});vector<vector<L>>A;int idx=0;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++,idx++)if(mask>>idx&1){int v=s*(r-s),m=ms[r-3];for(int i=0;i<m;i++)for(int h=0;i+h<m;h++){vector<L>row;for(auto[a,c]:b){L x=0;if(a>=i&&c>=h)x=bi(a,i)%P*bi(c,h)%P*pw(r,a-i)%P*pw(v,c-h)%P;row.push_back(x);}A.push_back(row);}}int rk=rankm(A,b.size());if(rk<(int)b.size()){cout<<mask<<" "<<d;for(int m:ms)cout<<" "<<m;cout<<" rows="<<A.size()<<" rank="<<rk<<" cols="<<b.size()<<"\n";solved.insert(mask);}}
cerr<<"solved "<<solved.size()<<"\n";}
