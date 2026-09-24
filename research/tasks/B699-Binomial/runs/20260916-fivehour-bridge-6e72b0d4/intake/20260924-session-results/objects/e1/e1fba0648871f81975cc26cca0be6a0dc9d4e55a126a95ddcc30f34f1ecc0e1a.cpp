#include <array>
#include <vector>
#include <algorithm>
#include <unordered_map>
#include <map>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <cstdint>
using namespace std;
struct Item{int e;array<int,6>c;array<int,3>k;int s;uint64_t key;};
uint64_t encode(array<int,6>c,array<int,3>k,int s){uint64_t z=0;for(int i=0;i<6;i++)z|=(uint64_t)c[i]<<(6*i);for(int i=0;i<3;i++)z|=(uint64_t)k[i]<<(36+6*i);z|=(uint64_t)s<<54;return z;}
int main(int argc,char**argv){if(argc!=11)throw runtime_error("h c3 c4 c5 c6 c7 c8 signatures out reverse");
 int h=stoi(argv[1]);array<int,6>cap;for(int i=0;i<6;i++)cap[i]=stoi(argv[i+2]);vector<Item>items;
 ifstream in(argv[8]);int e;while(in>>e){Item a;a.e=e;for(int&i:a.c)in>>i;for(int&i:a.k)in>>i;in>>a.s;a.key=encode(a.c,a.k,a.s);bool ok=e+4*7<=h;for(int i=0;i<6;i++)ok&=a.c[i]<=cap[i];if(ok)items.push_back(a);}
 if(stoi(argv[10]))reverse(items.begin(),items.end());
 unordered_map<uint64_t,int>cur,nxt;cur[0]=0;
 for(int step=0;step<8;step++){
  nxt.clear();nxt.reserve(cur.size()*2);int ceiling=h-4*(7-step);
  for(auto[key,e0]:cur){array<int,6>rem;for(int i=0;i<6;i++)rem[i]=cap[i]-((key>>(6*i))&63);
   for(auto&a:items){if(e0+a.e>ceiling)continue;bool ok=true;for(int i=0;i<6;i++)if(a.c[i]>rem[i]){ok=false;break;}if(!ok)continue;
    uint64_t key2=key+a.key;auto it=nxt.find(key2);if(it==nxt.end()||e0+a.e<it->second)nxt[key2]=e0+a.e;
   }
  }
  cur.swap(nxt);
 }
 map<uint64_t,int>ordered(cur.begin(),cur.end());ofstream out(argv[9]);out<<"C3 C4 C5 C6 C7 C8 K4 K6 K8 S5 E\n";
 for(auto[key,e0]:ordered){for(int i=0;i<9;i++)out<<((key>>(6*i))&63)<<' ';out<<((key>>54)&15)<<' '<<e0<<'\n';}
 cout<<"AGGREGATES "<<cur.size()<<'\n';
}
