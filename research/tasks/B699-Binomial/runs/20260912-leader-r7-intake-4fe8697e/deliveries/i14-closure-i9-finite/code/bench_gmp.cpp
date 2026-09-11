#include <gmpxx.h>
#include <chrono>
#include <iostream>
int main(int argc,char**argv){unsigned long k=argc>1?std::stoul(argv[1]):1000000;auto t=std::chrono::steady_clock::now();mpz_class P,Q,v;mpz_ui_pow_ui(P.get_mpz_t(),2,k);mpz_ui_pow_ui(Q.get_mpz_t(),3,k*420/1000);int ok=mpz_invert(v.get_mpz_t(),P.get_mpz_t(),Q.get_mpz_t());auto dt=std::chrono::duration<double>(std::chrono::steady_clock::now()-t).count();std::cout<<"k="<<k<<" Qbits="<<mpz_sizeinbase(Q.get_mpz_t(),2)<<" inverse="<<ok<<" seconds="<<dt<<"\n";}
