// New finite source-profile diagnostic. No enumeration of original n or j.
// Full rank modulo a verified prime is a rational full-rank certificate.
// Deficient modular cases are EXPORTED, never accepted as rational rank drops.
#include <array>
#include <vector>
#include <fstream>
#include <iostream>
#include <string>
#include <cstdint>
#include <algorithm>
#include <chrono>
using I=long long;
constexpr I P=1000003;
I pw(I a,int e){I z=1;for(;e;e>>=1,a=a*a%P)if(e&1)z=z*a%P;return z;}
struct Pt{int n,x,id;};
struct Choice{unsigned hits,sing;};
struct Mode{
 int d,cols; std::string name;
 std::vector<std::array<I,25>> value, dn, dx;
};
std::vector<Pt> pts;
std::array<std::vector<int>,6> rows;
long long limit=0,total=0,bad=0,cap=20000;
bool stopped=false;
std::ofstream out;
I mat[40][25];
void check(const Mode& md,unsigned hits,unsigned sing){
 if(stopped)return;
 if(limit && total>=limit){stopped=true;return;}
 int nr=0;
 for(auto p:pts)if(hits>>p.id&1){
  std::copy_n(md.value[p.id].data(),md.cols,mat[nr++]);
  if(sing>>p.id&1){std::copy_n(md.dn[p.id].data(),md.cols,mat[nr++]);std::copy_n(md.dx[p.id].data(),md.cols,mat[nr++]);}
 }
 int r=0;
 for(int c=0;c<md.cols && r<nr;c++){
  int k=r;while(k<nr && !mat[k][c])k++;if(k==nr)continue;
  for(int j=c;j<md.cols;j++)std::swap(mat[k][j],mat[r][j]);
  I inv=pw(mat[r][c],P-2);
  for(int j=c;j<md.cols;j++)mat[r][j]=mat[r][j]*inv%P;
  for(int i=r+1;i<nr;i++)if(mat[i][c]){I u=mat[i][c];for(int j=c;j<md.cols;j++)mat[i][j]=(mat[i][j]-u*mat[r][j]%P+P)%P;}
  r++;
 }
 total++;
 if(r<md.cols){bad++;out<<md.name<<" "<<hits<<" "<<sing<<" "<<r<<"\n"; if(bad>=cap)stopped=true;}
}
std::vector<Choice> choices(int row,int kind){
 // 0: three smooth; 1: two smooth; 2: one singular only;
 // 3: one smooth + one singular; 4: two singular.
 std::vector<Choice> v;auto rs=rows[row];
 if(kind==2){for(int x:rs)v.push_back({1u<<x,1u<<x});return v;}
 for(int a=0;a<(int)rs.size();a++)for(int b=a+1;b<(int)rs.size();b++){
  unsigned m=(1u<<rs[a])|(1u<<rs[b]);
  if(kind==0){for(int c=b+1;c<(int)rs.size();c++)v.push_back({m|(1u<<rs[c]),0});}
  else if(kind==1)v.push_back({m,0});
  else if(kind==3){v.push_back({m,1u<<rs[a]});v.push_back({m,1u<<rs[b]});}
  else if(kind==4)v.push_back({m,m});
 }
 return v;
}
void rec(const Mode& md,const std::array<std::vector<Choice>,6>& cs,int r,unsigned h,unsigned s){
 if(stopped)return;
 if(r==6){check(md,h,s);return;}
 for(auto c:cs[r]){rec(md,cs,r+1,h|c.hits,s|c.sing);if(stopped)return;}
}
Mode mode(int d,std::string name){
 Mode m{d,0,name,{},{},{}};std::vector<std::pair<int,int>> mons;
 for(int b=0;2*b<=d;b++)for(int a=0;a+2*b<=d;a++)mons.push_back({a,b});m.cols=mons.size();
 for(auto p:pts){std::array<I,25> v{},n{},x{};int j=0;for(auto [a,b]:mons){
  v[j]=pw(p.n,a)*pw(p.x,b)%P;
  n[j]=a? a*pw(p.n,a-1)%P*pw(p.x,b)%P:0;
  x[j]=b? b*pw(p.n,a)%P*pw(p.x,b-1)%P:0;j++;
 }m.value.push_back(v);m.dn.push_back(n);m.dx.push_back(x);}
 return m;
}
int main(int argc,char**argv){
 if(argc<3){std::cerr<<"usage: profile_probe A|B|C output_path [limit] [bad_cap]\n";return 2;}
 std::string kind=argv[1];out.open(argv[2]);if(!out)return 2;
 if(argc>3)limit=std::stoll(argv[3]);if(argc>4)cap=std::stoll(argv[4]);
 for(int n=3;n<=8;n++)for(int s=0;s<=n/2;s++){int id=pts.size();pts.push_back({n,s*(n-s),id});rows[n-3].push_back(id);}
 auto md=mode(kind=="C"?8:6,kind);
 auto t0=std::chrono::steady_clock::now();
 if(kind=="A"){for(int a=0;a<6&&!stopped;a++)for(int b=a+1;b<6&&!stopped;b++)for(int c=0;c<6&&!stopped;c++)if(c!=a&&c!=b){
  std::array<std::vector<Choice>,6> cs;for(int r=0;r<6;r++)cs[r]=choices(r,(r==a||r==b)?0:(r==c?2:3));rec(md,cs,0,0,0);
 }
 } else if(kind=="B"||kind=="C"){for(int a=0;a<6&&!stopped;a++)for(int b=0;b<6&&!stopped;b++)if(a!=b){
  std::array<std::vector<Choice>,6> cs;for(int r=0;r<6;r++)cs[r]=choices(r,r==a?0:(r==b?(kind=="B"?1:3):(kind=="B"?3:4)));rec(md,cs,0,0,0);
 }
 } else {std::cerr<<"invalid mode\n";return 2;}
 double sec=std::chrono::duration<double>(std::chrono::steady_clock::now()-t0).count();
 std::cout<<"mode="<<kind<<" total="<<total<<" deficient="<<bad<<" stopped="<<stopped<<" seconds="<<sec<<" prime="<<P<<"\n";
 return 0;
}
