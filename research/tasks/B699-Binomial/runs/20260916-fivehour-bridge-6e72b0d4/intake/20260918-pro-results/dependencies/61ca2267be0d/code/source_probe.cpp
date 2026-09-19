#include <array>
#include <vector>
#include <map>
#include <iostream>
#include <cstdint>
#include <algorithm>
using namespace std;
const long P=1000003;
long pw(long x,long k){long y=1;while(k){if(k&1)y=y*x%P;x=x*x%P;k>>=1;}return y;}
int rankmod(vector<vector<long>> A){int r=0,n=A[0].size();for(int c=0;c<n&&r<(int)A.size();c++){int k=r;while(k<(int)A.size()&&!A[k][c])k++;if(k==(int)A.size())continue;swap(A[k],A[r]);long inv=pw(A[r][c],P-2);for(int j=c;j<n;j++)A[r][j]=A[r][j]*inv%P;for(int i=r+1;i<(int)A.size();i++){long v=A[i][c];if(!v)continue;for(int j=c;j<n;j++){A[i][j]=(A[i][j]-v*A[r][j])%P;if(A[i][j]<0)A[i][j]+=P;}}r++;}return r;}
int main(){vector<pair<int,int>> pts;vector<vector<long>>rows;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++){int x=s*(r-s);pts.push_back({r,x});vector<long>a;for(int b=0;b<=3;b++)for(int aa=0;aa+2*b<=7;aa++)a.push_back(pw(r,aa)*pw(x,b)%P);rows.push_back(a);}int mask;while(cin>>mask){vector<vector<long>>A;for(int k=0;k<21;k++)if(mask>>k&1)A.push_back(rows[k]);cout<<mask<<" "<<rankmod(A)<<"\n";}}
