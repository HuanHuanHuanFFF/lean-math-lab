// Costs-first independent full old-M7 preimage reconstruction. No catalogue prices.
#define main old_ledger_main
#include "ledger_receiver.cpp"
#undef main
int main(int ac,char**av){try{
 need(ac==5,"raw649 expected_tsv state proxy_tag");auto raw=readtypes(av[1]);need(raw.size()==649,"raw649");int id=stoi(av[3]);string tag=av[4];
 need(id==1972||id==1974||id==1975,"state scope");Fee C=id==1972?Fee{0,1,0,1,0,24}:(id==1974?Fee{0,1,0,1,8,15}:Fee{0,1,0,1,16,6}),proxy{};int h=145,q0=0,expected_count=0;
 if(id==1972&&tag=="A"){proxy=Fee{0,1,0,0,0,4};q0=5;expected_count=14;}
 else if(id==1972&&tag=="B"){proxy=Fee{0,0,0,0,0,4};q0=14;expected_count=11;}
 else if(id==1975&&tag=="C"){proxy=Fee{0,0,0,0,4,0};q0=11;expected_count=2;}
 else if(id==1975&&tag=="D"){proxy=Fee{0,0,0,0,2,1};q0=18;expected_count=2;}
 else if(id==1974&&tag=="E"){proxy=Fee{0,0,0,0,2,2};q0=12;expected_count=11;}
 else throw runtime_error("proxy-state binding");
 Box box(C);auto old=box.layers(raw);vector<array<int,8>>actual,expected;int fees=0;
 for(auto c:box.cs){if(!le(proxy,c)||c[0]%2||c[2]%2||c[4]%2)continue;fees++;Fee rem;for(int i=0;i<6;i++)rem[i]=C[i]-c[i];int m=old[7][box.idx(rem)];for(int q=q0;q<=h-m;q++){array<int,8>a;a[0]=q;copy(c.begin(),c.end(),a.begin()+1);a[7]=m;actual.push_back(a);}}
 ifstream in(av[2]);need(bool(in),"preimage file missing");array<int,8>a;while(in>>a[0]){for(int i=1;i<8;i++)need(bool(in>>a[i]),"truncated preimage");expected.push_back(a);}sort(actual.begin(),actual.end());sort(expected.begin(),expected.end());need(actual==expected,"complete raw preimages differ");need(actual.size()==expected_count,"target preimage count");cout<<"{\"verified\":true,\"state\":"<<id<<",\"proxy_tag\":\""<<tag<<"\",\"oldM7_only\":true,\"fees_examined\":"<<fees<<",\"complete_preimages\":"<<actual.size()<<"}\n";return 0;
 }catch(exception&e){cerr<<"REJECT "<<e.what()<<'\n';return 1;}}
