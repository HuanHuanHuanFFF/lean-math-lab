// Route falsification ONLY: does not establish an unbounded theorem.
#include <cmath>
#include <cstdint>
#include <iostream>
int main(){
  for (uint64_t n=2;n<=10000;n++) {
    uint64_t a=std::sqrt((long double)n);if(a*a==n)continue;
    for(uint64_t j=1;j<=n/2;j++){
      uint64_t z=n*(n-1)*j*(n-j),r=std::sqrt((long double)z);
      while(r*r<z)++r;
      if(r*r==z){std::cout<<n<<" "<<j<<" "<<r<<"\n";return 0;}
    }
  }
  std::cout<<"No countermodel in the stated bounded diagnostic range. Not a proof.\n";
}
