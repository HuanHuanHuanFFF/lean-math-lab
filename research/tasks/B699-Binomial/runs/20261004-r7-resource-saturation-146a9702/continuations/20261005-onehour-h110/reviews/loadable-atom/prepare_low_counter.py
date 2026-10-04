from pathlib import Path
root=Path.cwd();cont=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110';src=cont/'reviews/omega-berlekamp/omega_berlekamp.cpp';out=cont/'reviews/loadable-atom/omega_low_degrees.cpp'
s=src.read_text(encoding='utf-8-sig');pos=s.index(' static long long matrix_entries')
insert=r'''
 static Poly minusX(Poly a){a.resize(max(size_t(2),a.size()));a[1]=(a[1]+P-1)%P;trim(a);return a;}
 static pair<int,int> lowCounts(Poly f){f=monic(f);if(f.size()==1)return {0,0};Poly c=gcd(f,derivative(f)),w=quotient(f,c);int i=1,l=0,q=0;
  while(w!=Poly{1}){Poly y=gcd(w,c),z=quotient(w,y);if(z!=Poly{1}){if(gcd(z,derivative(z))!=Poly{1})throw runtime_error("low layer not squarefree");Poly xp=power(Poly{0,1},P,z),xp2=power(xp,P,z);int a=gcd(z,minusX(xp)).size()-1,b=gcd(z,minusX(xp2)).size()-1;if(b<a||(b-a)%2)throw runtime_error("low spectrum parity");l+=i*a;q+=i*((b-a)/2);}w=y;c=quotient(c,y);i++;}
  if(c!=Poly{1}){if(!derivative(c).empty())throw runtime_error("low p-root derivative");Poly root((c.size()-1)/P+1);for(size_t j=0;j<c.size();j++)if(c[j]){if(j%P)throw runtime_error("low p-root support");root[j/P]=c[j];}trim(root);auto r=lowCounts(root);l+=P*r.first;q+=P*r.second;}return {l,q};
 }
 static int linearValuations(Poly f){int n=0;for(int r=0;r<P;r++)while(f.size()>1){int v=0;for(auto it=f.rbegin();it!=f.rend();it++)v=(v*r+*it)%P;if(v)break;Poly g(f.size()-1);g.back()=f.back();for(int j=(int)g.size()-2;j>=0;j--)g[j]=(f[j+1]+r*g[j+1])%P;if((f[0]+r*g[0])%P)throw runtime_error("synthetic division mismatch");f=g;n++;}return n;}
'''
s=s[:pos]+insert+s[pos:];s=s.replace('int p,d,expected;','int p,d,expected,expected1,expected2;').replace('in>>p>>d>>expected','in>>p>>d>>expected>>expected1>>expected2')
old='if(expected>=0&&got!=expected)throw runtime_error("expected mismatch case"+to_string(j));'
new=old+'auto low=p==11?Algebra<11>::lowCounts(f):Algebra<257>::lowCounts(f);int lv=p==11?Algebra<11>::linearValuations(f):Algebra<257>::linearValuations(f);if(lv!=low.first)throw runtime_error("linear valuation disagreement");if((expected1>=0&&low.first!=expected1)||(expected2>=0&&low.second!=expected2))throw runtime_error("low expected mismatch");int hi=got-low.first-low.second;if(hi<0||low.first+2*low.second+3*hi>d)throw runtime_error("spectrum range");'
s=s.replace(old,new)
s=s.replace('<<expected<<"}"','<<expected<<",\\\"n1\\\":"<<low.first<<",\\\"n2\\\":"<<low.second<<",\\\"n_high\\\":"<<hi<<"}"')
# Replace the C++ output fragment precisely without introducing over-escaped quotes.
s=s.replace('\\\"n1\\\"','\"n1\"').replace('\\\"n2\\\"','\"n2\"').replace('\\\"n_high\\\"','\"n_high\"')
out.write_text(s,encoding='utf-8')
print(out)
