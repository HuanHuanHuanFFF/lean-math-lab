#include <iostream>
#include <cstdint>
int main(){using U=unsigned long long; using W=__uint128_t; U n1=0,n2=0;
 for(U x=4;x<=20000;x+=2){ U n=x*x;
  for(U u=1; u<=x/2-1; ++u){U j=u*(x+1);if(j<4)continue;
   if((W(3)*u*(2*u-1))%(x-1))continue;
   ++n1;
   if((W(6)*j*(j-1)*(j-2))%(n-2)==0){++n2;std::cout<<"weak "<<x<<" "<<u<<" "<<n<<" "<<j<<"\n";}
  }
 }
 std::cout<<"range_even_x 4 20000 first "<<n1<<" second "<<n2<<"\n";
}
