#include <array>
#include <vector>
#include <map>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <algorithm>
using namespace std;
using C=array<int,6>;struct Item{int e;C c;int id;};
vector<Item> items;map<array<int,7>,int> cache;
int f(int n,C c){if(!n)return 0;array<int,7>k; k[0]=n;copy(c.begin(),c.end(),k.begin()+1);auto it=cache.find(k);if(it!=cache.end())return it->second;int best=1000000;
 for(auto&a:items){C d;bool ok=true;for(int i=0;i<6;i++){d[i]=c[i]-a.c[i];if(d[i]<0){ok=false;break;}}if(ok)best=min(best,a.e+f(n-1,d));}return cache[k]=best;}
int main(int argc,char**argv){if(argc!=4)throw runtime_error("signatures queries output");ifstream in(argv[1]);Item a;vector<Item>raw;while(in>>a.e){for(auto&v:a.c)in>>v;a.id=raw.size();raw.push_back(a);}
 sort(raw.begin(),raw.end(),[](auto&a,auto&b){return a.e!=b.e?a.e<b.e:(a.c!=b.c?a.c<b.c:a.id<b.id);});
 for(auto&a:raw){bool dominated=false;for(auto&b:items){bool le=b.e<=a.e;for(int i=0;i<6;i++)le=le&&b.c[i]<=a.c[i];if(le){dominated=true;break;}}if(!dominated)items.push_back(a);}
 ifstream qi(argv[2]);ofstream out(argv[3]);int id,h,removed=0,count=0;C c;while(qi>>id>>h){for(auto&v:c)qi>>v;int e=f(8,c);out<<id<<' '<<h<<' '<<e;int n=8;C rem=c;while(n){bool found=false;for(auto&it:items){C next;bool ok=true;for(int z=0;z<6;z++){next[z]=rem[z]-it.c[z];if(next[z]<0)ok=false;}if(ok&&it.e+f(n-1,next)==f(n,rem)){out<<' '<<it.id;rem=next;--n;found=true;break;}}if(!found)throw runtime_error("witness reconstruction");}out<<'\n';if(e>h){cout<<"REMOVED "<<id<<" h="<<h<<" lower="<<e<<'\n';removed++;}count++;}cout<<"states="<<count<<" raw="<<raw.size()<<" pareto="<<items.size()<<" removed="<<removed<<" memo="<<cache.size()<<'\n';}
