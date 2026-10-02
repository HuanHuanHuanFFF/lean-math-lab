// State2000 masks are conditional in residual_diagnostics; final_exact_cases binds its own verified licence.
// Full exact-q lists reconstructed from raw649 and old M7.
// Python lists nondecreasing indices using suffix bounds. This receiver branches
// over multiplicities of the largest remaining type using prefix bounds.
#define main old_ledger_main
#include "ledger_receiver.cpp"
#undef main
using Tuple=array<int,8>;
int main(int ac,char**av){try{
 need(ac==9,"raw catalog minq license types expected_multisets output_receipt state");auto raw=readtypes(av[1]);need(raw.size()==649,"raw649");map<Key,int>cat;ifstream cf(av[2]);int q;
 while(cf>>q){Key a;a[0]=q;for(int j=1;j<7;j++)need(bool(cf>>a[j]),"catalogue truncated");int m;need(bool(cf>>m),"mask");need(!cat.count(a),"duplicate catalogue");cat[a]=m;}
 int id=stoi(av[8]);need(id==2000||id==2029,"state scope");int minq=stoi(av[3]),lic=stoi(av[4]),h=id==2000?147:152;need((id==2000&&(lic==1||lic==31))||(id==2029&&lic==1),"scope:2000 conditional diagnostic only;2029 verified S5");Fee C=id==2000?Fee{0,0,4,5,4,10}:Fee{2,0,2,1,6,11};Box box(C);auto old=box.layers(raw);vector<Type>ty;
 for(auto c:box.cs){if(c[0]%2||c[2]%2||c[4]%2)continue;int q0=INF;for(auto&t:raw)if(le(t.c,c))q0=min(q0,t.e);if(q0==INF)continue;Fee rem;for(int i=0;i<6;i++)rem[i]=C[i]-c[i];int up=h-old[7][box.idx(rem)];for(int q=max(minq,q0);q<=up;q++){Key a;a[0]=q;copy(c.begin(),c.end(),a.begin()+1);auto it=cat.find(a);if(it!=cat.end()&&!(it->second&~lic))continue;ty.push_back({q,c});}}
 sort(ty.begin(),ty.end(),[](const Type&a,const Type&b){return tie(a.e,a.c)<tie(b.e,b.c);});auto expectedtypes=readtypes(av[5]);need(expectedtypes.size()==ty.size(),"type cardinality");for(int i=0;i<(int)ty.size();i++)need(ty[i].e==expectedtypes[i].e&&ty[i].c==expectedtypes[i].c,"exact type mismatch");
 int nt=ty.size(),bn=box.n;size_t slab=size_t(9)*bn;vector<int>pre(size_t(nt+1)*slab,INF);auto at=[&](int j,int k,int b)->int&{return pre[size_t(j)*slab+size_t(k)*bn+b];};for(int j=0;j<=nt;j++)for(int b=0;b<bn;b++)at(j,0,b)=0;
 for(int j=1;j<=nt;j++){auto t=ty[j-1];int off=box.idx(t.c);for(int k=1;k<=8;k++)for(int b=0;b<bn;b++){int val=at(j-1,k,b);if(le(t.c,box.cs[b]))val=min(val,t.e+at(j,k-1,b-off));at(j,k,b)=val;}}
 vector<Tuple>found;vector<int>chosen;long long nodes=0;function<void(int,int,Fee,int)> dfs=[&](int j,int k,Fee B,int budget){nodes++;if(!k){Tuple t{};need(chosen.size()==8,"tuple length");copy(chosen.begin(),chosen.end(),t.begin());sort(t.begin(),t.end());found.push_back(t);return;}if(!j||at(j,k,box.idx(B))>budget)return;auto t=ty[j-1];int maxm=min(k,budget/t.e);for(int d=0;d<6;d++)if(t.c[d])maxm=min(maxm,B[d]/t.c[d]);for(int m=0;m<=maxm;m++){Fee R=B;for(int d=0;d<6;d++)R[d]-=m*t.c[d];if(at(j-1,k-m,box.idx(R))>budget-m*t.e)continue;size_t saved=chosen.size();for(int n=0;n<m;n++)chosen.push_back(j-1);dfs(j-1,k-m,R,budget-m*t.e);chosen.resize(saved);}};
 dfs(nt,8,C,h);sort(found.begin(),found.end());need(adjacent_find(found.begin(),found.end())==found.end(),"duplicate multiset");ifstream mf(av[6]);need(bool(mf),"multiset open");vector<Tuple>expected;Tuple t;while(mf>>t[0]){for(int j=1;j<8;j++)need(bool(mf>>t[j]),"truncated tuple");expected.push_back(t);}sort(expected.begin(),expected.end());need(expected==found,"incomplete multiset enumeration");
 int sat=0;map<int,int>degrees;for(auto t:found){Fee used{};int deg=0;for(int i:t){need(i>=0&&i<nt,"index");deg+=ty[i].e;for(int d=0;d<6;d++)used[d]+=ty[i].c[d];}need(deg<=h&&le(used,C),"infeasible tuple");degrees[deg]++;sat+=(used==C);}
 ostringstream out;out<<"{\"verified\":true,\"state\":"<<id<<",\"min_q\":"<<minq<<",\"license_mask\":"<<lic<<",\"types\":"<<nt<<",\"complete_multisets\":"<<found.size()<<",\"saturated\":"<<sat<<",\"min_degree_lower_bound\":"<<at(nt,8,bn-1)<<",\"nodes\":"<<nodes<<",\"oldM7_recomputed\":true,\"method\":\"multiplicity-prefix enumeration\"}\n";ofstream of(av[7]);of<<out.str();cout<<out.str();return 0;
 }catch(exception&e){cerr<<"REJECT "<<e.what()<<'\n';return 1;}}
