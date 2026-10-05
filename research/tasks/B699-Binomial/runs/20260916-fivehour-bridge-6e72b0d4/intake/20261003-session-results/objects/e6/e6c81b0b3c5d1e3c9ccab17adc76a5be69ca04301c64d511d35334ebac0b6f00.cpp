// Independent exact-spent-cost convolution plus componentwise prefix minima.
// Discovery uses <=capacity convolution. This receiver recomputes old M7,
// all exact-fee floors, scope masks, and every DP cell from integer inputs.
#include <bits/stdc++.h>
using namespace std;
using Fee=array<int,6>; using Key=array<int,7>;
const int INF=10000;
struct Type {int e;Fee c;};
void need(bool x,const string&s){if(!x)throw runtime_error(s);}
vector<Type> readtypes(const string&f){ifstream in(f);need(bool(in),"types open");vector<Type>a;int e;while(in>>e){Type t;t.e=e;for(int&v:t.c)need(bool(in>>v),"types truncated");a.push_back(t);}return a;}
bool le(const Fee&a,const Fee&b){for(int i=0;i<6;i++)if(a[i]>b[i])return false;return true;}
struct Box{
 Fee C,stride;int n;vector<Fee> cs;
 Box(Fee c):C(c){n=1;for(int i=5;i>=0;i--){stride[i]=n;n*=C[i]+1;}for(int k=0;k<n;k++){Fee f;for(int i=0;i<6;i++)f[i]=(k/stride[i])%(C[i]+1);cs.push_back(f);}}
 int idx(const Fee&f)const{int z=0;for(int i=0;i<6;i++)z+=f[i]*stride[i];return z;}
 vector<vector<int>> layers(const vector<Type>&all)const{
  vector<Type> ts;vector<int>off;for(auto&t:all)if(le(t.c,C)){ts.push_back(t);off.push_back(idx(t.c));}
  vector<vector<int>> exact(9,vector<int>(n,INF)),cap;exact[0][0]=0;
  for(int k=1;k<=8;k++)for(int z=0;z<n;z++)for(int a=0;a<(int)ts.size();a++)if(le(ts[a].c,cs[z]))exact[k][z]=min(exact[k][z],exact[k-1][z-off[a]]+ts[a].e);
  cap=exact;
  for(auto&row:cap)for(int d=0;d<6;d++)for(int z=0;z<n;z++)if(cs[z][d])row[z]=min(row[z],row[z-stride[d]]);
  return cap;
 }
};
void compare_binary(const string&path,const vector<vector<int>>& a){ifstream in(path,ios::binary);need(bool(in),"DP binary open");for(auto&r:a)for(int x:r){unsigned char b[4];need(bool(in.read((char*)b,4)),"DP truncated");uint32_t v=b[0]|(uint32_t(b[1])<<8)|(uint32_t(b[2])<<16)|(uint32_t(b[3])<<24);need(v==uint32_t(x),"DP cell mismatch");}char c;need(!in.get(c),"DP extra bytes");}
int main(int ac,char**av){try{
 need(ac==5,"raw catalog job directory");auto raw=readtypes(av[1]);need(raw.size()==649,"raw649 cardinality");
 map<Key,int>catalog;{ifstream in(av[2]);int q;while(in>>q){Key k;k[0]=q;for(int i=1;i<7;i++)need(bool(in>>k[i]),"catalog truncated");int mask;need(bool(in>>mask),"mask missing");need(!catalog.count(k),"duplicate catalog key");catalog[k]=mask;}}
 int id,h,license;Fee v,C;{ifstream in(av[3]);need(bool(in>>id>>h>>license),"job header");for(int&x:v)need(bool(in>>x),"job v");for(int&x:C)need(bool(in>>x),"job C");}
 const vector<vector<int>>off={{77,74},{67,57},{51,54,46},{40,43,48},{31,34,39,45},{25,28,33,39}};const int diag[6]={0,56,0,41,0,52};
 need(2*h+accumulate(v.begin(),v.end(),0)==305,"E0 contract");for(int r=0;r<6;r++){int c=2*h-max(0,diag[r]-v[r]);for(int x:off[r])c-=2*max(0,x-v[r]);need(c==C[r]&&c>=0,"capacity recovery");}
 Box box(C);auto old=box.layers(raw);vector<Type> exact;vector<array<int,10>>rows;int totalcuts=0,needed=0;
 for(auto c:box.cs){if(c[0]%2||c[2]%2||c[4]%2)continue;int q0=INF;for(auto&t:raw)if(le(t.c,c))q0=min(q0,t.e);if(q0==INF)continue;Fee rem;for(int r=0;r<6;r++)rem[r]=C[r]-c[r];int upper=h-old[7][box.idx(rem)];int q=q0;while(q<=upper){Key k;k[0]=q;copy(c.begin(),c.end(),k.begin()+1);auto it=catalog.find(k);if(it==catalog.end()||(it->second&~license))break;needed|=it->second;totalcuts++;q++;}array<int,10>row;copy(c.begin(),c.end(),row.begin());row[6]=q0;row[7]=upper;row[8]=q;row[9]=(q<=upper);rows.push_back(row);if(q<=upper)exact.push_back({q,c});}
 string dir=av[4];{ifstream in(dir+"/fees.tsv");need(bool(in),"fee certificate open");for(auto&r:rows)for(int x:r){int y;need(bool(in>>y)&&x==y,"exact fee floor mismatch");}string s;need(!(in>>s),"extra fee records");}
 auto now=box.layers(exact);compare_binary(dir+"/old.i32",old);compare_binary(dir+"/new.i32",now);
 cout<<"{\"verified\":true,\"state\":"<<id<<",\"h\":"<<h<<",\"license_mask\":"<<license<<",\"required_mask\":"<<needed<<",\"M8_old\":"<<old[8].back()<<",\"M8_new\":"<<now[8].back()<<",\"types\":"<<exact.size()<<",\"blocked\":"<<totalcuts<<",\"cells_compared\":"<<18*box.n<<",\"eliminated\":"<<(now[8].back()>h?"true":"false")<<"}\n";
 return 0;}catch(exception&e){cerr<<"REJECT "<<e.what()<<'\n';return 1;}}
