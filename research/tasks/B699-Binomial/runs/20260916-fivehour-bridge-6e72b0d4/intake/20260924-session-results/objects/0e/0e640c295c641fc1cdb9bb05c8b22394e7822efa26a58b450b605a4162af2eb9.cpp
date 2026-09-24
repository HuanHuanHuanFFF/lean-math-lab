// Complete double-deficiency gates, rational numerator denominator 120.
#include <bits/stdc++.h>
using namespace std;
struct Opt {vector<int> m;array<int,9> load{};int sum=0,t2=0,z=0;};
int q,da,db;const int DEN=120;vector<Opt> opts[6];map<int,vector<int>> bysum[6];array<Opt*,6>chosen;array<int,6>S;array<int,3>anchors;vector<int>ord;ofstream out;long long nodes=0,leaves=0,kept=0;
void comp(int rr,int s,int left,vector<int>&m){int r=rr+3;if(s==(r/2)){m[s]=left;Opt o;o.m=m;for(int j=0;j<=r/2;j++){int x=j*(r-j),k=m[j];o.sum+=k*x;o.t2+=k*x*x;o.z+=(k>0);o.load[j]+=k;o.load[r-j]+=k;}bysum[rr][o.sum].push_back(opts[rr].size());opts[rr].push_back(o);return;}for(int k=0;k<=left;k++){m[s]=k;comp(rr,s+1,left-k,m);}}
void walk(int dep,array<int,9>load,int z){nodes++;if(dep==6){leaves++;if(z<14)return;int c[6]={-1,5,-10,10,-5,1};long long total=0;array<int,6> lam{};
 for(int i=0;i<6;i++){auto&o=*chosen[i];int E2=(o.sum*o.sum-o.t2)/2;if(i==da||i==db){lam[i]=S[i]-DEN*o.sum;for(int s=0;s<(int)o.m.size();s++)if(!o.m[s]&&lam[i]==DEN*s*(i+3-s))return;}total+=(long long)c[i]*(DEN*E2+(long long)lam[i]*o.sum);}
 if(total)return;kept++;out<<q<<' '<<da+3<<' '<<db+3<<' '<<DEN;for(int x:lam)out<<' '<<x;for(auto*p:chosen)for(int m:p->m)out<<' '<<m;out<<'\n';return;}
 int rr=ord[dep];vector<int> idx;
 if(dep>=3 && rr!=da&&rr!=db){if(S[rr]%DEN)return;auto it=bysum[rr].find(S[rr]/DEN);if(it==bysum[rr].end())return;idx=it->second;}
 else{idx.resize(opts[rr].size());iota(idx.begin(),idx.end(),0);}
 for(int oi:idx){auto&o=opts[rr][oi];auto l=load;bool ok=true;for(int k=0;k<9;k++){l[k]+=o.load[k];if(l[k]>2*q){ok=false;break;}}if(!ok)continue;chosen[rr]=&o;
  if(dep==2){for(int x=0;x<6;x++){long long val=0;for(int i=0;i<3;i++){int a=anchors[i],b=anchors[(i+1)%3],c=anchors[(i+2)%3];int den=(a-b)*(a-c);assert(DEN%den==0);val+=(long long)chosen[a]->sum*(x-b)*(x-c)*(DEN/den);}S[x]=val;}}
  walk(dep+1,l,z+o.z);
 }
}
int main(int argc,char**argv){if(argc!=5)throw runtime_error("q da db out");q=stoi(argv[1]);da=stoi(argv[2])-3;db=stoi(argv[3])-3;if(da==db||da<0||db>5||da>db||q<5||q>7)throw runtime_error("invalid");vector<int>sat;
 for(int i=0;i<6;i++){vector<int>m((i+3)/2+1);comp(i,0,q-(i==da||i==db),m);if(i!=da&&i!=db)sat.push_back(i);}
#ifdef ALT_ANCHOR
 ord={sat[0],sat[1],sat[3]};
#else
 ord={sat[0],sat[1],sat[2]};
#endif
 copy(ord.begin(),ord.end(),anchors.begin());
 for(int i:sat)if(find(ord.begin(),ord.end(),i)==ord.end())ord.push_back(i);
 for(int i:{da,db})ord.push_back(i);
out.open(argv[4]);walk(0,{},0);cout<<"q "<<q<<" d "<<da+3<<' '<<db+3<<" nodes "<<nodes<<" leaves "<<leaves<<" gates "<<kept<<'\n';}
