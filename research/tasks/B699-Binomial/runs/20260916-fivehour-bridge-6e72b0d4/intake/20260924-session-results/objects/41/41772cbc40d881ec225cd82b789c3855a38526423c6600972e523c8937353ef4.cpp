#include <bits/stdc++.h>
using namespace std; struct I{int e,id;array<int,9>x;};
uint64_t pack(array<int,9> x){uint64_t k=0;for(int v:x)k=k*16+v;return k;}
array<int,9>unpack(uint64_t k){array<int,9>x;for(int i=8;i>=0;i--){x[i]=k%16;k/=16;}return x;}
int main(int argc,char**argv){if(argc!=3)throw runtime_error("items output");ifstream in(argv[1]);vector<I>A;I a;while(in>>a.id>>a.e){for(int&v:a.x)in>>v;A.push_back(a);}map<uint64_t,int>old,nxt;old[0]=0;array<int,6>C{0,3,4,3,4,10};
 for(int n=1;n<=8;n++){nxt.clear();for(auto[k,e]:old){auto u=unpack(k);for(auto&s:A){int fee=e+s.e;if(fee+5*(8-n)>111)continue;array<int,9>x;for(int i=0;i<9;i++)x[i]=u[i]+s.x[i];bool ok=true;for(int i=0;i<6;i++)if(2*x[i]+((i%2)?x[6+i/2]:0)>C[i]){ok=false;break;}if(!ok)continue;auto z=pack(x);auto it=nxt.find(z);if(it==nxt.end()||fee<it->second)nxt[z]=fee;}}old.swap(nxt);cerr<<n<<' '<<old.size()<<'\n';}
 ofstream out(argv[2]);for(auto[k,e]:old){auto x=unpack(k);out<<e;for(int v:x)out<<' '<<v;out<<'\n';}
}
