// Exact finite certificates for E Round 3. No floating-point arithmetic.
// Independent count engines: full sieve, or core wheel + deletion recurrence.
#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <numeric>
#include <stdexcept>
#include <string>
#include <vector>
using I = std::int64_t;
using V = std::vector<std::int32_t>;

int main(int argc, char** argv) {
  try {
    if (argc != 2) throw std::runtime_error("Use: kernel_check sieve|wheel; parameters on stdin");
    const std::string method(argv[1]);
    if (method != "sieve" && method != "wheel") throw std::runtime_error("Unknown method");
    I R, K; int nc, nf;
    if (!(std::cin >> R >> K >> nc >> nf)) throw std::runtime_error("Missing parameters");
    if (R != 32 || K < 2 || K > (I(1)<<27) || nc != 7 || nf != 17)
      throw std::runtime_error("Parameters outside the certified resource bounds");
    std::vector<I> core(nc), full(nf), extra;
    for (auto& p:core) if (!(std::cin>>p)) throw std::runtime_error("Missing core prime");
    for (auto& p:full) if (!(std::cin>>p)) throw std::runtime_error("Missing auxiliary prime");
    if (!std::is_sorted(core.begin(),core.end()) || !std::is_sorted(full.begin(),full.end()))
      throw std::runtime_error("Unsorted prime sets");
    I Q=1; for (I p:core) { if(p<2 || p>17) throw std::runtime_error("Invalid core"); Q*=p; }
    if(Q!=510510) throw std::runtime_error("Wrong core product");
    for (I p:full) if(!std::binary_search(core.begin(),core.end(),p)) extra.push_back(p);
    if (extra.size()!=10) throw std::runtime_error("Core is not a subset");
    V A0(Q+1,0);
    if(method=="sieve") {
      std::vector<std::uint8_t> b(Q+1,1); b[0]=0;
      for(I p:core)for(I u=p;u<=Q;u+=p)b[u]=0;
      for(I u=1;u<=Q;++u)A0[u]=A0[u-1]+b[u];
    } else {
      for(I u=1;u<=Q;++u)A0[u]=A0[u-1]+(std::gcd(u,Q)==1);
    }
    const I phi=A0[Q];
    auto a0=[&](I u)->I { return (u/Q)*phi + A0[u%Q]; };
    I lo=0,hi=0;
    // Upward jumps can occur only at integer u. The other jump family is
    // u=R*j/(R-1); jumps at R*j are already included among the integers.
    for(I u=0;u<=R*Q;++u) {
      I g=a0(u)-a0((R-1)*u/R)-a0(u/R);
      lo=std::min(lo,g);hi=std::max(hi,g);
    }
    for(I j=0;j<=(R-1)*Q;++j) {
      I g=a0(R*j/(R-1))-a0(j)-a0(j/(R-1));
      lo=std::min(lo,g);hi=std::max(hi,g);
    }
    I M=std::max(-lo,hi)*(I(1)<<extra.size());
    V A(K+1,0);
    if(method=="sieve") {
      std::vector<std::uint8_t>b(K+1,1);b[0]=0;
      for(I p:full)for(I u=p;u<=K;u+=p)b[u]=0;
      for(I u=1;u<=K;++u)A[u]=A[u-1]+b[u];
    } else {
      for(I u=0;u<=K;++u)A[u]=static_cast<std::int32_t>(a0(u));
      // Descending order is essential: A[u/p] must still be an OLD count.
      for(I p:extra)for(I u=K;u>=0;--u)A[u]-=A[u/p];
    }
    std::vector<I>D; I mx=0;
    for(I u=2;u<=K;++u) {
      I g=I(A[u])-A[(R-1)*u/R]-A[u/R];
      if(g>mx) { for(I h=mx+1;h<=g;++h)D.push_back(u);mx=g; }
    }
    if(mx>M)throw std::runtime_error("Observed level exceeds the global bound");
    std::cout<<"{\"core_Q\":"<<Q<<",\"core_phi\":"<<phi
      <<",\"core_min\":"<<lo<<",\"core_max\":"<<hi
      <<",\"core_integer_checks\":"<<(R*Q+1)
      <<",\"core_fractional_checks\":"<<((R-1)*Q+1)
      <<",\"R\":"<<R<<",\"K\":"<<K<<",\"M\":"<<M
      <<",\"levels\":[";
    for(std::size_t i=0;i<D.size();++i){if(i)std::cout<<",";std::cout<<D[i];}
    std::cout<<"],\"end_count\":"<<A[K]<<",\"observed_max\":"<<mx<<"}\n";
    return 0;
  } catch(const std::exception& e) { std::cerr<<e.what()<<"\n"; return 1; }
}
