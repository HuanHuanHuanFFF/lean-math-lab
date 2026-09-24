// F_121 = F_11[u]/(u^2+1), encoded a+11*b. Deterministic factor-degree blocks.
#include <bits/stdc++.h>
using namespace std;using Poly=vector<int>;int Ad[121][121],Su[121][121],Mu[121][121],Iv[121];
int prime(int a){a%=11;return a<0?a+11:a;}
int fpow(int a,int n){int z=1;for(;n;n>>=1,a=Mu[a][a])if(n&1)z=Mu[z][a];return z;}
void init(){for(int a=0;a<121;a++)for(int b=0;b<121;b++){int x=a%11,y=a/11,z=b%11,w=b/11;Ad[a][b]=prime(x+z)+11*prime(y+w);Su[a][b]=prime(x-z)+11*prime(y-w);Mu[a][b]=prime(x*z-y*w)+11*prime(x*w+y*z);}for(int a=1;a<121;a++)Iv[a]=fpow(a,119);for(int a=1;a<121;a++)if(Mu[a][Iv[a]]!=1)throw runtime_error("not field");}
void tr(Poly &a){while(!a.empty()&&!a.back())a.pop_back();}
Poly remn(Poly a,const Poly&f){if(f.empty())throw runtime_error("zero mod");for(int k=(int)a.size()-(int)f.size();k>=0;k--){int v=Mu[a[k+f.size()-1]][Iv[f.back()]];if(v)for(size_t j=0;j<f.size();j++)a[k+j]=Su[a[k+j]][Mu[v][f[j]]];}if(a.size()>=f.size())a.resize(f.size()-1);tr(a);return a;}
Poly quo(Poly a,const Poly&f){Poly q(max(0,(int)a.size()-(int)f.size()+1));for(int k=(int)a.size()-(int)f.size();k>=0;k--){int v=Mu[a[k+f.size()-1]][Iv[f.back()]];q[k]=v;if(v)for(size_t j=0;j<f.size();j++)a[k+j]=Su[a[k+j]][Mu[v][f[j]]];}tr(a);if(!a.empty())throw runtime_error("nonexact");tr(q);return q;}
Poly mon(Poly a){if(!a.empty()){int v=Iv[a.back()];for(int &x:a)x=Mu[x][v];}return a;}
Poly gd(Poly a,Poly b){while(!b.empty()){auto c=remn(a,b);a=b;b=c;}return mon(a);}
Poly mul(const Poly&a,const Poly&b){if(a.empty()||b.empty())return{};Poly z(a.size()+b.size()-1);for(size_t i=0;i<a.size();i++)if(a[i])for(size_t j=0;j<b.size();j++)z[i+j]=Ad[z[i+j]][Mu[a[i]][b[j]]];tr(z);return z;}
Poly power(Poly a,int n,const Poly&f){Poly z{1};for(;n;n>>=1,a=remn(mul(a,a),f))if(n&1)z=remn(mul(z,a),f);return z;}
vector<pair<Poly,int>> sf(Poly f){vector<pair<Poly,int>>out;f=mon(f);if(f.size()<2)return out;Poly der(f.size()-1);for(size_t i=1;i<f.size();i++)der[i-1]=Mu[f[i]][i%11];tr(der);Poly c=gd(f,der),w=quo(f,c);int i=1;
 while(w.size()>1){Poly y=gd(w,c),z=quo(w,y);if(z.size()>1)out.push_back({z,i});w=y;c=quo(c,y);i++;}
 if(c.size()>1){Poly rt((c.size()-1)/11+1);for(size_t j=0;j<c.size();j++){if(j%11){if(c[j])throw runtime_error("pth-power expected");}else rt[j/11]=fpow(c[j],11);}for(auto[a,b]:sf(rt))out.push_back({a,b*11});}return out;}
struct Block {int d,m;Poly f;};
vector<Block> fac(Poly f){vector<Block>out;for(auto[g,m]:sf(f)){Poly xp{0,1};for(int d=1;g.size()>1;d++){
 if((int)g.size()-1<2*d){out.push_back({(int)g.size()-1,m,g});break;}
 xp=power(xp,121,g);Poly z=xp;if(z.size()<2)z.resize(2);z[1]=Su[z[1]][1];tr(z);Poly a=gd(g,z);if(a.size()>1){out.push_back({d,m,a});g=quo(g,a);if(g.size()>1)xp=remn(xp,g);}
 }}return out;}
int main(int argc,char**argv){if(argc<4)throw runtime_error("basis coordinates_csv output");init();ifstream in(argv[1]);string s;int p,h,dim;in>>s>>p>>s>>h>>s>>dim;if(p!=11)throw runtime_error("field");vector<vector<Poly>>basis(dim);
 for(int k=0;k<dim;k++){int b,w;in>>s>>b>>w;basis[k].resize(h+1);for(int j=0;j<=h;j++){int jj,d;in>>jj>>d;basis[k][j].resize(d+1);for(int&x:basis[k][j])in>>x;}}
 string vv=argv[2];replace(vv.begin(),vv.end(),',',' ');istringstream is(vv);vector<int>v(dim);for(int&x:v)is>>x;ofstream out(argv[3]);out<<"p 11 extension_degree 2 modulus_u2_plus_1 h "<<h<<" dimension "<<dim<<" minimum_factor_degree 3\n";
 for(int n=11;n<121;n++){Poly f(h+1);for(int b=0;b<=h;b++)for(int k=0;k<dim;k++){int x=0;for(int a=(int)basis[k][b].size()-1;a>=0;a--)x=Ad[Mu[x][n]][basis[k][b][a]];f[b]=Ad[f[b]][Mu[x][v[k]]];}tr(f);if(f.empty())continue;auto bs=fac(f);int count=0;for(auto&x:bs)count+=((int)x.f.size()-1)/x.d*x.m;int bound=count+(h-((int)f.size()-1))/3;
 cout<<"n "<<n<<" degree "<<f.size()-1<<" factors "<<count<<" bound "<<bound<<'\n';
 if(bound<8){out<<"POINT";for(int x:v)out<<' '<<x;out<<" AT "<<n<<" BOUND "<<bound<<" DEG "<<f.size()-1<<" LC "<<f.back()<<" BLOCKS "<<bs.size()<<'\n';for(auto&x:bs){out<<x.d<<' '<<x.m<<' '<<x.f.size()-1;for(int a:x.f)out<<' '<<a;out<<'\n';}cout<<"PASS_EXTENSION_WITNESS\n";return 0;}
 }
 cout<<"NO_EXTENSION_WITNESS\n";return 2;}
