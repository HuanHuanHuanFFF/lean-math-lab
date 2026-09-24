#include <bits/stdc++.h>
using namespace std; struct I{int e;array<int,6>c;};vector<I>A;unordered_map<uint64_t,int> memo;
uint64_t key(int n,const array<int,6>&c){uint64_t z=n;for(int x:c)z=(z<<6)|x;return z;}
int f(int n,const array<int,6>&c){if(!n)return 0;auto k=key(n,c);auto it=memo.find(k);if(it!=memo.end())return it->second;int best=1000000;for(auto&a:A){if(a.e+4*(n-1)>=best)continue;array<int,6>d;bool ok=true;for(int i=0;i<6;i++){d[i]=c[i]-a.c[i];if(d[i]<0){ok=false;break;}}if(ok)best=min(best,a.e+f(n-1,d));}memo[k]=best;return best;}
int main(int argc,char**argv){if(argc!=5)throw runtime_error("signatures queries output mode");ifstream in(argv[1]);I a;while(in>>a.e){for(int&x:a.c)in>>x;A.push_back(a);}sort(A.begin(),A.end(),[](auto&a,auto&b){return tie(a.e,a.c)<tie(b.e,b.c);});
 if(stoi(argv[4])==0){vector<I> keep;for(auto&a:A){bool drop=false;for(auto&b:keep){if(b.e>a.e)continue;bool ok=true;for(int i=0;i<6;i++)ok&=b.c[i]<=a.c[i];if(ok){drop=true;break;}}if(!drop)keep.push_back(a);}A=keep;}else reverse(A.begin(),A.end());
 ifstream q(argv[2]);ofstream out(argv[3]);int id,h;array<int,6>c;while(q>>id>>h){for(int&x:c)q>>x;out<<id<<' '<<h<<' '<<f(8,c)<<'\n';}
 cout<<"SIGNATURES "<<A.size()<<" MEMO "<<memo.size()<<"\n";
}
