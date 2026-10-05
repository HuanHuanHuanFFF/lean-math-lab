// Independent reversed-row enumeration with direct polynomial multiplication jets.
// Monomial columns are ascending (X degree,N degree), unlike the author source.
#include <array>
#include <vector>
#include <iostream>
#include <fstream>
#include <algorithm>
#include <string>
using namespace std;
const int prime=32749, dim=20;
using Vec=array<int,dim>;
using Local=array<array<long long,4>,8>;
vector<pair<int,int>> columns;
int residue(long long x){x%=prime;if(x<0)x+=prime;return int(x);}
int inverse(int x){int n=prime-2,y=1;while(n){if(n&1)y=static_cast<long long>(y)*x%prime;x=static_cast<long long>(x)*x%prime;n/=2;}return y;}
Local multiply(const Local &f,int constant,int u,int t){
 Local out{};
 for(int i=0;i<8;i++)for(int j=0;j<4;j++)if(f[i][j]){
  out[i][j]+=constant*f[i][j];
  if(i<7)out[i+1][j]+=u*f[i][j];
  if(j<3)out[i][j+1]+=t*f[i][j];
 }
 return out;
}
array<Local,dim> expansions(int r,int s){
 array<Local,dim> result{};int value=s*(r-s), shear=(2*s==r?s:0);
 for(int c=0;c<dim;c++){
  Local f{};f[0][0]=1;
  for(int i=0;i<columns[c].first;i++)f=multiply(f,r,1,0);
  for(int j=0;j<columns[c].second;j++)f=multiply(f,value,shear,1);
  result[c]=f;
 }
 return result;
}
struct Echelon {
 array<Vec,dim> pivots{}; array<bool,dim> present{};int rank=0;
 void append(Vec row){
  for(int c=0;c<dim;c++)if(row[c]){
   if(!present[c]){int inv=inverse(row[c]);for(int k=c;k<dim;k++)row[k]=static_cast<long long>(row[k])*inv%prime;pivots[c]=row;present[c]=true;rank++;return;}
   int coeff=row[c];for(int k=c;k<dim;k++)row[k]=residue(row[k]-static_cast<long long>(coeff)*pivots[c][k]);
  }
 }
};
struct Choice {vector<int> multiplicities;int kappa=0,zeros=0;array<int,9> intersections{};vector<Vec> equations;};
array<vector<Choice>,6> choices;
void register_choice(int r,const vector<int>&m,int kp){
 if(r%2==0 && kp>m.back())return;
 Choice x;x.multiplicities=m;x.kappa=kp;
 for(int s=0;s<int(m.size());s++){
  if(!m[s])continue;
  x.zeros++;bool center=(2*s==r);int weight=2*m[s]-kp;
  if(center)x.intersections[s]+=weight;
  else{x.intersections[s]+=m[s];x.intersections[r-s]+=m[s];}
  auto polys=expansions(r,s);
  for(int j=0;j<4;j++)for(int i=0;i<8;i++)
   if(i+j<m[s] || (center && i+2*j<weight)){
    Vec eq{};for(int c=0;c<dim;c++)eq[c]=residue(polys[c][i][j]);x.equations.push_back(eq);
   }
 }
 choices[r-3].push_back(x);
}
void compositions(int r,int kp,int position,int remaining,vector<int>&m){
 if(position==int(m.size())-1){m[position]=remaining;register_choice(r,m,kp);return;}
 for(int x=remaining;x>=0;x--){m[position]=x;compositions(r,kp,position+1,remaining-x,m);}
}
long long accepted=0,fullrank=0,lines=0,zeros=0,nodes=0;
ofstream output;array<int,6> selected{};array<int,6> order={5,4,3,2,1,0};int profile;
void walk(int depth,int hit,array<int,9> totals,Echelon rank){
 nodes++;
 int maxfuture=0;
 for(int d=depth;d<6;d++){
  int maximum=0;for(auto &x:choices[order[d]])maximum=max(maximum,x.zeros);maxfuture+=maximum;
 }
 if(hit+maxfuture<14){zeros++;return;}
 if(depth==6){
  accepted++;output<<profile<<' '<<rank.rank<<' '<<hit;
  for(int row=0;row<6;row++){auto &x=choices[row][selected[row]];output<<" | "<<x.kappa;for(int m:x.multiplicities)output<<' '<<m;}
  output<<'\n';return;
 }
 int row=order[depth];
 for(int a=0;a<int(choices[row].size());a++){
  auto &x=choices[row][a];auto merged=totals;bool fail=false;
  for(int t=0;t<9;t++){merged[t]+=x.intersections[t];if(merged[t]>7){fail=true;break;}}
  if(fail){lines++;continue;}
  Echelon next=rank;for(auto &eq:x.equations){next.append(eq);if(next.rank==dim)break;}
  if(next.rank==dim){fullrank++;continue;}
  selected[row]=a;walk(depth+1,hit+x.zeros,merged,next);
 }
}
int main(int argc,char**argv){
 if(argc!=3)return 2;profile=stoi(argv[1]);output.open(argv[2]);if(!output)return 3;
 for(int b=0;b<=3;b++)for(int a=0;a+2*b<=7;a++)columns.push_back({a,b});if(columns.size()!=20)return 4;
 for(int r=3;r<=8;r++){vector<int>m(r/2+1);compositions(r,0,0,3,m);if(r==profile)compositions(r,1,0,3,m);}
 walk(0,0,{},Echelon{});
 cout<<"profile="<<profile<<" reverse_row_nodes="<<nodes<<" fullrank_prunes="<<fullrank<<" line_prunes="<<lines<<" zero_prunes="<<zeros<<" residual="<<accepted<<'\n';
}

