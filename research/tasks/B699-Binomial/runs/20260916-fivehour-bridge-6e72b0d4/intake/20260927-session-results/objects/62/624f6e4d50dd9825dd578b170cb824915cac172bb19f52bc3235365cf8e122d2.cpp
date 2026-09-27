#include <array>
#include <vector>
#include <map>
#include <fstream>
#include <iostream>
#include <functional>
#include <algorithm>
#include <stdexcept>
using namespace std;
struct Row {vector<int> m; array<int,9> load{}; long long S=0,T=0; int z=0;};
vector<Row> opts[9]; map<long long,vector<int>> bysum[9];
int q; long long leaves=0,gates=0,reject0=0;
Row const* chosen[9]; array<int,9> load{};
bool add(Row const& a) {for(int t=0;t<9;t++)if(load[t]+a.load[t]>2*q)return false;for(int t=0;t<9;t++)load[t]+=a.load[t];return true;}
void sub(Row const&a){for(int t=0;t<9;t++)load[t]-=a.load[t];}
void gen(int r,int total){vector<int> m(r/2+1);function<void(int,int)> f=[&](int s,int rem){if(s==(int)m.size()){if(rem)return;Row a;a.m=m;long long S=0,T=0;for(int b=0;b<(int)m.size();b++){int x=b*(r-b);a.z+=(m[b]>0);a.load[b]+=m[b];a.load[r-b]+=m[b];for(int u=0;u<m[b];u++){T+=S*x;S+=x;}}a.S=S;a.T=T;for(int t=0;t<9;t++)if(a.load[t]>2*q)return;int id=opts[r].size();opts[r].push_back(a);bysum[r][S].push_back(id);return;}for(int v=0;v<=rem;v++){m[s]=v;f(s+1,rem-v);}};f(0,total);}
int main(int argc,char**argv){if(argc!=3)throw runtime_error("q output.gates");q=stoi(argv[1]);if(q!=8&&q!=9)throw runtime_error("only q8/q9 certified");ofstream out(argv[2]);for(int r=3;r<=8;r++)gen(r,q-(r==7?2:0));
for(auto&a:opts[3]) {if(!add(a))continue;chosen[3]=&a;
for(auto&b:opts[4]) {if(!add(b))continue;chosen[4]=&b;
for(auto&c:opts[5]) {if(!add(c))continue;chosen[5]=&c;
long long S6=a.S-3*b.S+3*c.S,S7=3*a.S-8*b.S+6*c.S,S8=6*a.S-15*b.S+10*c.S;
auto i6=bysum[6].find(S6),i8=bysum[8].find(S8);if(i6!=bysum[6].end()&&i8!=bysum[8].end())
for(auto dindex:i6->second){auto&d=opts[6][dindex];if(!add(d))continue;chosen[6]=&d;
for(auto findex:i8->second){auto&f=opts[8][findex];if(!add(f))continue;chosen[8]=&f;
long long T7num=-a.T+5*b.T-10*c.T+10*d.T+f.T;
for(auto&e:opts[7]){if(!add(e))continue;leaves++;chosen[7]=&e;
int z=a.z+b.z+c.z+d.z+e.z+f.z;
if(z>=14){long long L=S7-e.S,P5=T7num-5*e.T-5*L*e.S;bool bad=false;
for(int s=0;s<4;s++){long long x=s*(7-s);if(!e.m[s] && 5*x*x-5*L*x+P5==0)bad=true;}
if(!bad){out<<q<<' '<<L<<' '<<P5;for(int r=3;r<=8;r++)for(auto m:chosen[r]->m)out<<' '<<m;out<<'\n';gates++;}else reject0++;}
sub(e);}
sub(f);}sub(d);}sub(c);}sub(b);}sub(a);}
cout<<"q="<<q<<" line_survivors="<<leaves<<" forbidden_zero_collisions="<<reject0<<" root_gates="<<gates<<'\n';
}
