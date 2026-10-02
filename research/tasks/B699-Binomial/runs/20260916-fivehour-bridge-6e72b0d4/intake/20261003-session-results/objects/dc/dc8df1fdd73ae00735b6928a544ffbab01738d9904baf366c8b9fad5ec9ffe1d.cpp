// Exact finite-field identity checker. This does NOT interpolate or run a CAS.
// Fixed-degree Sylvester determinants use fraction-free Bareiss elimination.
// The Python driver supplies rigorous separate-degree and integer coefficient bounds.
#include <algorithm>
#include <array>
#include <cctype>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
using Z=long long;
Z prime;
Z mult(Z a,Z b){return a*b%prime;}
Z minus_(Z a,Z b){Z z=a-b;return z<0?z+prime:z;}
Z plus_(Z a,Z b){Z z=a+b;return z>=prime?z-prime:z;}
Z pow_(Z a,Z e){Z v=1;while(e){if(e&1)v=mult(v,a);a=mult(a,a);e/=2;}return v;}
Z parse(const std::string&s){Z v=0;bool neg=!s.empty()&&s.front()=='-';for(char c:s)if(std::isdigit(static_cast<unsigned char>(c)))v=(10*v+c-'0')%prime;return neg&&v?prime-v:v;}
struct Term{int u,y,r;Z c;};
struct Poly{std::vector<Term> terms;int du=0,dy=0,dr=0;};
Poly read(){int n;if(!(std::cin>>n)||n<0)throw std::runtime_error("bad polynomial size");Poly p;for(int j=0;j<n;++j){Term t;std::string c;std::cin>>t.u>>t.y>>t.r>>c;if(t.u<0||t.y<0||t.r<0)throw std::runtime_error("negative degree");t.c=parse(c);p.du=std::max(p.du,t.u);p.dy=std::max(p.dy,t.y);p.dr=std::max(p.dr,t.r);p.terms.push_back(t);}return p;}
std::vector<std::vector<Z>> at_y(const Poly&p,Z y){std::vector<Z>powers(p.dy+1,1);for(int i=1;i<=p.dy;++i)powers[i]=mult(powers[i-1],y);std::vector<std::vector<Z>>v(p.dr+1,std::vector<Z>(p.du+1));for(auto t:p.terms)v[t.r][t.u]=plus_(v[t.r][t.u],mult(t.c,powers[t.y]));return v;}
std::vector<Z>at_u(const std::vector<std::vector<Z>>&p,Z u){std::vector<Z>v(p.size());for(size_t r=0;r<p.size();++r)for(auto it=p[r].rbegin();it!=p[r].rend();++it)v[r]=plus_(mult(v[r],u),*it);return v;}
Z bareiss(std::array<std::array<Z,16>,16>a){Z previous=1,sgn=1;for(int k=0;k<15;++k){int row=k;while(row<16&&!a[row][k])++row;if(row==16)return 0;if(row!=k){std::swap(a[row],a[k]);sgn=prime-sgn;}Z pivot=a[k][k],iv=pow_(previous,prime-2);for(int i=k+1;i<16;++i){Z entry=a[i][k];for(int j=k+1;j<16;++j)a[i][j]=mult(minus_(mult(pivot,a[i][j]),mult(entry,a[k][j])),iv);a[i][k]=0;}previous=pivot;}return mult(sgn,a[15][15]);}
int main(int argc,char**argv){try{if(argc!=4)throw std::runtime_error("usage: checker PRIME DEG_U DEG_Y");prime=std::stoll(argv[1]);int du=std::stoi(argv[2]),dy=std::stoi(argv[3]);if(prime<=du+20||prime<=dy+20||prime>1100000000)throw std::runtime_error("bad prime range");std::string scalar;int eu,ey,eum,eym;std::cin>>scalar>>eu>>ey>>eum>>eym;Z c=parse(scalar);std::vector<Poly>polys;for(int i=0;i<6;++i)polys.push_back(read());if(polys[0].dr!=5||polys[1].dr!=11)throw std::runtime_error("fixed degree mismatch");long long count=0;for(int iy=0;iy<=dy;++iy){Z y=iy+5;std::vector<std::vector<std::vector<Z>>> pp;for(auto&p:polys)pp.push_back(at_y(p,y));for(int iu=0;iu<=du;++iu){Z u=iu+3;auto f=at_u(pp[0],u),g=at_u(pp[1],u);std::array<std::array<Z,16>,16>mat{};for(int row=0;row<11;++row)for(int j=0;j<=5;++j)mat[row][row+j]=f[5-j];for(int row=0;row<5;++row)for(int j=0;j<=11;++j)mat[11+row][row+j]=g[11-j];Z rhs=c;rhs=mult(rhs,pow_(u,eu));rhs=mult(rhs,pow_(y,ey));rhs=mult(rhs,pow_(u-1,eum));rhs=mult(rhs,pow_(y-1,eym));rhs=mult(rhs,at_u(pp[2],u)[0]);rhs=mult(rhs,at_u(pp[3],u)[0]);rhs=mult(rhs,pow_(at_u(pp[4],u)[0],8));rhs=mult(rhs,at_u(pp[5],u)[0]);if(bareiss(mat)!=rhs){std::cerr<<"FAIL at "<<u<<","<<y<<" prime "<<prime<<"\n";return 1;}++count;}}std::cout<<"{\"status\":\"PASS\",\"grid_points\":"<<count<<",\"prime\":"<<prime<<"}\n";return 0;}catch(const std::exception&e){std::cerr<<e.what()<<"\n";return 2;}}
