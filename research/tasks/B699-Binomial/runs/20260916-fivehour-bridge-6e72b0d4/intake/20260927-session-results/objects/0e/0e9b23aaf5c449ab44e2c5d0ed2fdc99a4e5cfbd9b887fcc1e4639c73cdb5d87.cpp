// Alternate exhaustive enumeration: saturated anchors 3,4,6 (not 3,4,5).
#include <vector>
#include <array>
#include <map>
#include <functional>
#include <fstream>
#include <iostream>
#include <stdexcept>
using namespace std;
struct Opt {vector<int>m;array<int,9>load{};long long S=0,T=0;int z=0;};
int q,delta,kappa;vector<Opt> opt[9];map<long long,vector<int>> sums[9];
array<const Opt*,9> sel{};array<int,9> loads{};long long kept=0,leaves=0;
bool take(const Opt&o){for(int t=0;t<9;t++)if(loads[t]+o.load[t]>2*q)return false;for(int t=0;t<9;t++)loads[t]+=o.load[t];return true;}
void untake(const Opt&o){for(int t=0;t<9;t++)loads[t]-=o.load[t];}
void make(int r){vector<int>m(r/2+1);function<void(int,int)>go=[&](int pos,int n){if(pos==r/2){m[pos]=n;Opt o;o.m=m;long long squares=0;for(int s=0;s<=r/2;s++){long long x=s*(r-s);o.S+=m[s]*x;squares+=m[s]*x*x;o.z+=m[s]>0;o.load[s]+=m[s];o.load[r-s]+=m[s];}o.T=(o.S*o.S-squares)/2;if(r==8){if(m[4]<kappa)return;o.load[4]-=kappa;}for(int l:o.load)if(l>2*q)return;int ix=opt[r].size();opt[r].push_back(o);sums[r][o.S].push_back(ix);return;}for(int a=n;a>=0;a--){m[pos]=a;go(pos+1,n-a);}};go(0,q-(r==8?delta:0));}
long long Snum(int x){ // six times the quadratic evaluated at x, from anchors 3,4,6.
 return 2*sel[3]->S*(x-4)*(x-6)-3*sel[4]->S*(x-3)*(x-6)+sel[6]->S*(x-3)*(x-4);
}
int main(int argc,char**argv){if(argc!=4)throw runtime_error("q delta output");q=stoi(argv[1]);delta=stoi(argv[2]);if(delta<0||delta>2)throw runtime_error("delta");kappa=4-2*delta;if(q!=8&&q!=9)throw runtime_error("only q8/q9 certified");for(int r=3;r<=8;r++)make(r);ofstream out(argv[3]);int order[6]={3,4,6,5,7,8};
 function<void(int,int)> rec=[&](int at,int z){if(at==6){leaves++;if(z<14)return;long long sn=Snum(8);if(sn%6)return;long long L=sn/6-sel[8]->S;
 long long tn=0; // exact 120*T(8), using all five saturated anchors, separate formula.
 int sat[5]={3,4,5,6,7};for(int a:sat){long long num=120,den=1;for(int b:sat)if(b!=a){num*=8-b;den*=a-b;}if(num%den)throw runtime_error("interpolation denominator");tn+=(num/den)*sel[a]->T;}
 if(tn%120)throw runtime_error("integral extrapolation check");long long R0=tn/120-sel[8]->T-L*sel[8]->S;
 if(delta==0 && L!=0)return;if(delta<2 && R0!=0)return;
 for(int s=0;s<5;s++){long long x=s*(8-s);if(sel[8]->m[s]==0 && ((delta==1 && x==L)||(delta==2 && x*x-L*x+R0==0)))return;}
 out<<q<<' '<<L<<' '<<R0;for(int r=3;r<=8;r++)for(int m:sel[r]->m)out<<' '<<m;out<<'\n';kept++;return;}
 int r=order[at];vector<int> candidates;if(r==5 ||r==7){long long num=Snum(r);if(num%6)return;auto it=sums[r].find(num/6);if(it==sums[r].end())return;candidates=it->second;}else{for(int i=(int)opt[r].size()-1;i>=0;i--)candidates.push_back(i);}
 for(int ix:candidates){auto&o=opt[r][ix];if(!take(o))continue;sel[r]=&o;rec(at+1,z+o.z);untake(o);}
 };rec(0,0);cout<<"q="<<q<<" delta="<<delta<<" kappa="<<kappa<<" alternate_gates="<<kept<<" line_survivors="<<leaves<<'\n';}
