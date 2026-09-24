#include <bits/stdc++.h>
using namespace std;
static const int P=32719;
int mod(long long x){x%=P;if(x<0)x+=P;return x;}
int pw(int a,int e){int x=1;while(e){if(e&1)x=(long long)x*a%P;a=(long long)a*a%P;e>>=1;}return x;}
vector<int> conv(const vector<int>&a,const vector<int>&b){vector<int>c(a.size()+b.size()-1);for(int i=0;i<(int)a.size();i++)for(int j=0;j<(int)b.size();j++)c[i+j]=mod(c[i+j]+(long long)a[i]*b[j]);return c;}
vector<int> poly_power(vector<int>a,int n){vector<int>x{1};while(n){if(n&1)x=conv(x,a);n>>=1;if(n)a=conv(a,a);}return x;}
int choose(int n,int k){if(k<0||k>n)return 0;long long x=1;for(int i=1;i<=k;i++)x=x*(n+1-i)/i;return x%P;}
int main(int argc,char**argv){if(argc!=5)throw runtime_error("usage gates ranks q mode");int q=stoi(argv[3]),mode=stoi(argv[4]),K=(q-2)*(q-2)+1; if(q<16||q>18||(mode!=4&&mode!=5))throw runtime_error("scope");
 vector<pair<int,int>>mons;for(int b=q-3;b>=0;b--)for(int a=2*q-6-2*b;a>=0;a--)mons.push_back({a,b});
 vector<vector<int>>Lag;
 for(int r=3;r<=8;r++){vector<int>x{1};int den=1;for(int s=3;s<=8;s++)if(s!=r){x=conv(x,{mod(-s),1});den=mod((long long)den*(r-s));}int iv=pw(den,P-2);for(int&v:x)v=(long long)v*iv%P;Lag.push_back(x);}
 // Independent local-convolution construction, cached across gates.
 map<array<int,4>,pair<vector<int>,vector<int>>>cache;
 auto coeff=[&](const vector<int>&npart,int b,int r,int v,int shear,int i,int j){
  if(j>b)return 0;auto xp=poly_power({v,shear},b-j);long long z=0;
  for(int t=0;t<(int)npart.size();t++)if(i-t>=0&&i-t<(int)xp.size())z+=(long long)npart[t]*xp[i-t]%P;
  return mod(z*choose(b,j));
 };
 auto row=[&](int r,int s,int i,int j)->pair<vector<int>,vector<int>>&{
  array<int,4>key{r,s,i,j};auto it=cache.find(key);if(it!=cache.end())return it->second;
  auto&out=cache[key];int v=s*(r-s),sh=(2*s==r?s:0);vector<int>W{1};for(int t=3;t<=8;t++)W=conv(W,{mod(r-t),1});
  for(auto[a,b]:mons){auto n=conv(W,poly_power({r,1},a));out.first.push_back(coeff(n,b,r,v,sh,i,j));}
  for(int b=0;b<=q;b++)for(int a=0;a<6;a++)out.second.push_back(coeff(poly_power({r,1},a),b,r,v,sh,i,j));
  return out;
 };
 ifstream gates(argv[1]),ranks(argv[2]);string gs,rs;int count=0;
 while(getline(gates,gs)){
  if(!getline(ranks,rs))throw runtime_error("missing rank");istringstream gi(gs),ri(rs);int qq,missing,z,l1,l2;gi>>qq>>missing>>z>>l1>>l2;if(qq!=q||missing!=mode)throw runtime_error("q/missing");
  vector<vector<int>>m(6);for(int r=3;r<=8;r++){m[r-3].resize(r/2+1);for(auto&x:m[r-3])gi>>x;}
  vector<int>H0(6*(q+1));for(int r=3;r<=8;r++){
   vector<int>pr{1};for(int s=0;s<=r/2;s++)for(int j=0;j<m[r-3][s];j++)pr=conv(pr,{mod(-s*(r-s)),1});
   if(mode==58&&r==5)pr=conv(pr,{mod(-(long long)l1*pw(3,P-2)),1});
   if(mode==58&&r==8)pr=conv(pr,{mod(-(long long)l2*pw(3,P-2)),1});
   if(r==missing)pr=conv(pr,{mod(-l1),1});
   if((int)pr.size()!=q+1)throw runtime_error("row degree");
   for(int b=0;b<=q;b++)for(int a=0;a<6;a++)H0[6*b+a]=mod(H0[6*b+a]+(long long)pr[b]*Lag[r-3][a]);
  }
  int id,nrank,olddet;ri>>id>>nrank>>olddet;if(id!=count||nrank!=K||olddet==0)throw runtime_error("rank header");
  vector<vector<int>>A;set<int>ids;int rid;
  while(ri>>rid){if(!ids.insert(rid).second)throw runtime_error("duplicate jet");int r=rid/100000;int rem=rid%100000,s=rem/10000;rem%=10000;int i=rem/100,j=rem%100;
   if(r<3||r>8||s<0||s>r/2||i<1||(i+(2*s==r?2:1)*j)>=m[r-3][s]*(2*s==r?2:1))throw runtime_error("not a necessary jet");
   auto&R=row(r,s,i,j);auto v=R.first;long long rhs=0;for(int t=0;t<(int)H0.size();t++)rhs+=(long long)H0[t]*R.second[t]%P;v.push_back(mod(rhs));A.push_back(v);
  }
  if((int)A.size()!=K)throw runtime_error("minor dimension");
  int det=1;for(int c=0;c<K;c++){int pivot=K-1;while(pivot>=c&&!A[pivot][c])pivot--;if(pivot<c)throw runtime_error("zero reconstructed determinant");if(pivot!=c){swap(A[c],A[pivot]);det=mod(-det);}int v=A[c][c];det=(long long)det*v%P;int inv=pw(v,P-2);for(int j=c;j<K;j++)A[c][j]=(long long)A[c][j]*inv%P;
   for(int i=c+1;i<K;i++)if(A[i][c]){int f=A[i][c];for(int j=c;j<K;j++)A[i][j]=mod(A[i][j]-(long long)f*A[c][j]);}
  }
  if(!det)throw runtime_error("zero det"); // The original streaming pivots may differ by a row-permutation sign.
  if(det!=olddet&&det!=mod(-olddet))throw runtime_error("pivot product mismatch");
  count++;
 }
 if(getline(ranks,rs))throw runtime_error("extra rank lines");
 cout<<"PASS_LOCAL_CONVOLUTION_MINORS mode="<<mode<<" q="<<q<<" count="<<count<<" modulus="<<P<<"\n";
}
