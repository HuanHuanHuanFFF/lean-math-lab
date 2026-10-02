// Second integer implementation: exact-spent-cost convolution then prefix minima.
#define main inherited_ledger_main
#include "ledger_receiver.cpp"
#undef main
int main(int ac,char**av){try{
 need(ac==3,"raw649 expected_tsv");auto raw=readtypes(av[1]);need(raw.size()==649,"649 rows");
 Fee C={2,0,0,2,2,18};int h=142;Box box(C);auto dp=box.layers(raw);ifstream expected(av[2]);int records=0;
 cout<<"{\"verified\":true,\"state\":1937,\"classes\":[";
 for(int k=0;k<2;k++){
  int q0=k?25:19,tail=k?2:3;Fee proxy={0,0,0,0,0,tail};int count=0,fees=0,bestGrowth=-10000;
  for(const auto&c:box.cs){if(!le(proxy,c)||c[0]%2||c[2]%2||c[4]%2)continue;fees++;
   Fee rem;for(int r=0;r<6;r++)rem[r]=C[r]-c[r];int m=dp[7][box.idx(rem)],up=h-m;
   if(c!=proxy)bestGrowth=max(bestGrowth,up);
   for(int q=q0;q<=up;q++){
    string tag;int got;need(bool(expected>>tag)&&tag==(k?"B":"A"),"tag");need(bool(expected>>got)&&got==q,"q");
    for(int r=0;r<6;r++)need(bool(expected>>got)&&got==c[r],"fee");need(bool(expected>>got)&&got==m,"M7");count++;records++;
   }
  }
  if(k)cout<<',';cout<<"{\"label\":\""<<(k?"B":"A")<<"\",\"fees_examined\":"<<fees<<",\"preimages\":"<<count<<",\"maximum_q_with_fee_growth\":"<<bestGrowth<<"}";
 }
 string extra;need(!(expected>>extra),"extra expected records");cout<<"],\"total_preimages\":"<<records<<"}\n";return 0;
}catch(exception&e){cerr<<"REJECT "<<e.what()<<'\n';return 1;}}
