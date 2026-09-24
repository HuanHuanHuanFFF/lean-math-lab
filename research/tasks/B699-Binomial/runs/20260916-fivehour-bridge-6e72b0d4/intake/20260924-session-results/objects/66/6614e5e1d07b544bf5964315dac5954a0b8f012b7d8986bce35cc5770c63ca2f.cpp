// Exact Buchberger search and independently checkable ideal-membership DAG.
// Pair filtering follows the published Buchberger/Gebauer-Moeller scheme,
// as also implemented in SymPy (BSD). Certificate soundness does not trust pair filtering.
#include <gmpxx.h>
#include <array>
#include <map>
#include <set>
#include <vector>
#include <string>
#include <iostream>
#include <fstream>
#include <algorithm>
#include <chrono>
#include <unordered_map>
#include <stdexcept>
using namespace std;
constexpr int MAXV=12;
int divmode=0; int nv,target; size_t maxbits=0; long skipped=0; array<int,MAXV> wt{};
using Mon=array<int,MAXV>;
int cmpmon(const Mon&a,const Mon&b){long wa=0,wb=0;for(int i=0;i<nv;i++){wa+=(long)a[i]*wt[i];wb+=(long)b[i]*wt[i];}if(wa!=wb)return wa<wb?-1:1;for(int i=nv-1;i>=0;i--)if(a[i]!=b[i])return a[i]>b[i]?-1:1;return 0;}
struct MC { bool operator()(const Mon&a,const Mon&b)const{return cmpmon(a,b)>0;} };
using Poly=map<Mon,mpq_class,MC>;
Mon zero{};
Mon mmul(const Mon&a,const Mon&b){Mon m{};for(int i=0;i<nv;i++)m[i]=a[i]+b[i];return m;}
Mon mlcm(const Mon&a,const Mon&b){Mon m{};for(int i=0;i<nv;i++)m[i]=max(a[i],b[i]);return m;}
bool mdivides(const Mon&a,const Mon&b){for(int i=0;i<nv;i++)if(a[i]>b[i])return false;return true;}
Mon mquot(const Mon&a,const Mon&b){Mon m{};for(int i=0;i<nv;i++)m[i]=a[i]-b[i];return m;}
Poly term(const Mon&m,const mpq_class&c){Poly p;if(c!=0)p.emplace(m,c);return p;}
void addterm(Poly &p,const Mon&m,const mpq_class&c){if(c==0)return;auto it=p.find(m);if(it==p.end())p.emplace(m,c);else{it->second+=c;if(it->second==0)p.erase(it);}}
void addmul(Poly&p,const Poly&q,const Mon&m,const mpq_class&c){for(auto &kv:q)addterm(p,mmul(kv.first,m),c*kv.second);}
void scale(Poly&p,const mpq_class&c){for(auto&kv:p)kv.second*=c;}
struct Node { Poly p; int input=-1; vector<pair<Poly,int>> terms; };
vector<Node> nodes;
unordered_map<size_t,vector<int>> hashes;
size_t phash(const Poly&p){size_t h=0;for(auto &kv:p){for(int i=0;i<nv;i++)h=(h^(kv.first[i]+0x9e3779b9)) * 1099511628211ULL;h^=std::hash<string>{}(kv.second.get_str());h*=1099511628211ULL;}return h;}
int targetid=-1;struct Found{};
bool istarget(const Poly&p){if(p.size()!=1)return false;auto &m=p.begin()->first;for(int i=0;i<nv;i++)if(i!=target && m[i])return false;return m[target]>0;}
int addnode(Poly p,vector<pair<Poly,int>> ts={},int input=-1){if(p.empty())return -1;size_t ha=phash(p);auto it=hashes.find(ha);if(it!=hashes.end())for(int id:it->second)if(nodes[id].p==p)return id;int id=nodes.size();nodes.push_back({std::move(p),input,std::move(ts)});hashes[ha].push_back(id);if(input<0 && istarget(nodes[id].p)){targetid=id;throw Found();}return id;}
int normal(int gid,const vector<int>&ds){if(gid<0)return -1;Poly g=nodes[gid].p,h;vector<Poly> qs(ds.size());
 while(!g.empty()) {auto m=g.begin()->first;mpq_class c=g.begin()->second;if(maxbits && (mpz_sizeinbase(c.get_num_mpz_t(),2)>maxbits || mpz_sizeinbase(c.get_den_mpz_t(),2)>maxbits)){skipped++;return -1;}bool red=false;
  for(size_t k=0;k<ds.size();k++){const Poly&d=nodes[ds[k]].p;if(mdivides(d.begin()->first,m)){Mon qm=mquot(m,d.begin()->first);mpq_class qc=c/d.begin()->second;addterm(qs[k],qm,qc);addmul(g,d,qm,-qc);red=true;break;}}
  if(!red){h.emplace(m,c);g.erase(g.begin());}
 }
 if(h.empty())return -1;
 mpq_class inv=1/h.begin()->second;scale(h,inv); if(maxbits)for(auto &kv:h)if(mpz_sizeinbase(kv.second.get_num_mpz_t(),2)>maxbits || mpz_sizeinbase(kv.second.get_den_mpz_t(),2)>maxbits){skipped++;return -1;}
 vector<pair<Poly,int>> ts;ts.emplace_back(term(zero,inv),gid);
 for(size_t k=0;k<ds.size();k++)if(!qs[k].empty()){scale(qs[k],-inv);ts.emplace_back(std::move(qs[k]),ds[k]);}
 return addnode(std::move(h),std::move(ts));
}
int spoly(int a,int b){auto ma=nodes[a].p.begin()->first,mb=nodes[b].p.begin()->first;Mon L=mlcm(ma,mb),qa=mquot(L,ma),qb=mquot(L,mb);mpq_class ca=1/nodes[a].p.begin()->second,cb=-1/nodes[b].p.begin()->second;Poly p;addmul(p,nodes[a].p,qa,ca);addmul(p,nodes[b].p,qb,cb);return addnode(std::move(p),{{term(qa,ca),a},{term(qb,cb),b}});}
using Pair=pair<int,int>;
void update(set<int>&G,set<Pair>&CP,int nh){Mon mh=nodes[nh].p.begin()->first;set<int>C=G;set<Pair>D;
 while(!C.empty()) {int ig=*C.begin();C.erase(C.begin());auto mg=nodes[ig].p.begin()->first;Mon L=mlcm(mh,mg);bool keep=(mmul(mh,mg)==L);
  if(!keep){bool div=false;for(int k:C)if(mdivides(mlcm(mh,nodes[k].p.begin()->first),L)){div=true;break;}
   if(!div)for(auto pr:D)if(mdivides(mlcm(mh,nodes[pr.second].p.begin()->first),L)){div=true;break;}
   keep=!div;
  }
  if(keep)D.insert({nh,ig});
 }
 set<Pair>E;for(auto pr:D){auto mg=nodes[pr.second].p.begin()->first;if(mmul(mh,mg)!=mlcm(mh,mg))E.insert(pr);}
 set<Pair>NCP;for(auto pr:CP){auto m1=nodes[pr.first].p.begin()->first,m2=nodes[pr.second].p.begin()->first;auto L=mlcm(m1,m2);if(!mdivides(mh,L)||mlcm(m1,mh)==L||mlcm(m2,mh)==L)NCP.insert(pr);}
 NCP.insert(E.begin(),E.end());CP.swap(NCP);
 set<int>NG;for(int ig:G)if(!mdivides(mh,nodes[ig].p.begin()->first))NG.insert(ig);NG.insert(nh);G.swap(NG);
}
void pjson(ostream&out,const Poly&p){out<<'[';bool first=true;for(auto &kv:p){if(!first)out<<',';first=false;out<<"[[";for(int i=0;i<nv;i++){if(i)out<<',';out<<kv.first[i];}out<<"],"<<kv.second.get_num()<<','<<kv.second.get_den()<<']';}out<<']';}
void dump(const string&path,const vector<string>&names){set<int> keep;vector<int>stack{targetid};while(!stack.empty()){int i=stack.back();stack.pop_back();if(keep.count(i))continue;keep.insert(i);for(auto &t:nodes[i].terms)stack.push_back(t.second);}for(size_t i=0;i<nodes.size();i++)if(nodes[i].input>=0)keep.insert(i);map<int,int>ni;int k=0;for(int i:keep)ni[i]=k++;
 ofstream out(path);out<<"{\"variables\":[";for(int i=0;i<nv;i++){if(i)out<<',';out<<'"'<<names[i]<<'"';}out<<"],\"weights\":[";for(int i=0;i<nv;i++){if(i)out<<',';out<<wt[i];}out<<"],\"coefficient_field\":\"QQ\",\"method\":\"exact polynomial linear-combination DAG\",\"raw_nodes\":"<<nodes.size()<<",\"saved_nodes\":"<<keep.size()<<",\"target\":"<<ni[targetid]<<",\"nodes\":[";
 bool first=true;for(int i:keep){if(!first)out<<',';first=false;auto&nd=nodes[i];out<<"{\"poly\":";pjson(out,nd.p);if(nd.input>=0)out<<",\"input\":"<<nd.input;else{out<<",\"terms\":[";bool tf=true;for(auto&tm:nd.terms){if(!tf)out<<',';tf=false;out<<"{\"node\":"<<ni[tm.second]<<",\"factor\":";pjson(out,tm.first);out<<'}';}out<<']';}out<<'}';}out<<"]}\n";out.close();
 cerr<<"CERTIFICATE "<<path<<" nodes "<<keep.size()<<" raw "<<nodes.size()<<endl;
}

Poly readpoly(const string&path){ifstream in(path);int nt;in>>nt;Poly p;for(int k=0;k<nt;k++){string ns,ds;in>>ns>>ds;Mon m{};for(int j=0;j<nv;j++)in>>m[j];mpq_class c{mpz_class(ns),mpz_class(ds)};c.canonicalize();addterm(p,m,c);}return p;}
Poly pmul(const Poly&a,const Poly&b){Poly c;for(auto&kv:a)addmul(c,b,kv.first,kv.second);return c;}
bool certify_target(const Poly&targ,const vector<int>&div){Poly g=targ,rem;vector<Poly>qs(div.size());while(!g.empty()){auto m=g.begin()->first;auto c=g.begin()->second;bool red=false;for(size_t k=0;k<div.size();k++){const auto&d=nodes[div[k]].p;if(mdivides(d.begin()->first,m)){auto qm=mquot(m,d.begin()->first);mpq_class qc=c/d.begin()->second;addterm(qs[k],qm,qc);addmul(g,d,qm,-qc);red=true;break;}}if(!red){rem.emplace(m,c);g.erase(g.begin());}}
if(!rem.empty()){cerr<<"TARGET_REMAINDER terms "<<rem.size()<<endl;return false;}vector<pair<Poly,int>> ts;for(size_t k=0;k<div.size();k++)if(!qs[k].empty())ts.emplace_back(std::move(qs[k]),div[k]);targetid=addnode(targ,std::move(ts));throw Found();}

int main(int argc,char**argv){if(getenv("GB_DIV_MODE"))divmode=atoi(getenv("GB_DIV_MODE"));if(getenv("GB_MAX_BITS"))maxbits=stoul(getenv("GB_MAX_BITS"));if(argc<3){cerr<<"usage input output";return 2;}ifstream in(argv[1]);int nf;in>>nv>>nf>>target;if(nv>MAXV)return 2;for(int i=0;i<nv;i++)in>>wt[i];vector<string>names(nv);for(auto &s:names)in>>s;
 vector<int>f;for(int i=0;i<nf;i++){int nt;in>>nt;Poly p;for(int j=0;j<nt;j++){string ns,ds;in>>ns>>ds;Mon m{};for(int k=0;k<nv;k++)in>>m[k];mpq_class c{mpz_class(ns),mpz_class(ds)};c.canonicalize();addterm(p,m,c);}f.push_back(addnode(std::move(p),{},i));}
 auto start=chrono::steady_clock::now();cerr<<"INPUT "<<nf<<" vars "<<nv<<endl;
 try{
  for(;;){vector<int>next;for(size_t i=0;i<f.size();i++){vector<int>div(f.begin(),f.begin()+i);int n=normal(f[i],div);if(n>=0)next.push_back(n);}if(next==f)break;f.swap(next);}
  set<int>F(f.begin(),f.end()),G;set<Pair>CP;
  auto smaller=[&](int a,int b){int c=cmpmon(nodes[a].p.begin()->first,nodes[b].p.begin()->first);return c<0||(c==0&&a<b);};
  while(!F.empty()){int h=*min_element(F.begin(),F.end(),smaller);F.erase(h);update(G,CP,h);}
  int step=0;while(!CP.empty()){
   auto it=min_element(CP.begin(),CP.end(),[&](Pair a,Pair b){auto la=mlcm(nodes[a.first].p.begin()->first,nodes[a.second].p.begin()->first),lb=mlcm(nodes[b.first].p.begin()->first,nodes[b.second].p.begin()->first);int c=cmpmon(la,lb);return c<0||(c==0&&a<b);});
   auto pr=*it;CP.erase(it);int sp=spoly(pr.first,pr.second);vector<int>div(G.begin(),G.end());
  if(divmode==1)sort(div.begin(),div.end(),[&](int a,int b){return smaller(b,a);});
  else if(divmode==2)sort(div.begin(),div.end(),[&](int a,int b){size_t ba=0,bb=0;for(auto&kv:nodes[a].p)ba=max(ba,mpz_sizeinbase(kv.second.get_num_mpz_t(),2)+mpz_sizeinbase(kv.second.get_den_mpz_t(),2));for(auto&kv:nodes[b].p)bb=max(bb,mpz_sizeinbase(kv.second.get_num_mpz_t(),2)+mpz_sizeinbase(kv.second.get_den_mpz_t(),2));return ba<bb||(ba==bb&&nodes[a].p.size()<nodes[b].p.size());});
  else sort(div.begin(),div.end(),smaller);int ht=normal(sp,div);if(ht>=0)update(G,CP,ht);step++;
   if(step%25==0){double sec=chrono::duration<double>(chrono::steady_clock::now()-start).count();size_t bits=0,terms=0;for(int gi:G){terms+=nodes[gi].p.size();for(auto &kv:nodes[gi].p)bits=max(bits,mpz_sizeinbase(kv.second.get_num_mpz_t(),2));}cerr<<"STEP "<<step<<" G "<<G.size()<<" CP "<<CP.size()<<" nodes "<<nodes.size()<<" bits "<<bits<<" terms "<<terms<<" skipped "<<skipped<<" sec "<<sec<<endl;}
  }
  set<int>GR;for(int gi:G){vector<int>div(G.begin(),G.end());div.erase(find(div.begin(),div.end(),gi));int rr=normal(gi,div);if(rr>=0)GR.insert(rr);}
  if(getenv("GB_TARGET_FILE")){Poly T=readpoly(getenv("GB_TARGET_FILE")),pw=term(zero,1);vector<int>div(GR.begin(),GR.end());sort(div.begin(),div.end(),smaller);for(int e=1;e<=8;e++){pw=pmul(pw,T);cerr<<"TRY_TARGET_POWER "<<e<<endl;certify_target(pw,div);}}
 }catch(const Found&){dump(argv[2],names);cerr<<"PURE_TARGET ";pjson(cerr,nodes[targetid].p);cerr<<" sec "<<chrono::duration<double>(chrono::steady_clock::now()-start).count()<<endl;return 0;}
 cerr<<"NO_PURE_TARGET nodes "<<nodes.size()<<endl;return 1;
}
