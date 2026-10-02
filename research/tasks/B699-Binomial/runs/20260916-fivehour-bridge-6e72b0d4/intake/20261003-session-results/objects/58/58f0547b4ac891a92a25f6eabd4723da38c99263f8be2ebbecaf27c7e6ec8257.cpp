// Raw, never-repriced M7. Separately reconstruct all 119 quintic proxy preimages.
#define main ledger_main
#include "ledger_receiver.cpp"
#undef main
int main(int ac,char**av){try{
 need(ac==3,"raw649 expected_preimages");auto raw=readtypes(av[1]);need(raw.size()==649,"649 rows");Fee C{0,0,4,5,4,10},base{0,0,0,1,2,2};int h=147;Box box(C);auto old=box.layers(raw);vector<array<int,8>> found;int checked=0;
 for(auto c:box.cs){if(c[0]%2||c[2]%2||c[4]%2||!le(base,c))continue;checked++;Fee rem;for(int i=0;i<6;i++)rem[i]=C[i]-c[i];int m=old[7][box.idx(rem)];for(int q=5;q<=h-m;q++){array<int,8>t;t[0]=q;copy(c.begin(),c.end(),t.begin()+1);t[7]=m;found.push_back(t);}}
 sort(found.begin(),found.end());vector<array<int,8>> expected;ifstream f(av[2]);array<int,8>a;while(f>>a[0]){for(int i=1;i<8;i++)need(bool(f>>a[i]),"truncated preimage");expected.push_back(a);}sort(expected.begin(),expected.end());need(found==expected,"not the complete raw-M7 preimage set");
 cout<<"{\"verified\":true,\"state\":2000,\"proxy_degree\":5,\"preimages\":"<<found.size()<<",\"allowed_fee_vectors_checked\":"<<checked<<",\"uses_new_prices\":false,\"uses_state_licence\":false}\n";return 0;
 }catch(exception&e){cerr<<"REJECT "<<e.what()<<'\n';return 1;}}
