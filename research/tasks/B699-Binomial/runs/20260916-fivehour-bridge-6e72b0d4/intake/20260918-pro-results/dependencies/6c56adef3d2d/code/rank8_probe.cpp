// Finite diagnostic: rank on all eight-point subsets of the 21 source points.
// A nonzero minor modulo P proves the same lower rank bound over Q.
// A rank drop modulo P is NOT accepted as a rational rank drop.
#include <array>
#include <cstdint>
#include <iostream>
#include <vector>
#include <algorithm>
using I=long long;
constexpr I P=1000003;
I power(I a,I e){I z=1;for(;e;e>>=1,a=a*a%P)if(e&1)z=z*a%P;return z;}
struct Pt{int n,x;std::array<I,9> a;};
int rk(const std::vector<Pt>& v,const std::array<int,8>& ix){
 I a[8][9];for(int i=0;i<8;i++)for(int j=0;j<9;j++)a[i][j]=v[ix[i]].a[j];
 int r=0;
 for(int c=0;c<9 && r<7;c++){
  int k=r;while(k<8 && !a[k][c])k++;if(k==8)continue;
  for(int j=c;j<9;j++)std::swap(a[k][j],a[r][j]);
  I inv=power(a[r][c],P-2);for(int j=c;j<9;j++)a[r][j]=a[r][j]*inv%P;
  for(int i=r+1;i<8;i++)if(a[i][c]){I m=a[i][c];for(int j=c;j<9;j++)a[i][j]=(a[i][j]-m*a[r][j]%P+P)%P;}
  r++;
 }
 return r;
}
int main(){
 std::vector<Pt> v;
 for(int n=3;n<=8;n++)for(int s=0;s<=n/2;s++){
  int x=s*(n-s);Pt p{n,x,{}};int z=0;
  for(int b=0;b<=2;b++)for(int a=0;a+2*b<=4;a++)p.a[z++]=power(n,a)*power(x,b)%P;
  v.push_back(p);
 }
 std::array<int,8> ix{0,1,2,3,4,5,6,7};long long tested=0,skipped=0,bad=0;
 do {
  int count[9]={};bool ok=true;for(int a:ix)if(++count[v[a].n]>3)ok=false;
  if(!ok){skipped++;}else{
   tested++;int r=rk(v,ix);if(r<7){bad++;if(bad<=10){std::cout<<"LOW_RANK "<<r;for(int a:ix)std::cout<<" "<<v[a].n<<","<<v[a].x;std::cout<<"\n";}}
  }
  int k=7;while(k>=0 && ix[k]==21-8+k)k--;if(k<0)break;ix[k]++;for(int j=k+1;j<8;j++)ix[j]=ix[j-1]+1;
 }while(true);
 std::cout<<"tested="<<tested<<" skipped="<<skipped<<" low_modular_rank="<<bad<<" prime="<<P<<"\n";
}
