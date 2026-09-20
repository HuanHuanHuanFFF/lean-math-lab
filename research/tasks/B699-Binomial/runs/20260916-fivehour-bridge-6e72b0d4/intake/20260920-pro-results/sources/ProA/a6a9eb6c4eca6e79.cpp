#define main archived_sat_main
#include "sat_gate.cpp"
#undef main
#include <numeric>
struct LowChoice{int id,lambda;};
struct NFRec{std::array<int,6> idx;int lambda,gen;};
int main(int argc,char**argv){try{
 if(argc!=5)throw std::runtime_error("usage: nf_gate q h e2|m2 output");
 int q=std::stoi(argv[1]),h=std::stoi(argv[2]);std::string mode=argv[3];
 if(q<3||q>40||h<3||h>8||(mode!="e2"&&mode!="m2"))throw std::runtime_error("out of range");
 auto start=std::chrono::steady_clock::now();std::vector<Table>T;for(int r=3;r<=8;r++)T.push_back(make_table(r,q));Table low=make_table(h,q-1);
 std::array<std::array<int,3>,6> piv_e={{{4,5,6},{3,5,6},{3,4,6},{3,4,5},{3,4,5},{3,4,5}}};
 std::array<std::array<int,3>,6> piv_m={{{4,5,7},{3,6,7},{3,4,8},{3,5,8},{3,4,6},{3,5,7}}};
 auto piv=(mode=="e2"?piv_e:piv_m)[h-3];std::array<I,6>den{};std::array<std::array<I,3>,6>weights{};
 for(int r=3;r<=8;r++){
  std::array<I,3>ns{},ds{};I D=1;
  for(int j=0;j<3;j++){I n=1,d=1;for(int k=0;k<3;k++)if(k!=j){n*=r-piv[k];d*=piv[j]-piv[k];}if(d<0){n=-n;d=-d;}ns[j]=n;ds[j]=d;D=std::lcm(D,d);}
  den[r-3]=D;for(int j=0;j<3;j++)weights[r-3][j]=ns[j]*(D/ds[j]);
 }
 constexpr int fd[6]={-1,5,-10,10,-5,1};std::vector<int>good;for(int r=0;r<6;r++)if(r!=h-3)good.push_back(r);
 std::map<int,std::map<I,std::vector<LowChoice>>> caches;std::map<std::string,I>st;std::map<int,I>hist;std::vector<NFRec>out;
 std::array<int,6>S{},id{};
 for(auto &aa:T[piv[0]-3].byS)for(auto &bb:T[piv[1]-3].byS)for(auto &cc:T[piv[2]-3].byS){
  int vals[3]={aa.first,bb.first,cc.first};bool ok=true;
  for(int r=0;r<6;r++){I num=0;for(int k=0;k<3;k++)num+=weights[r][k]*vals[k];if(num%den[r]){ok=false;break;}S[r]=num/den[r];if(r!=h-3&&!T[r].byS.count(S[r])){ok=false;break;}}
  if(!ok)continue;int sh=S[h-3];
  if(!caches.count(sh)){
   auto &cache=caches[sh];
   for(int k=0;k<(int)low.all.size();k++){
    const auto&a=low.all[k];int lam=sh-a.S;bool newsource=false;
    for(int j=0;j<(int)low.vals.size();j++)if(lam==low.vals[j]&&!a.m[j])newsource=true;
    if(newsource)continue;I moment=(mode=="e2"?static_cast<I>(a.E)+static_cast<I>(lam)*a.S:static_cast<I>(a.M)+static_cast<I>(lam)*lam);
    cache[moment].push_back({k,lam});
   }
  }
  const auto &cache=caches.at(sh);
  std::function<void(int,I,int,int,std::array<int,9>)> visit=[&](int pos,I sum,int z,int gen,std::array<int,9> lines){
   if(pos==5){
    if(z+(int)low.vals.size()<14)return;I num=-sum;if(num%fd[h-3])return;auto it=cache.find(num/fd[h-3]);if(it==cache.end())return;
    for(auto choice:it->second){const auto&a=low.all[choice.id];if(z+a.z<14)continue;st["complete_gates"]++;bool forced=false;
     for(int t=0;t<5;t++)if(lines[t]+a.line[t]>2*q){forced=true;break;}if(forced){st["old_line_forced"]++;continue;}st["after_old_lines"]++;
     for(int t=5;t<9;t++)if(lines[t]+a.line[t]>2*q){forced=true;break;}if(forced){st["new_line_forced"]++;continue;}st["after_all_lines"]++;
     int gg=gen+a.gen;hist[gg]++;if(gg>(q-1)*(q-1)){st["genus_forced"]++;continue;}st["jet_residual"]++;id[h-3]=choice.id;out.push_back({id,choice.lambda,gg});
    }return;
   }
   int r=good[pos];for(int j:T[r].byS.at(S[r])){const auto&a=T[r].all[j];auto next=lines;for(int t=0;t<9;t++)next[t]+=a.line[t];id[r]=j;visit(pos+1,sum+fd[r]*(mode=="e2"?a.E:a.M),z+a.z,gen+a.gen,next);}
  };visit(0,0,0,0,{});
 }
 std::ofstream os(argv[4]);if(!os)throw std::runtime_error("cannot open output");os<<"{\"mode\":\"nf\",\"q\":"<<q<<",\"h\":"<<h<<",\"implementation\":\""<<mode<<"\",\"stats\":{";bool first=true;for(auto[k,v]:st){if(!first)os<<',';first=false;os<<'\"'<<k<<"\":"<<v;}os<<"},\"genus_histogram\":{";first=true;for(auto[k,v]:hist){if(!first)os<<',';first=false;os<<'\"'<<k<<"\":"<<v;}os<<"},\"records\":[";
 for(size_t i=0;i<out.size();i++){if(i)os<<',';const auto&c=out[i];os<<"{\"q\":"<<q<<",\"h\":"<<h<<",\"lambda\":"<<c.lambda<<",\"genus_cost\":"<<c.gen<<",\"roots\":[";
  for(int r=0;r<6;r++){if(r)os<<',';const auto &tab=(r==h-3?low:T[r]);const auto&a=tab.all[c.idx[r]];os<<'[';bool f=true;for(int j=0;j<(int)tab.vals.size();j++)for(int k=0;k<a.m[j];k++){if(!f)os<<',';f=false;os<<tab.vals[j];}os<<']';}os<<"]}";
 }os<<"]}\n";os.close();std::cout<<"NF_GATE "<<q<<" "<<h<<" "<<mode;for(auto[k,v]:st)std::cout<<" "<<k<<"="<<v;std::cout<<" seconds="<<std::chrono::duration<double>(std::chrono::steady_clock::now()-start).count()<<std::endl;
 }catch(const std::exception&e){std::cerr<<e.what()<<std::endl;return 1;}return 0;}
