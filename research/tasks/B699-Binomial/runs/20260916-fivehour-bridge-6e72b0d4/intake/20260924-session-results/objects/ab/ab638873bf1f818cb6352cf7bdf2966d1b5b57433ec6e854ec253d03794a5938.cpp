// Reuse the recursive <=-capacity solver; compare every cell against independent
// exact-used-capacity forward DP plus prefix minima in Python.
#define main frozen_fee_program_main
#include "fee_dp.cpp"
#undef main
int main(int argc,char**argv){
 if(argc!=3)throw runtime_error("signatures output");ifstream in(argv[1]);I a;
 while(in>>a.e){for(int&x:a.c)in>>x;A.push_back(a);}ofstream out(argv[2]);
 for(int n=0;n<=8;n++)for(int c4=0;c4<=2;c4++)for(int c5=0;c5<=8;c5++)for(int c7=0;c7<=8;c7++)for(int c8=0;c8<=5;c8++){
 array<int,6>c={0,c4,c5,0,c7,c8};out<<n;for(int x:c)out<<' '<<x;out<<' '<<f(n,c)<<'\n';
 }cout<<"PASS_RECURSIVE_13122_FEE_CELLS\n";
}
