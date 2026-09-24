#include <bits/stdc++.h>
using namespace std;
struct Sig{int e; array<int,6> c; string name;};
struct Node{int deg; int prev; int sig;};
struct VState{int h,E; array<int,6> v,d,p,cap;};
const int INF=1e9;
const array<array<int,4>,6> OFF4 = {{{77,74,0,0},{67,57,0,0},{51,54,46,0},{40,43,48,0},{31,34,39,45},{25,28,33,39}}};
const array<int,6> OFFN={2,2,3,3,4,4}; // Wait rows 6,8 have non-diag counts? source_model OFF lists 3 at r6 and 4 at r8, yes.
const array<int,6> DIAG={0,56,0,41,0,52};

void comps_rec(int n,int k,int pos,array<int,6>&a, vector<array<int,6>>&out){if(pos==k-1){a[pos]=n;out.push_back(a);return;}for(int x=0;x<=n;x++){a[pos]=x;comps_rec(n-x,k,pos+1,a,out);}}
vector<array<int,6>> comps(int n){vector<array<int,6>>o;array<int,6>a{};comps_rec(n,6,0,a,o);return o;}
void under_rec(int rem,int pos,array<int,6>&a,vector<array<int,6>>&out){if(pos==6){out.push_back(a);return;}for(int x=0;x<=rem;x++){a[pos]=x;under_rec(rem-x,pos+1,a,out);}}
int lower(int i,int v){int z=0;for(int j=0;j<OFFN[i];j++)z+=max(OFF4[i][j]-v,0);z+=(max(DIAG[i]-v,0)+1)/2;return z;}
vector<VState> all_states(){vector<VState> out;for(int h=0;h<=152;h++){array<int,6>a{};for(int i=0;i<6;i++){while(lower(i,a[i])>h)a[i]++;}int budget=305-2*h-accumulate(a.begin(),a.end(),0);if(budget<0)continue;vector<array<int,6>> us;array<int,6>u{};under_rec(budget,0,u,us);for(auto uu:us){VState s{};s.h=h;int sv=0;for(int i=0;i<6;i++){s.v[i]=a[i]+uu[i];sv+=s.v[i];s.d[i]=h-lower(i,s.v[i]);s.p[i]=DIAG[i]?max(DIAG[i]-s.v[i],0)%2:0;s.cap[i]=2*s.d[i]+s.p[i];}s.E=305-2*h-sv;out.push_back(s);}}return out;}

vector<Sig> make_sigs(){vector<Sig> raw;auto add=[&](string name,int e,array<int,6>d,array<int,3>k={0,0,0}){array<int,6>kk{0,k[0],0,k[1],0,k[2]},c{};for(int i=0;i<6;i++)c[i]=2*d[i]+kk[i];raw.push_back({e,c,name});};
 for(auto d:comps(4))add("def4",4,d);for(auto d:comps(3)){if(d[0]+d[1]+d[2]+d[3])add("triple4",4,d);else for(auto k:vector<array<int,3>>{{1,0,0},{0,1,0},{0,0,1}})add("triple4k",4,d,k);add("triple6",6,d);}for(auto d:comps(2)){for(int a=0;a<2;a++)for(int b=0;b<2;b++){if(d[0]+d[1]+d[4]+a>=1&&d[0]+d[1]+d[2]+d[3]+a+b>=1)add("double5",5,d,{a,b,0});if(d[0]+d[1]+d[2]+d[3]+a+b>=1)add("double67",6,d,{a,b,0});}add("double8",8,d);}for(int r=0;r<6;r++){array<int,6>d{};d[r]=1;if(r<3)add("near16e",16,d);else for(auto k:vector<array<int,3>>{{1,0,0},{0,1,0},{0,0,1}})add("near16k",16,d,k);add("near25",25,d);}for(int a=0;a<3;a++)for(int b=a;b<3;b++){array<int,3>k{};k[a]++;k[b]++;add("sat25k2",25,{},k);}for(int a=0;a<3;a++){array<int,3>k{};k[a]=1;add("sat32k1",32,{},k);}add("free43",43,{});
 add("S3",4,{1,0,0,0,0,0},{1,1,0});add("S4",4,{0,1,0,0,0,0},{1,1,0});add("S5",4,{0,0,1,0,0,0},{0,1,0});add("L",13,{1,0,0,0,0,0});vector<array<int,6>>pd={{0,1,1,0,0,0},{1,0,1,0,0,0},{1,1,0,0,0,0},{1,0,1,0,0,0},{1,1,0,0,0,0},{2,0,0,0,0,0}};int ii=0;for(auto d:pd){add("P"+to_string(ii)+"k4",4,d,{1,0,0});add("P"+to_string(ii)+"k6",4,d,{0,1,0});ii++;}add("B59",4,{1,0,0,1,0,0},{1,0,1});add("B61",4,{1,0,1,0,0,0},{1,0,1});add("B64",4,{1,1,0,0,0,0},{1,0,1});add("B70",4,{1,0,0,1,0,0},{1,1,1});add("B81",4,{2,0,0,0,0,0},{1,1,1});
 sort(raw.begin(),raw.end(),[](auto&a,auto&b){if(a.e!=b.e)return a.e<b.e;if(a.c!=b.c)return a.c<b.c;return a.name<b.name;});vector<Sig>uniq;for(auto&s:raw){if(!uniq.empty()&&s.e==uniq.back().e&&s.c==uniq.back().c)continue;uniq.push_back(s);}vector<Sig>sig;for(auto&a:uniq){bool dom=false;for(auto&b:sig)if(b.e<=a.e){bool ok=1;for(int i=0;i<6;i++)if(b.c[i]>a.c[i])ok=0;if(ok){dom=1;break;}}if(!dom)sig.push_back(a);}cerr<<"raw "<<raw.size()<<" uniq "<<uniq.size()<<" kept "<<sig.size()<<" using_raw_reverse\n";reverse(uniq.begin(),uniq.end());return uniq;}


int main(int argc,char**argv){if(argc!=2){cerr<<"usage: output.tsv\n";return 2;}
 auto states=all_states(); auto sig=make_sigs();
 const array<int,6>M={12,18,22,24,28,30}; array<int,6>R{};R[0]=1;for(int i=1;i<6;i++)R[i]=R[i-1]*(M[i-1]+1);
 auto enc=[&](const array<int,6>&c){int k=0;for(int i=0;i<6;i++)k+=c[i]*R[i];return k;};
 vector<unordered_map<int,int>> memo(9); long long calls=0;
 function<int(int,array<int,6>)> solve=[&](int n,array<int,6> cap)->int{
   if(n==0)return 0; int key=enc(cap); auto it=memo[n].find(key); if(it!=memo[n].end())return it->second;
   calls++; int best=INF;
   for(auto &s:sig){bool ok=1;array<int,6> nxt=cap;for(int i=0;i<6;i++){if(s.c[i]>nxt[i]){ok=0;break;}nxt[i]-=s.c[i];}if(!ok)continue;
     int z=solve(n-1,nxt);if(z<INF)best=min(best,s.e+z);
   }
   memo[n][key]=best;return best;
 };
 vector<int> surv;map<int,int>Ecnt;ofstream out(argv[1]);if(!out)throw runtime_error("output");
 out<<"idx\th\tE\toptions\n";
 for(int si=0;si<(int)states.size();si++){auto&s=states[si];vector<pair<int,int>>opts;for(int A=0;A<=min(s.E,8);A++){int z=solve(8-A,s.cap);if(z>=INF)continue;int d=3*A+z;if(d<=s.h)opts.push_back({A,d});}if(!opts.empty()){surv.push_back(si);Ecnt[s.E]++;out<<si<<'\t'<<s.h<<'\t'<<s.E<<'\t';for(auto [a,d]:opts)out<<a<<':'<<d<<',';out<<'\n';}}
 cout<<"DIRECT_SURVIVORS "<<surv.size()<<" E";for(auto [e,c]:Ecnt)cout<<' '<<e<<':'<<c;cout<<" HMIN "<<(surv.empty()?-1:states[surv.front()].h)<<" HMAX "<<(surv.empty()?-1:states[surv.back()].h)<<" CALLS "<<calls;for(int n=0;n<=8;n++)cout<<" M"<<n<<'='<<memo[n].size();cout<<"\n";
 for(int x:surv)cout<<x<<' ';cout<<"\n";
}
