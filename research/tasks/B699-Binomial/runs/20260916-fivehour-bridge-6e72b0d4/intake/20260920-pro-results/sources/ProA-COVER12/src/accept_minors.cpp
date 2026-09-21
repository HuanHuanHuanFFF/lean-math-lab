// Independent verifier: direct interpolation, triangular multiplication by W,
// and determinant of the supplied ORIGINAL-row submatrix. No rank lifting.
#include <vector>
#include <array>
#include <fstream>
#include <sstream>
#include <iostream>
#include <string>
#include <stdexcept>
#include <algorithm>
using namespace std;
const int p=65521;
int mod(long long x){x%=p;return x<0?x+p:x;}
int power(int x,int n){int a=1;for(;n;n/=2,x=mod(1LL*x*x))if(n%2)a=mod(1LL*a*x);return a;}
int choose_[45][45];
vector<int> times(const vector<int>&a,const vector<int>&b){vector<int>c(a.size()+b.size()-1);for(size_t i=0;i<a.size();i++)for(size_t j=0;j<b.size();j++)c[i+j]=mod(c[i+j]+1LL*a[i]*b[j]);return c;}
vector<int> shift(const vector<int>&a,int x){vector<int>c(a.size());for(int i=0;i<(int)a.size();i++)for(int j=0;j<=i;j++)c[j]=mod(c[j]+1LL*a[i]*choose_[i][j]%p*power(x,i-j));return c;}
int determinant(vector<vector<int>>A){int d=1,n=A.size();for(auto&r:A)if((int)r.size()!=n)throw runtime_error("nonsquare");
 for(int c=0;c<n;c++){int r=c;while(r<n&&A[r][c]==0)r++;if(r==n)return 0;if(r!=c){swap(A[r],A[c]);d=mod(-d);}int v=A[c][c];d=mod(1LL*d*v);int iv=power(v,p-2);
  for(int i=c+1;i<n;i++)if(A[i][c]){int t=mod(1LL*A[i][c]*iv);for(int j=c+1;j<n;j++)A[i][j]=mod(A[i][j]-1LL*t*A[c][j]);A[i][c]=0;}}
 return d;}
vector<int> csv(string l){vector<int>a;stringstream s(l);string t;while(getline(s,t,','))a.push_back(stoi(t));return a;}
int jid(int a,int b){return (a+b)*(a+b+1)/2+a;}
int main(int argc,char**argv){try{
 if(argc!=6)throw runtime_error("usage q csv minor_indices.txt residues.csv test_bad(0/1)");int q=stoi(argv[1]),negative=stoi(argv[5]);
 for(int d=2;d*d<=p;d++)if(p%d==0)throw runtime_error("modulus not prime");
 for(int i=0;i<45;i++){choose_[i][0]=choose_[i][i]=1;for(int j=1;j<i;j++)choose_[i][j]=mod(choose_[i-1][j-1]+choose_[i-1][j]);}
 vector<pair<int,int>>pts,mons;for(int r=3;r<=8;r++)for(int s=0;s<=r/2;s++)pts.push_back({r,s*(r-s)});
 for(int b=0;b<=q-3;b++)for(int a=0;a<=2*q-6-2*b;a++)mons.push_back({a,b});int u=mons.size();
 vector<int>W={1};for(int r=3;r<=8;r++)W=times(W,{mod(-r),1});array<vector<int>,6>Wt,L;
 for(int i=0;i<6;i++){Wt[i]=shift(W,i+3);vector<int>f={1};int den=1;for(int j=0;j<6;j++)if(i!=j){f=times(f,{mod(-j-3),1});den=mod(1LL*den*(i-j));}for(int&v:f)v=mod(1LL*v*power(den,p-2));L[i]=f;}
 // Precompute evaluation rows, not the right-hand sides.
 vector<vector<vector<int>>>eval(21);
 for(int k=0;k<21;k++){auto[r,x]=pts[k];eval[k].resize(q*(q+1)/2);for(int total=0;total<=q-2;total++)for(int a=0;a<=total;a++){int b=total-a;auto&v=eval[k][jid(a,b)];for(auto[i,j]:mons)v.push_back(i<a||j<b?0:mod(1LL*choose_[i][a]*choose_[j][b]%p*power(r,i-a)%p*power(x,j-b)));}}
 ifstream rows(argv[2]),cert(argv[3]);ofstream out(argv[4]);if(!rows||!cert||!out)throw runtime_error("file open");
 string line;int caseid=0,rejected=0,ranks=0,mutations=0;out<<"case,size,det_mod_65521,full_augmented\n";
 while(getline(rows,line)){
  auto data=csv(line);if(data.size()!=26||data[0]!=q)throw runtime_error("CSV shape");int def=data[1];
  array<vector<int>,6>F;int k=0;for(int row=0;row<6;row++){F[row]={1};for(int s=0;s<=(row+3)/2;s++,k++)for(int j=0;j<data[5+k];j++)F[row]=times(F[row],{mod(-pts[k].second),1});if(def==row)F[row]=times(F[row],{mod(-data[4]),1});if((int)F[row].size()!=q+1)throw runtime_error("fiber degree");}
  // H0 coefficients indexed by X exponent, then N exponent.
  vector<vector<int>>H0(q+1,vector<int>(6));for(int b=0;b<=q;b++)for(int a=0;a<6;a++)for(int row=0;row<6;row++)H0[b][a]=mod(H0[b][a]+1LL*F[row][b]*L[row][a]);
  for(int b=0;b<=q;b++)for(int a=0;a<6;a++)if(a+2*b>2*q&&H0[b][a])throw runtime_error("weight violation");
  vector<vector<int>>A;
  for(k=0;k<21;k++){
   auto[r,x]=pts[k];int m=data[k+5],row=r-3;if(m<2)continue;
   vector<vector<int>>shifted(q+1,vector<int>(6));for(int b=0;b<=q;b++)shifted[b]=shift(H0[b],r);
   vector<vector<int>>h(6,vector<int>(m));for(int a=0;a<6;a++)for(int b=0;b<m;b++)for(int j=b;j<=q;j++)h[a][b]=mod(h[a][b]+1LL*shifted[j][a]*choose_[j][b]%p*power(x,j-b));
   vector<vector<int>>target(m,vector<int>(m));int inv=power(Wt[row][1],p-2);
   // At each X-jet order, solve W(r+u)*Qjets = -H0jets by multiplication.
   for(int b=0;b<=m-2;b++)for(int a=0;a<=m-2-b;a++){
    int t=a+1<6?mod(-h[a+1][b]):0;
    for(int ell=2;ell<=6&&ell<=a+1;ell++)t=mod(t-1LL*Wt[row][ell]*target[a+1-ell][b]);
    target[a][b]=mod(1LL*t*inv);
   }
   for(int total=0;total<=m-2;total++)for(int a=0;a<=total;a++){int b=total-a;auto v=eval[k][jid(a,b)];v.push_back(target[a][b]);A.push_back(move(v));}
  }
  int idx,n,full,nrows;cert>>idx>>n>>full>>nrows;if(!cert||idx!=caseid||nrows!=(int)A.size())throw runtime_error("certificate header");vector<int>rs(n),cs(n);for(int&v:rs)cert>>v;for(int&v:cs)cert>>v;
  if(!cert)throw runtime_error("truncated certificate");if(full&&n!=u+1)throw runtime_error("wrong augmented size");
  auto sr=rs,sc=cs;sort(sr.begin(),sr.end());sort(sc.begin(),sc.end());if(adjacent_find(sr.begin(),sr.end())!=sr.end()||adjacent_find(sc.begin(),sc.end())!=sc.end())throw runtime_error("duplicate index");
  for(int v:rs)if(v<0||v>=(int)A.size())throw runtime_error("row range");for(int v:cs)if(v<0||v>u||(!full&&v==u))throw runtime_error("col range");
  vector<vector<int>>M(n,vector<int>(n));for(int i=0;i<n;i++)for(int j=0;j<n;j++)M[i][j]=A[rs[i]][cs[j]];
  int det=determinant(M);if(det==0)throw runtime_error("zero alleged minor at case "+to_string(idx));
  if(negative&&caseid==0){M[1]=M[0];if(determinant(M)!=0)throw runtime_error("duplicate-row mutation not rejected");mutations++;}
  out<<caseid<<','<<n<<','<<det<<','<<full<<'\n';if(full)rejected++;else ranks++;caseid++;
 }
 string extra;if(cert>>extra)throw runtime_error("extra certificate entries");
 cout<<"PASS_MINORS q="<<q<<" cases="<<caseid<<" full_augmented="<<rejected<<" rank_lower_bounds="<<ranks<<" corruption_tests="<<mutations<<'\n';
 }catch(exception&e){cerr<<"REJECT: "<<e.what()<<'\n';return 1;}}
