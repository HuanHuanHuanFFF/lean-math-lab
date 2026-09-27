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
int q,delta,kappa; long long leaves=0,gates=0,reject0=0;
Row const* chosen[9]; array<int,9> load{};
bool add(Row const& a) {for(int t=0;t<9;t++)if(load[t]+a.load[t]>2*q)return false;for(int t=0;t<9;t++)load[t]+=a.load[t];return true;}
void sub(Row const&a){for(int t=0;t<9;t++)load[t]-=a.load[t];}
void gen(int r,int total){vector<int> m(r/2+1);function<void(int,int)> f=[&](int s,int rem){if(s==(int)m.size()){if(rem)return;Row a;a.m=m;long long S=0,T=0;for(int b=0;b<(int)m.size();b++){int x=b*(r-b);a.z+=(m[b]>0);a.load[b]+=m[b];a.load[r-b]+=m[b];for(int u=0;u<m[b];u++){T+=S*x;S+=x;}}a.S=S;a.T=T;if(r==8){if(m[4]<kappa)return;a.load[4]-=kappa;}for(int t=0;t<9;t++)if(a.load[t]>2*q)return;int id=opts[r].size();opts[r].push_back(a);bysum[r][S].push_back(id);return;}for(int v=0;v<=rem;v++){m[s]=v;f(s+1,rem-v);}};f(0,total);}
int main(int argc,char**argv){if(argc!=4)throw runtime_error("q delta output.gates");q=stoi(argv[1]);delta=stoi(argv[2]);if(delta<0||delta>2)throw runtime_error("delta");kappa=4-2*delta;if(q!=8&&q!=9)throw runtime_error("only q8/q9 in this round");ofstream out(argv[3]);for(int r=3;r<=8;r++)gen(r,q-(r==8?delta:0));
for(auto&a:opts[3]) {if(!add(a))continue;chosen[3]=&a;
for(auto&b:opts[4]) {if(!add(b))continue;chosen[4]=&b;
for(auto&c:opts[5]) {if(!add(c))continue;chosen[5]=&c;
long long S6=a.S-3*b.S+3*c.S,S7=3*a.S-8*b.S+6*c.S,S8=6*a.S-15*b.S+10*c.S;
auto i6=bysum[6].find(S6),i7=bysum[7].find(S7);if(i6!=bysum[6].end()&&i7!=bysum[7].end())
for(auto dindex:i6->second){auto&d=opts[6][dindex];if(!add(d))continue;chosen[6]=&d;
for(auto eindex:i7->second){auto&e=opts[7][eindex];if(!add(e))continue;chosen[7]=&e;
long long T8=a.T-5*b.T+10*c.T-10*d.T+5*e.T;
for(auto&f:opts[8]){if(!add(f))continue;leaves++;chosen[8]=&f;
int z=a.z+b.z+c.z+d.z+e.z+f.z;
if(z>=14){long long L=S8-f.S,P=T8-f.T-L*f.S;bool bad=false;
if(delta==0 && (L!=0||P!=0))bad=true;
if(delta==1 && P!=0)bad=true;
for(int s=0;s<5;s++){long long x=s*(8-s);if(!f.m[s] && ((delta==2 && x*x-L*x+P==0)||(delta==1 && x==L)))bad=true;}
if(!bad){out<<q<<' '<<L<<' '<<P;for(int r=3;r<=8;r++)for(auto m:chosen[r]->m)out<<' '<<m;out<<'\n';gates++;}else reject0++;}
sub(f);}
sub(e);}sub(d);}sub(c);}sub(b);}sub(a);}
cout<<"q="<<q<<" delta="<<delta<<" kappa="<<kappa<<" line_survivors="<<leaves<<" rejected_trace_or_collision="<<reject0<<" root_gates="<<gates<<'\n';
}
