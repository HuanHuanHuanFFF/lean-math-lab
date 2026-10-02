// Separate complete enumeration of old raw preimages, costs first then degrees.
#define main old_ledger_main
#include "ledger_receiver.cpp"
#undef main
int main(int ac,char**av){try{
 need(ac==4,"raw649 expected_tsv state");auto raw=readtypes(av[1]);need(raw.size()==649,"raw649");int id=stoi(av[3]);need(id==1964||id==1977,"state scope");Fee C=id==1964?Fee{0,2,2,4,4,11}:Fee{0,1,0,8,0,15},proxy=id==1964?Fee{0,0,0,0,2,2}:Fee{0,0,0,1,0,2};int h=id==1964?143:145,q0=id==1964?11:18;Box box(C);auto old=box.layers(raw);vector<array<int,8>>actual,expected;int fees=0;
 for(auto c:box.cs){if(!le(proxy,c)||c[0]%2||c[2]%2||c[4]%2)continue;fees++;Fee rem;for(int i=0;i<6;i++)rem[i]=C[i]-c[i];int m=old[7][box.idx(rem)];for(int q=q0;q<=h-m;q++){array<int,8>a;a[0]=q;copy(c.begin(),c.end(),a.begin()+1);a[7]=m;actual.push_back(a);}}
 ifstream in(av[2]);array<int,8>a;while(in>>a[0]){for(int i=1;i<8;i++)need(bool(in>>a[i]),"truncated preimage");expected.push_back(a);}sort(actual.begin(),actual.end());sort(expected.begin(),expected.end());need(actual==expected,"complete raw preimages differ");need(actual.size()==(id==1964?23:5),"target preimage count");cout<<"{\"verified\":true,\"state\":"<<id<<",\"oldM7_only\":true,\"fees_examined\":"<<fees<<",\"complete_preimages\":"<<actual.size()<<"}\n";return 0;
 }catch(exception&e){cerr<<"REJECT "<<e.what()<<'\n';return 1;}}
