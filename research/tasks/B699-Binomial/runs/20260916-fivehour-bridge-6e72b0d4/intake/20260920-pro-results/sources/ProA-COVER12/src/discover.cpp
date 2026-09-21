#include <array>
#include <vector>
#include <map>
#include <fstream>
#include <iostream>
#include <algorithm>
#include <numeric>
#include <chrono>
#include <string>
using namespace std;
struct Row {array<int,5> m{}; array<int,9> L{}; int s1=0,s2=0,gen=0,z=0;};
array<vector<Row>,6> rows;
array<map<int,vector<int>>,6> groups;
array<int,6> chosen{};
array<int,6> c5={-1,5,-10,10,-5,1};
int q,def,genbound,mins[6],minz=0; long long nbase=0,ntrace=0,nsecond=0,nfinal=0; ofstream out;
void make_row(int i,int pos,int left,Row &a){
 int r=i+3,k=r/2+1;
 if(pos==k-1){a.m[pos]=left;Row b=a;b.s1=b.s2=b.gen=b.z=0;b.L.fill(0);
  for(int s=0;s<k;s++){int m=b.m[s],x=s*(r-s);b.s1+=m*x;b.s2+=m*x*x;b.gen+=m*(m-1)/2;b.z+=m>0;b.L[s]+=m;if(r-s!=s)b.L[r-s]+=m;}
  groups[i][b.s1].push_back(rows[i].size());rows[i].push_back(b);return;
 }
 for(int m=0;m<=left;m++){a.m[pos]=m;make_row(i,pos+1,left-m,a);}
}
array<int,6> T; vector<int> rest;
void finish(int h,int g,int z,array<int,9> loads,long long s2sum){
 if(h==(int)rest.size()){
  if(def<0){if(s2sum) return; nsecond++;}
  else{
   const auto &rd=rows[def][chosen[def]]; long long extra=T[def]-rd.s1;
   if(s2sum+c5[def]*extra*extra) return; nsecond++;
  }
  if(z<minz) return;nfinal++;
  // All retained candidates; no truncation.
  out<<q<<','<<def<<','<<g<<','<<z<<','<<(def<0?0:T[def]-rows[def][chosen[def]].s1);
  for(int i=0;i<6;i++)for(int s=0;s<(i+3)/2+1;s++)out<<','<<rows[i][chosen[i]].m[s];out<<'\n';return;
 }
 int i=rest[h], remmin=0;for(int j=h+1;j<(int)rest.size();j++)remmin+=mins[rest[j]];
 const vector<int>* pool;
 vector<int> all;
 if(i==def){all.resize(rows[i].size());iota(all.begin(),all.end(),0);pool=&all;}
 else{auto it=groups[i].find(T[i]);if(it==groups[i].end())return;pool=&it->second;}
 for(int id:*pool){const Row&a=rows[i][id];if(g+a.gen+remmin>genbound)continue;
  auto l=loads;bool ok=1;for(int t=0;t<9;t++){l[t]+=a.L[t];if(l[t]>2*q){ok=0;break;}}if(!ok)continue;
  chosen[i]=id;finish(h+1,g+a.gen,z+a.z,l,s2sum+c5[i]*a.s2);
 }
}
int main(int argc,char**argv){
 if(argc!=5){cerr<<"usage q defect(-1..5) output.csv min_z\n";return 2;}
 q=stoi(argv[1]);def=stoi(argv[2]);minz=stoi(argv[4]);genbound=(q-1)*(q-1);out.open(argv[3]);
 for(int i=0;i<6;i++){Row a;make_row(i,0,q-(i==def),a);mins[i]=100000;for(auto&b:rows[i])mins[i]=min(mins[i],b.gen);}
 vector<int> base;for(int i=0;i<6;i++)if(i!=def&&base.size()<3)base.push_back(i);
 rest.clear();for(int i=0;i<6;i++)if(find(base.begin(),base.end(),i)==base.end())rest.push_back(i);
 // Defect last so second moment is decided by each defect-row pattern.
 stable_sort(rest.begin(),rest.end(),[](int a,int b){if(a==def)return false;if(b==def)return true;return a<b;});
 auto start=chrono::steady_clock::now();
 int a=base[0],b=base[1],c=base[2],minrest=0;for(int i:rest)minrest+=mins[i];
 for(int ia=0;ia<(int)rows[a].size();ia++)for(int ib=0;ib<(int)rows[b].size();ib++)for(int ic=0;ic<(int)rows[c].size();ic++){
  const auto&A=rows[a][ia];const auto&B=rows[b][ib];const auto&C=rows[c][ic];int gen=A.gen+B.gen+C.gen;if(gen+minrest>genbound)continue;nbase++;
  bool ok=true;for(int i=0;i<6;i++){
   int den=(a-b)*(a-c)*(b-c);
   int num=A.s1*(i-b)*(i-c)*(b-c)-B.s1*(i-a)*(i-c)*(a-c)+C.s1*(i-a)*(i-b)*(a-b);
   if(num%den){ok=false;break;}T[i]=num/den;
   if(i!=def&&!groups[i].count(T[i])){ok=false;break;}
  }if(!ok)continue;ntrace++;
  array<int,9>l{};for(int t=0;t<9;t++){l[t]=A.L[t]+B.L[t]+C.L[t];if(l[t]>2*q){ok=false;break;}}if(!ok)continue;
  chosen[a]=ia;chosen[b]=ib;chosen[c]=ic;
  finish(0,gen,A.z+B.z+C.z,l,1LL*c5[a]*A.s2+1LL*c5[b]*B.s2+1LL*c5[c]*C.s2);
 }
 auto ms=chrono::duration_cast<chrono::milliseconds>(chrono::steady_clock::now()-start).count();
 cout<<"q="<<q<<" defect="<<def<<" base_after_genus="<<nbase<<" trace="<<ntrace<<" second_and_genus_lines="<<nsecond<<" retained="<<nfinal<<" ms="<<ms<<endl;
}
