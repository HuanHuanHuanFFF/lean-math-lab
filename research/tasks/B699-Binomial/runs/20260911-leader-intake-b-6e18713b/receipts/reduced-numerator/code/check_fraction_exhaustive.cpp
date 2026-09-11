// Independently enumerates every admissible reduced numerator in the proven box.
// It does not factor n-1, compute CRT roots, or import generator results.
#include <algorithm>
#include <array>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <numeric>
#include <stdexcept>
#include <string>
#include <vector>
using U=unsigned long long; using W=__uint128_t;
U cb(W N){ U lo=0,hi=1; while(W(hi)*hi*hi<=N)hi*=2; while(lo+1<hi){U m=lo+(hi-lo)/2; if(W(m)*m*m<=N)lo=m;else hi=m;}return lo;}
int main(int argc,char**argv){try{
 if(argc!=3)throw std::runtime_error("usage: checker B output.json");
 U B=std::stoull(argv[1]); if(B<1||B>(1ULL<<24))throw std::runtime_error("supported 1<=B<=2^24");
 W budget=108*W(B)*B*B; U rows=0,checked=0,second=0,maxn=0;
 std::vector<std::array<U,6>> first;
 for(U c:{1ULL,3ULL})for(U alpha=2*c;W(c)*c*c*c*alpha*alpha<budget;alpha*=2){
  W den=W(c)*c*c*c*alpha*alpha;
  U maxg=std::min(cb((budget-1)/den), cb((27*W(B)-1)/(W(c)*c*c*c)));
  for(U g=1;g<=maxg;++g){
   if(c==3&&g%3==0)continue;
   U n=alpha*g; if(n<8||n%4)continue;
   U low=std::max<U>({1,(4+g-1)/g,cb(den*g*g*g/108)+1});
   U high=std::min(B,alpha/2); if(low>high)continue;
   ++rows;maxn=std::max(maxn,n); if(!(low&1))++low;
   for(U b=low;b<=high;b+=2){
    ++checked; if(c==3&&b%3==0)continue;
    U j=b*g;
    if((3*W(j)*(j-1))%(n-1))continue;
    first.push_back({n,j,c,g,alpha,b});
    if((W(j)*(j-1)*(j-2))%((n-2)/std::gcd<U>(n-2,6))==0)++second;
   }
  }
 }
 std::sort(first.begin(),first.end()); std::ofstream f(argv[2]);if(!f)throw std::runtime_error("cannot create output");
 f<<"{\"B\":"<<B<<",\"rows\":"<<rows<<",\"max_n_in_rows\":"<<maxn<<",\"numerators_checked\":"<<checked<<",\"second_candidates\":"<<second<<",\"first_candidates\":[";
 bool sep=false;for(auto r:first){if(sep)f<<",";sep=true;f<<"[";for(int k=0;k<6;k++){if(k)f<<",";f<<r[k];}f<<"]";}f<<"]}\n";
 std::cout<<"rows="<<rows<<" tested="<<checked<<" first="<<first.size()<<" second="<<second<<" maxn="<<maxn<<"\n";
 if(second) return 2;
 return 0;
 }catch(const std::exception&e){std::cerr<<e.what()<<"\n";return 1;}}
