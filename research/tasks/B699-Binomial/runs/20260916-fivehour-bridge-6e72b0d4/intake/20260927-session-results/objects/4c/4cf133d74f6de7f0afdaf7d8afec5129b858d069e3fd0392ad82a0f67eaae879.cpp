// Independent receiver: local polynomial convolution; integer 600*H0 column;
// reverse Gaussian determinant. No discovery routine is imported or reused.
#include <vector>
#include <array>
#include <fstream>
#include <iostream>
#include <algorithm>
#include <set>
#include <stdexcept>
using namespace std;
int p,q,K;int mod(long long x){x%=p;return x<0?x+p:x;}
int power(int a,int e){int r=1;while(e){if(e&1)r=mod(1LL*r*a);a=mod(1LL*a*a);e/=2;}return r;}
using Poly=vector<int>;
Poly product(const Poly&a,const Poly&b){Poly c(a.size()+b.size()-1);for(int i=0;i<(int)a.size();i++)for(int j=0;j<(int)b.size();j++)c[i+j]=mod(c[i+j]+1LL*a[i]*b[j]);return c;}
vector<Poly> lag120;
struct Jet {int point,i,j;vector<int>vars,linear;};vector<Jet> jets;
vector<pair<int,int>>powers;int sourceR[21],sourceS[21],sourceX[21];bool diagonal[21];
void need(bool a,const char*s){if(!a)throw runtime_error(s);}
void prep(){for(int d=2;1LL*d*d<=p;d++)need(p%d!=0,"composite modulus");need(p>600,"small modulus");
 for(int r=3;r<=8;r++){Poly t={1};int den=1;for(int a=3;a<=8;a++)if(a!=r){t=product(t,{mod(-a),1});den*=r-a;}need(120%den==0,"Lagrange integer scaling");for(int&x:t)x=mod(1LL*x*(120/den));lag120.push_back(t);}
 for(int b=0;2*b<=2*q-6;b++)for(int a=0;a<=2*q-6-2*b;a++)powers.push_back({a,b});K=powers.size()+1;need(K==(q-2)*(q-2)+1,"dimension");
 int point=0;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++,point++){
 int x=s*(r-s),sh=2*s==r?s:0;sourceR[point]=r;sourceS[point]=s;sourceX[point]=x;diagonal[point]=(2*s==r);
 vector<Poly> nu(2*q+1);nu[0]={1};for(int a=1;a<=2*q;a++)nu[a]=product(nu[a-1],{r,1});
 Poly W={1};for(int a=3;a<=8;a++)W=product(W,{mod(r-a),1});vector<Poly>WN(2*q+1);for(int a=0;a<=2*q;a++)WN[a]=product(W,nu[a]);
 // xp[b][u][t] coefficients of (x+sh*u+t)^b, by literal multiplication.
 vector<vector<vector<int>>>xp(q+1,vector<vector<int>>(q+1,vector<int>(q+1)));xp[0][0][0]=1;
 for(int b=1;b<=q;b++)for(int u=0;u<=b;u++)for(int t=0;t<=b-u;t++){
  long long v=1LL*x*xp[b-1][u][t];if(u)v+=1LL*sh*xp[b-1][u-1][t];if(t)v+=xp[b-1][u][t-1];xp[b][u][t]=mod(v);
 }
 auto coeff=[&](const Poly&A,int b,int i,int j){long long z=0;for(int u=0;u<=b&&u<=i;u++)if(i-u<(int)A.size())z+=1LL*A[i-u]*xp[b][u][j];return mod(z);};
 for(int j=0;j<q;j++)for(int i=1;i<(diagonal[point]?2*q-2*j:q-j);i++){
  Jet a;a.point=point;a.i=i;a.j=j;for(auto [u,t]:powers)a.vars.push_back(coeff(WN[u],t,i,j));
  for(int b=0;b<=q;b++)for(int n=0;n<6;n++)a.linear.push_back(coeff(nu[n],b,i,j));jets.push_back(a);
 }
 }need(point==21,"source count");
}
int determinant(vector<vector<int>> a){int n=a.size(),d=1;for(int k=n-1;k>=0;k--){int r=k;while(r>=0&&!a[r][k])r--;if(r<0)return 0;if(r!=k){swap(a[r],a[k]);d=mod(-d);}int pivot=a[k][k];d=mod(1LL*d*pivot);int iv=power(pivot,p-2);for(int r0=0;r0<k;r0++){int fac=mod(1LL*a[r0][k]*iv);for(int c=0;c<k;c++)a[r0][c]=mod(a[r0][c]-1LL*fac*a[k][c]);}}return d;}
void check_gate(const array<int,21>&m,long long L,long long P5){array<int,9>sum{},load{};array<long long,9>S{},T{};int z=0;
 for(int t=0;t<21;t++){need(m[t]>=0&&m[t]<=q,"ordinary multiplicity");int r=sourceR[t],x=sourceX[t],s=sourceS[t];sum[r]+=m[t];z+=(m[t]>0);load[s]+=m[t];load[r-s]+=m[t];for(int k=0;k<m[t];k++){T[r]+=S[r]*x;S[r]+=x;}}
 for(int r=3;r<=8;r++)need(sum[r]==q-(r==7?2:0),"source row sum");need(z>=14,"source support");for(int v:load)need(v<=2*q,"source line bound");
 need(S[6]==S[3]-3*S[4]+3*S[5],"quadratic trace 6");need(S[8]==6*S[3]-15*S[4]+10*S[5],"quadratic trace 8");need(L+S[7]==3*S[3]-8*S[4]+6*S[5],"quadratic trace 7");
 need(P5==-T[3]+5*T[4]-10*T[5]+10*T[6]+T[8]-5*T[7]-5*L*S[7],"quartic coefficient");
 for(int t=0;t<21;t++)if(sourceR[t]==7&&!m[t]){long long x=sourceX[t];need(5*x*x-5*L*x+P5!=0,"forbidden zero collision");}
}
int main(int argc,char**argv){need(argc==5,"usage q prime gates minors");q=stoi(argv[1]);if(q!=8&&q!=9)throw runtime_error("only q8/q9 certified");p=stoi(argv[2]);prep();ifstream gi(argv[3]),ci(argv[4]);need(bool(gi)&&bool(ci),"input open");int qq;long long L,P5,count=0;while(gi>>qq>>L>>P5){need(qq==q,"gate degree");array<int,21>m{};for(int&v:m)need(bool(gi>>v),"truncated gate");check_gate(m,L,P5);
 vector<Poly> F5;int t=0;for(int r=3;r<=8;r++){Poly f={1};for(int s=0;s<=r/2;s++,t++)for(int a=0;a<m[t];a++)f=product(f,{mod(-s*(r-s)),1});if(r==7)f=product(f,{mod(P5),mod(-5*L),5});else for(int&v:f)v=mod(5LL*v);need((int)f.size()==q+1,"row polynomial degree");F5.push_back(f);}
 vector<int>B(6*(q+1));for(int b=0;b<=q;b++)for(int a=0;a<6;a++){long long v=0;for(int r=0;r<6;r++)v+=1LL*F5[r][b]*lag120[r][a];B[b*6+a]=mod(v);}
 long long ix;int cols,det;need(bool(ci>>ix>>cols>>det),"missing certificate");need(ix==count&&cols==K&&det>0&&det<p,"certificate header");set<int>seen;vector<vector<int>>matrix;
 for(int i=0;i<K;i++){int id;need(bool(ci>>id),"truncated minor");need(id>=0&&id<(int)jets.size()&&seen.insert(id).second,"invalid or duplicate jet row");auto&r=jets[id];int mm=m[r.point];need(r.i+(diagonal[r.point]?2:1)*r.j<(diagonal[r.point]?2:1)*mm,"jet beyond justified order");vector<int>a=r.vars;long long b=0;for(int j=0;j<(int)B.size();j++)b+=1LL*r.linear[j]*B[j];a.push_back(mod(b));matrix.push_back(move(a));}
 int actual=determinant(matrix);need(actual!=0,"zero minor");need(actual==mod(600LL*det),"determinant mismatch");count++;
 }string extra;need(!(ci>>extra),"extra certificates");cout<<"PASS_CONVOLUTION_RECEIVER q="<<q<<" p="<<p<<" gates="<<count<<" integer_scaled_minors="<<count<<" columns="<<K<<'\n';}
