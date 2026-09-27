#include <bits/stdc++.h>
using namespace std;
struct Row{vector<int>m;array<int,9>L{};long long S=0,T=0;int z=0;};
int q;array<int,9>D{},K{};vector<Row>op[9];map<long long,vector<int>>byS[9];const Row*row[9];long long S[9]{};ofstream out;long long countg=0;int scale=120;
void gen(int r){vector<int>m(r/2+1);function<void(int,int)> rec=[&](int s,int rem){if(s==(int)m.size()){if(rem)return;Row a;a.m=m;long long sq=0;for(int k=0;k<(int)m.size();k++){int v=k*(r-k);a.L[k]+=m[k];a.L[r-k]+=m[k];a.S+=m[k]*v;sq+=1LL*m[k]*v*v;a.z+=(m[k]>0);}a.T=(a.S*a.S-sq)/2;if(r%2==0){if(m.back()<K[r])return;a.L[r/2]-=K[r];}for(int x:a.L)if(x>2*q)return;int i=op[r].size();op[r].push_back(a);byS[r][scale*a.S].push_back(i);return;}for(int v=0;v<=rem;v++){m[s]=v;rec(s+1,rem-v);}};rec(0,q-D[r]);}
bool add(array<int,9>&L,const Row&a){for(int t=0;t<9;t++){L[t]+=a.L[t];if(L[t]>2*q)return false;}return true;}
bool genusok(){for(int d=1;d<=q;d++){if(q%d)continue;int G=0;bool good=true;for(int r=3;r<=8;r++){if(K[r]%d)good=false;for(int m:row[r]->m){if(m%d)good=false;int a=m/d;G+=a*(a-1)/2;}if(r%2==0){int a=max(0,row[r]->m.back()/d-K[r]/d);G+=a*(a-1)/2;}}if(good&&G<=(q/d-1)*(q/d-1))return true;}return false;}
void emit(){long long val=0;int wt[6]={-1,5,-10,10,-5,1};int z=0;for(int r=3;r<=8;r++){z+=row[r]->z;long long L=S[r]-scale*row[r]->S;if(D[r]==0&&L!=0)throw runtime_error("bad saturated row");if(D[r])for(int s=0;s<(int)row[r]->m.size();s++)if(!row[r]->m[s]&&L==scale*s*(r-s))return;val+=wt[r-3]*(scale*row[r]->T+L*row[r]->S);}if(val||z<14||!genusok())return;
out<<q;for(int r=3;r<=8;r++)out<<' '<<D[r];for(int r=3;r<=8;r++)out<<' '<<K[r];for(int r=3;r<=8;r++)out<<' '<<S[r]-scale*row[r]->S;for(int r=3;r<=8;r++)for(int m:row[r]->m)out<<' '<<m;out<<'\n';countg++;}
int main(int argc,char**argv){if(argc!=15)throw runtime_error("q deltas6 kappas6 output");q=stoi(argv[1]);for(int r=3;r<=8;r++){D[r]=stoi(argv[r-1]);K[r]=stoi(argv[r+5]);if(D[r]<0||D[r]>1||K[r]<0||(r%2&&K[r]))throw runtime_error("profile");gen(r);}
out.open(argv[14]);vector<int>sat;for(int r=3;r<=8;r++)if(!D[r])sat.push_back(r);sort(sat.begin(),sat.end(),[](int a,int b){return op[a].size()<op[b].size();});if(sat.size()<3)throw runtime_error("three saturated anchors needed");array<int,3>A{sat[0],sat[1],sat[2]};
#ifdef ALT
if(sat.size()>3)A[2]=sat[3];
#endif
vector<int>rest;for(int r=3;r<=8;r++)if(find(A.begin(),A.end(),r)==A.end())rest.push_back(r);stable_sort(rest.begin(),rest.end(),[](int a,int b){if(D[a]!=D[b])return D[a]<D[b];return op[a].size()<op[b].size();});
for(auto&a:op[A[0]])for(auto&b:op[A[1]]){array<int,9>l{};if(!add(l,a)||!add(l,b))continue;for(auto&c:op[A[2]]){auto L=l;if(!add(L,c))continue;row[A[0]]=&a;row[A[1]]=&b;row[A[2]]=&c;for(int r=3;r<=8;r++){long long v=0;for(int i=0;i<3;i++){long long x=scale*row[A[i]]->S,den=1;for(int j=0;j<3;j++)if(i!=j){x*=r-A[j];den*=A[i]-A[j];}if(x%den)throw runtime_error("denominator bound");v+=x/den;}S[r]=v;}
function<void(int,array<int,9>)>dfs=[&](int j,array<int,9>load){if(j==(int)rest.size()){emit();return;}int r=rest[j];if(D[r]==0){auto it=byS[r].find(S[r]);if(it==byS[r].end())return;for(int ix:it->second){auto LL=load;if(!add(LL,op[r][ix]))continue;row[r]=&op[r][ix];dfs(j+1,LL);}}else{for(auto&o:op[r]){auto LL=load;if(!add(LL,o))continue;row[r]=&o;dfs(j+1,LL);}}};dfs(0,L);
}}
cout<<"q "<<q<<" anchors "<<A[0]<<','<<A[1]<<','<<A[2]<<" gates "<<countg<<'\n';}
