#include <bits/stdc++.h>
using namespace std; const long long DEN=120;
struct Opt{vector<int>m;array<int,9>load{};int e1=0,e2=0,z=0;};int q=8,D=16;vector<Opt>op[6];
void gen(int rr,int s,int left,vector<int>&m){int r=rr+3;if(s==r/2){m[s]=left;Opt o;o.m=m;int sum=0;for(int j=0;j<=r/2;j++){int x=j*(r-j),k=m[j];o.e2+=sum*k*x+k*(k-1)/2*x*x;sum+=k*x;o.z+=(k>0);o.load[j]+=k;o.load[r-j]+=k;}o.e1=sum;for(int t=0;t<9;t++)if(o.load[t]>D)return;op[rr].push_back(o);return;}for(int k=0;k<=left;k++){m[s]=k;gen(rr,s+1,left-k,m);}}
bool add(array<int,9>&a,const Opt&o){for(int t=0;t<9;t++){a[t]+=o.load[t];if(a[t]>D)return false;}return true;}
long long interp120(int x,const int rr[3],const int val[3]){long long out=0;for(int i=0;i<3;i++){long long num=DEN*val[i],den=1;for(int j=0;j<3;j++)if(i!=j){num*=x-rr[j];den*=rr[i]-rr[j];}if(num%den)throw runtime_error("den");out+=num/den;}return out;}
bool coll(const Opt&o,long long Anum,long long Pnum){for(int s=0;s<=7/2;s++)if(!o.m[s]){long long v=s*(7-s); // quadratic x^2-Ax+P, A=Anum/120; P=Pnum/(5*120?) see below
 // P is base/5 where base includes A*sum. Work fully over denominator120: base_num/120, P=base_num/(600).
 if(600*v*v-5*Anum*v+Pnum==0)return true;}return false;}
int main(int argc,char**argv){if(argc!=2)return 2;for(int rr=0;rr<6;rr++){int r=rr+3;vector<int>m(r/2+1);gen(rr,0,q-(r==7?2:0),m);}ofstream out(argv[1]);long long gates=0,nodes=0;int anchors[3]={3,4,6};
 // enumerate anchor rows 3,4,6
 for(int i0=0;i0<(int)op[0].size();i0++)for(int i1=0;i1<(int)op[1].size();i1++){array<int,9>L{};auto&a=op[0][i0];auto&b=op[1][i1];if(!add(L,a)||!add(L,b))continue;for(int i3=0;i3<(int)op[3].size();i3++){nodes++;auto&d=op[3][i3];auto L3=L;if(!add(L3,d))continue;int vals[3]={a.e1,b.e1,d.e1};long long S5n=interp120(5,anchors,vals),S7n=interp120(7,anchors,vals),S8n=interp120(8,anchors,vals);if(S5n%120||S8n%120)continue;int S5=S5n/120,S8=S8n/120;
  for(int i2=0;i2<(int)op[2].size();i2++){auto&c=op[2][i2];if(c.e1!=S5)continue;auto L5=L3;if(!add(L5,c))continue;
   for(int i5=0;i5<(int)op[5].size();i5++){auto&f=op[5][i5];if(f.e1!=S8)continue;auto L58=L5;if(!add(L58,f))continue;
    for(int i4=0;i4<(int)op[4].size();i4++){auto&e=op[4][i4];auto La=L58;if(!add(La,e))continue;long long Anum=S7n-120LL*e.e1;if(Anum%120)continue;int A=Anum/120;
     // base = -T3+5T4-10T5+10T6-5(Tsrc7+A*sum7)+T8
     long long base=-(long long)a.e2+5LL*b.e2-10LL*c.e2+10LL*d.e2-5LL*(e.e2+(long long)A*e.e1)+f.e2;
     // canonical Pnum=base, denominator5
     bool collision=false;for(int s=0;s<=3;s++)if(!e.m[s]){long long v=s*(7-s);if(5*v*v-5LL*A*v+base==0)collision=true;}if(collision)continue;
     int z=a.z+b.z+c.z+d.z+e.z+f.z;if(z<14)continue;gates++;out<<8<<' '<<z<<' '<<A<<' '<<base;int ids[6]={i0,i1,i2,i3,i4,i5};for(int rr=0;rr<6;rr++)for(int m:op[rr][ids[rr]].m)out<<' '<<m;out<<'\n';
    }
   }
  }
 }}cout<<"Q8_2DELTA7_ALT gates "<<gates<<" nodes "<<nodes<<"\n";}
