// Exact finite root gate, C++17. No floating point, external packages or network.
// Discovery uses E2, receiver uses M2 and different finishing row.
#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <fstream>
#include <functional>
#include <iostream>
#include <map>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <vector>
using I=long long;
struct Row{std::array<int,5> m{};std::array<int,9> line{}; int S=0,E=0,M=0,z=0,gen=0;};
struct Record {std::array<int,6> idx;int gen;};
struct Table{int r;std::vector<int> vals;std::vector<Row> all;std::map<int,std::vector<int>> byS;std::map<std::pair<int,int>,std::vector<int>> bySE,bySM;};
Table make_table(int r,int q){Table T;T.r=r;for(int s=0;s<=r/2;s++)T.vals.push_back(s*(r-s));Row cur;
 std::function<void(int,int)> rec=[&](int pos,int n){
 if(pos+1==(int)T.vals.size()){
 cur.m[pos]=n;Row a=cur;
 for(int k=0;k<(int)T.vals.size();k++){int m=a.m[k],v=T.vals[k];a.S+=m*v;a.M+=m*v*v;a.z+=(m>0);a.gen+=m*(m-1)/2;}
 a.E=(a.S*a.S-a.M)/2;
 for(int t=0;t<9;t++)for(int k=0;k<(int)T.vals.size();k++)if(t*(r-t)==T.vals[k])a.line[t]=a.m[k];
 int id=T.all.size();T.all.push_back(a);T.byS[a.S].push_back(id);T.bySE[{a.S,a.E}].push_back(id);T.bySM[{a.S,a.M}].push_back(id);return;}
 for(int k=0;k<=n;k++){cur.m[pos]=k;rec(pos+1,n-k);}
 };rec(0,q);return T;}
int main(int argc,char**argv){try{
 if(argc!=4)throw std::runtime_error("usage: sat_gate q e2|m2 output.json");int q=std::stoi(argv[1]);std::string mode=argv[2];if(q<1||q>100||(mode!="e2"&&mode!="m2"))throw std::runtime_error("unsupported arguments");
 auto start=std::chrono::steady_clock::now();std::vector<Table>T;for(int r=3;r<=8;r++)T.push_back(make_table(r,q));
 std::map<std::string,I> st;std::map<int,I>hist;std::vector<Record> records;
 auto use=[&](std::array<int,6>id){st["complete_gates"]++;int z=0,gen=0;std::array<int,9>sl{};
 for(int r=0;r<6;r++){const auto&a=T[r].all[id[r]];z+=a.z;gen+=a.gen;for(int t=0;t<9;t++)sl[t]+=a.line[t];}
 if(z<14){st["small_z"]++;return;}st["z14_gates"]++;
 for(int t=0;t<5;t++)if(sl[t]>2*q){st["old_line_forced"]++;return;}st["after_old_lines"]++;
 for(int t=5;t<9;t++)if(sl[t]>2*q){st["new_line_forced"]++;return;}st["after_all_lines"]++;hist[gen]++;
 if(gen>(q-1)*(q-1)){st["genus_forced"]++;return;}st["jet_residual"]++;records.push_back({id,gen});};
 for(int a=0;a<(int)T[0].all.size();a++)for(int b=0;b<(int)T[1].all.size();b++)for(int c=0;c<(int)T[2].all.size();c++){
  const Row&A=T[0].all[a],&B=T[1].all[b],&C=T[2].all[c];int S[6]={A.S,B.S,C.S};for(int i=3;i<6;i++)S[i]=3*S[i-1]-3*S[i-2]+S[i-3];
  if(!T[3].byS.count(S[3])||!T[4].byS.count(S[4])||!T[5].byS.count(S[5]))continue;
  if(mode=="e2"){
   for(int d:T[3].byS.at(S[3]))for(int f:T[5].byS.at(S[5])){
    int num=A.E-5*B.E+10*C.E-10*T[3].all[d].E-T[5].all[f].E;if(num%(-5))continue;int E=num/(-5);auto it=T[4].bySE.find({S[4],E});if(it==T[4].bySE.end())continue;
    for(int e:it->second)use({a,b,c,d,e,f});}
  }else{
   for(int d:T[3].byS.at(S[3]))for(int e:T[4].byS.at(S[4])){
    int M=A.M-5*B.M+10*C.M-10*T[3].all[d].M+5*T[4].all[e].M;auto it=T[5].bySM.find({S[5],M});if(it==T[5].bySM.end())continue;
    for(int f:it->second)use({a,b,c,d,e,f});}
  }
 }
 std::ofstream out(argv[3]);if(!out)throw std::runtime_error("cannot open output");
 out<<"{\"mode\":\"sat\",\"q\":"<<q<<",\"h\":null,\"implementation\":\""<<mode<<"\",\"stats\":{";bool first=true;for(auto[k,v]:st){if(!first)out<<',';first=false;out<<'\"'<<k<<"\":"<<v;}out<<"},\"genus_histogram\":{";first=true;for(auto[k,v]:hist){if(!first)out<<',';first=false;out<<'\"'<<k<<"\":"<<v;}out<<"},\"records\":[";
 for(size_t i=0;i<records.size();i++){if(i)out<<',';auto rec=records[i];out<<"{\"q\":"<<q<<",\"h\":0,\"lambda\":null,\"genus_cost\":"<<rec.gen<<",\"roots\":[";
 for(int r=0;r<6;r++){if(r)out<<',';out<<'[';bool flag=true;auto row=T[r].all[rec.idx[r]];for(int j=0;j<(int)T[r].vals.size();j++)for(int k=0;k<row.m[j];k++){if(!flag)out<<',';flag=false;out<<T[r].vals[j];}out<<']';}out<<"]}";}
 out<<"]}\n";out.close();std::cout<<"SAT_GATE "<<q<<" "<<mode;for(auto[k,v]:st)std::cout<<" "<<k<<"="<<v;std::cout<<" seconds="<<std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count()<<std::endl;
 }catch(const std::exception&e){std::cerr<<e.what()<<std::endl;return 1;}return 0;}
