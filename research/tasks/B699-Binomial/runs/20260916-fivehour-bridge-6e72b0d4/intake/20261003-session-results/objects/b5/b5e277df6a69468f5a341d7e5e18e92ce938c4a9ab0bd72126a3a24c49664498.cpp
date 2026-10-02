// Independent exact-used-capacity convolution, then prefix minima.
#include <array>
#include <fstream>
#include <iostream>
#include <vector>
#include <stdexcept>
#include <algorithm>
using namespace std;
int indexof(int a,int b,int c,int d){return ((a*8+b)*5+c)*7+d;}
int main(int argc,char**argv){try{if(argc!=4)throw runtime_error("table T-floor output");ifstream f(argv[1]);int floor=stoi(argv[2]);ofstream out(argv[3]);array<int,7>t;vector<array<int,5>>types;
while(f>>t[0]){for(int i=1;i<7;i++)if(!(f>>t[i]))throw runtime_error("truncated");if(t[1]||t[2]||t[3]>6||t[4]>7||t[5]>4||t[6]>6)continue;int e=t[0];if(t==array<int,7>{4,0,0,2,1,0,0})e=max(e,floor);types.push_back({e,t[3],t[4],t[5],t[6]});}
const int n=1960,INF=10000;vector<int>old(n,INF);old[0]=0;
for(int k=0;k<=8;k++){
 vector<int>atmost=old;
 for(int axis=0;axis<4;axis++)for(int a=0;a<=6;a++)for(int b=0;b<=7;b++)for(int c=0;c<=4;c++)for(int d=0;d<=6;d++){
  array<int,4>r{a,b,c,d};if(!r[axis])continue;int id=indexof(a,b,c,d);r[axis]--;atmost[id]=min(atmost[id],atmost[indexof(r[0],r[1],r[2],r[3])]);
 }
 for(int i=0;i<n;i++)out<<atmost[i]<<'\n';if(k==8){cout<<"T_floor="<<floor<<" M8="<<atmost.back()<<'\n';break;}
 vector<int>next(n,INF);for(int a=0;a<=6;a++)for(int b=0;b<=7;b++)for(int c=0;c<=4;c++)for(int d=0;d<=6;d++){
  int value=old[indexof(a,b,c,d)];if(value>=INF)continue;for(auto t:types)if(a+t[1]<=6&&b+t[2]<=7&&c+t[3]<=4&&d+t[4]<=6){int id=indexof(a+t[1],b+t[2],c+t[3],d+t[4]);next[id]=min(next[id],value+t[0]);}
 }old.swap(next);
}return 0;}catch(const exception&e){cerr<<e.what()<<'\n';return 1;}}
