#include <iostream>
#include <vector>
#include <array>
#include <cmath>
#include <algorithm>
using namespace std;
int cost(int r,int w,array<int,4> u){int c=0;for(int s=0;s<=r/2;s++){int t=r-s,m=w-(s<4?u[s]:0)-(t<4?u[t]:0);if(m>0)c+=s==t?((m+1)*(m+1)/4):m*(m+1)/2;}return c;}
int main(){
 double mus[4]={.052312845,.04577374,.03718994,.02574489};
 for(int D=351;D<=650;D++){
  int best=-100000;array<int,4> bestu;array<int,6> bestw;int besth=0,bestz=0,bestL=0,bestC=0;
  for(int h=0;h<=8;h++){int z=5000*h/463+1;
   for(int a=-2;a<=2;a++)for(int b=-2;b<=2;b++)for(int c=-2;c<=2;c++)for(int d=-2;d<=2;d++){
    array<int,4> u={(int)round(mus[0]*D)+a,(int)round(mus[1]*D)+b,(int)round(mus[2]*D)+c,(int)round(mus[3]*D)+d};
    if(*min_element(u.begin(),u.end())<0)continue;
    int L=D-2*(u[0]+u[1]+u[2]+u[3]);if(L<0)continue;
    int ncol=(L+2)*(L+2)/4;
    array<int,6>w{},cc{},marg{};for(int r=3;r<=8;r++)marg[r-3]=cost(r,1,u);
    int nrow=cost(1,z,u)+cost(2,z,u);
    for(int j=0;j<D-h;j++){
      int k=min_element(marg.begin(),marg.end())-marg.begin();
      nrow+=marg[k];w[k]++;cc[k]+=marg[k];marg[k]=cost(k+3,w[k]+1,u)-cc[k];
    }
    int gap=ncol-nrow;
    if(gap>best){best=gap;bestu=u;bestw=w;besth=h;bestz=z;bestL=L;bestC=nrow;}
   }
  }
  if(best>=2){cout<<"D "<<D<<" gap "<<best<<" h "<<besth<<" z "<<bestz<<" L "<<bestL<<" rows "<<bestC<<" mu";for(auto v:bestu)cout<<" "<<v;cout<<" w";for(auto v:bestw)cout<<" "<<v;cout<<endl;}
 }
}
