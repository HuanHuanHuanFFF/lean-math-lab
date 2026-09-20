#include <cstdint>
#include <algorithm>
#include <numeric>
#include <vector>
constexpr uint32_t P=65521;
constexpr uint32_t OFFSET=P*(P-1);
static uint32_t power(uint32_t a,uint32_t k){uint64_t z=1,b=a;while(k){if(k&1)z=z*b%P;b=b*b%P;k>>=1;}return static_cast<uint32_t>(z);}
// Exact uint32 arithmetic. OFFSET + (P-1) = P^2-1 < 2^32.
// OFFSET >= (P-1)^2, so no subtraction underflow. No floating-point rank.
extern "C" int rank65521(uint32_t *A,int nr,int nc,int *rows,int *cols,uint32_t *det_out){
 std::vector<int> ids(nr);std::iota(ids.begin(),ids.end(),0);int rk=0;uint32_t det=1;
 for(int j=0;j<nc && rk<nr;j++){
  int k=rk;while(k<nr && !A[static_cast<size_t>(k)*nc+j])k++;if(k==nr)continue;
  if(k!=rk){for(int c=0;c<nc;c++)std::swap(A[static_cast<size_t>(k)*nc+c],A[static_cast<size_t>(rk)*nc+c]);std::swap(ids[k],ids[rk]);det=det?P-det:0;}
  const uint32_t *pivot=A+static_cast<size_t>(rk)*nc;uint32_t inv=power(pivot[j],P-2);det=static_cast<uint64_t>(det)*pivot[j]%P;
  rows[rk]=ids[rk];cols[rk]=j;
  for(int i=rk+1;i<nr;i++){
   uint32_t *row=A+static_cast<size_t>(i)*nc;uint32_t fac=static_cast<uint64_t>(row[j])*inv%P;if(!fac)continue;row[j]=0;
   for(int c=j+1;c<nc;c++)row[c]=(row[c]+OFFSET-fac*pivot[c])%P;
  }rk++;
 }
 *det_out=(nr==nc && rk==nr)?det:0;return rk;
}
// Second fixed prime for inherited certificates. Canonical storage fits uint32;
// all products and subtraction offsets below 1000033^2 fit uint64 exactly.
constexpr uint64_t P2=1000033, OFFSET2=P2*(P2-1);
static uint32_t power2(uint32_t a,uint32_t k){uint64_t z=1,b=a;while(k){if(k&1)z=z*b%P2;b=b*b%P2;k>>=1;}return z;}
extern "C" int rank1000033(uint32_t *A,int nr,int nc,int *rows,int *cols,uint32_t *det_out){
 std::vector<int> ids(nr);std::iota(ids.begin(),ids.end(),0);int rk=0;uint64_t det=1;
 for(int j=0;j<nc && rk<nr;j++){
  int k=rk;while(k<nr && !A[static_cast<size_t>(k)*nc+j])k++;if(k==nr)continue;
  if(k!=rk){for(int c=0;c<nc;c++)std::swap(A[static_cast<size_t>(k)*nc+c],A[static_cast<size_t>(rk)*nc+c]);std::swap(ids[k],ids[rk]);det=det?P2-det:0;}
  const uint32_t *pivot=A+static_cast<size_t>(rk)*nc;uint32_t inv=power2(pivot[j],P2-2);det=det*pivot[j]%P2;
  rows[rk]=ids[rk];cols[rk]=j;
  for(int i=rk+1;i<nr;i++){
   uint32_t *row=A+static_cast<size_t>(i)*nc;uint64_t fac=static_cast<uint64_t>(row[j])*inv%P2;if(!fac)continue;row[j]=0;
   for(int c=j+1;c<nc;c++)row[c]=(static_cast<uint64_t>(row[c])+OFFSET2-fac*pivot[c])%P2;
  }rk++;
 }
 *det_out=(nr==nc && rk==nr)?det:0;return rk;
}
static_assert(static_cast<uint64_t>(P)*P-1<UINT32_MAX,"small prime uint32 bound");
static_assert(OFFSET>=static_cast<uint64_t>(P-1)*(P-1),"no subtraction underflow");
