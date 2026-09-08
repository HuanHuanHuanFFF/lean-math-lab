// Exact coefficient-divisibility diagnostic, main task, 2026-09-07.
// No Lean verification and no original B686 integer-solution claim.
// Run with Node: node three-moment-independent.js
const gcd=(a,b)=>{a=a<0n?-a:a;b=b<0n?-b:b;while(b){[a,b]=[b,a%b]}return a};
const q=(a,b=1n)=>{a=BigInt(a);b=BigInt(b);if(!b)throw Error("zero denominator");if(b<0n){a=-a;b=-b}const g=gcd(a,b);return [a/g,b/g]};
const add=(a,b)=>q(a[0]*b[1]+b[0]*a[1],a[1]*b[1]);
const neg=a=>[-a[0],a[1]];
const sub=(a,b)=>add(a,neg(b));
const mul=(a,b)=>q(a[0]*b[0],a[1]*b[1]);
const div=(a,b)=>q(a[0]*b[1],a[1]*b[0]);
const zq=q(0),oq=q(1);
const pclean=p=>{while(p.length&&!p[p.length-1][0])p.pop();return p};
const pc=a=>a[0]?[a]:[];
const padd=(a,b)=>pclean(Array.from({length:Math.max(a.length,b.length)},(_,i)=>add(a[i]||zq,b[i]||zq)));
const pscale=(a,c)=>pclean(a.map(x=>mul(x,c)));
const pmul=(a,b)=>{const c=Array.from({length:a.length+b.length},()=>zq);for(let i=0;i<a.length;i++)for(let j=0;j<b.length;j++)c[i+j]=add(c[i+j],mul(a[i],b[j]));return pclean(c)};
function run(r,D,freeT) {
 const R=D+1;
 const zero=()=>Array.from({length:R},()=>[]);
 const sc=c=>{const a=zero();a[0]=pc(c);return a};
 const sa=(a,b)=>a.map((v,i)=>padd(v,b[i]));
 const sm=(a,b)=>{const c=zero();for(let i=0;i<R;i++)for(let j=0;i+j<R;j++)c[i+j]=padd(c[i+j],pmul(a[i],b[j]));return c};
 const ss=(a,c)=>a.map(p=>pscale(p,c));
 const sp=(a,e)=>{let b=sc(oq);while(e--){b=sm(b,a)}return b};
 const shift=(a,b)=>Array.from({length:R},(_,i)=>i>=b?a[i-b]:[]);
 const k=2*r+1;
 const roots=[];
 for(const ell of [-1,0,1]) {
  const idx=r+1+ell;
  const M=[[]];
  for(let j=1;j<R;j++){
   let v=zq;
   for(let t=1;t<=k;t++)if(t!==idx)v=add(v,q(1,BigInt(t-idx)**BigInt(j)));
   if(j===2&&freeT){
    let actualT=zq;for(let t=1;t<=r;t++)actualT=add(actualT,q(1,BigInt(t*t)));
    M[j]=[sub(v,mul(q(2),actualT)),q(2)];
   }else M[j]=pc(v);
  }
  const e=[[oq]];
  for(let s=1;s<R;s++){
   let v=[];for(let j=1;j<=s;j++)v=padd(v,pscale(pmul(e[s-j],M[j]),q(j%2?1:-1)));
   e[s]=pscale(v,q(1,s));
  }
  let E=zero();const d=zero();d[1]=[oq];
  for(let j=2;j<R;j++){
   const yp=ss(sa(ss(d,q(4)),E),q(1,3)),ym=ss(sa(d,E),q(1,3));
   let rhs=zero();
   for(let l=2;l<R;l++){
    const term=sa(sp(yp,l),ss(sp(ym,l),q(-4)));
    rhs=sa(rhs,term.map(p=>pmul(e[l-1],p)));
   }
   E[j]=rhs[j];
  }
  E[0]=pc(q(-3*ell)); roots.push(E);
 }
 const monomials=[];
 for(let b=0;b<=D;b++)for(let a=0;a+b<=D;a++)monomials.push([a,b]);
 const cols=monomials.map(([a,b])=>roots.map(z=>shift(sp(z,a),b)));
 const rows=[];
 for(let v=0;v<3;v++)for(let j=0;j<R;j++){
  const deg=Math.max(0,...cols.map(c=>c[v][j].length));
  for(let t=0;t<deg;t++)rows.push(cols.map(c=>c[v][j][t]||zq));
 }
 let rank=0;
 for(let col=0;col<monomials.length;col++){
  let i=rank;while(i<rows.length&&!rows[i][col][0])i++;
  if(i===rows.length)continue;
  [rows[i],rows[rank]]=[rows[rank],rows[i]];
  const pivot=rows[rank][col];rows[rank]=rows[rank].map(x=>div(x,pivot));
  for(let j=0;j<rows.length;j++)if(j!==rank&&rows[j][col][0]){
   const f=rows[j][col];rows[j]=rows[j].map((x,c)=>sub(x,mul(f,rows[rank][c])));
  }
  rank++;
 }
 const pivots=rows.slice(0,rank).map(row=>row.findIndex(x=>x[0]!==0n));
 const frees=monomials.map((_,i)=>i).filter(i=>!pivots.includes(i));
 const basis=frees.map(f=>{
  const v=monomials.map(()=>zq);v[f]=oq;
  pivots.forEach((c,i)=>{v[c]=neg(rows[i][f])});
  let den=1n;for(const a of v)den=den/gcd(den,a[1])*a[1];
  let ints=v.map(a=>a[0]*(den/a[1]));
  let g=0n;for(const a of ints)g=gcd(g,a);
  return ints.map(a=>a/g);
 });
 const prime=p=>{if(p<2)return false;for(let a=2;a*a<=p;a++)if(p%a===0)return false;return true};
 const primes=[];for(let p=7;p<=r;p++)if(2*p>r&&prime(p)&&r%p&&(r+1)%p)primes.push(p);
 const Q=primes.reduce((a,p)=>a*BigInt(p),1n),Q2=Q*Q;
 let combos=0,minHeight=null,maxHeight=0n;
 for(let a=-1;a<=1;a++)for(let b=-1;b<=1;b++)for(let c=-1;c<=1;c++){
  if(!a&&!b&&!c)continue;
  const v=monomials.map((_,i)=>BigInt(a)*basis[0][i]+BigInt(b)*basis[1][i]+BigInt(c)*basis[2][i]);
  let g=0n;for(const x of v)g=gcd(g,x);if(!g)continue;
  const primitive=v.map(x=>x/g);
  const s=Math.min(...monomials.filter((_,i)=>primitive[i]!==0n).map(([,b])=>b));
  if(s>2)throw Error("unexpected leading d power");
  for(let i=0;i<primitive.length;i++)if(monomials[i][1]===s&&primitive[i]%Q2!==0n)throw Error("coefficient divisibility failed");
  const h=primitive.reduce((h,x)=>{x=x<0n?-x:x;return x>h?x:h},0n);
  if(h<Q2)throw Error("height lower bound failed");
  if(minHeight===null||h<minHeight)minHeight=h;if(h>maxHeight)maxHeight=h;
  combos++;
 }
 return {r,k,D,R,rank,nullity:monomials.length-rank,primes,Q2:Q2.toString(),testedPrimitiveCombinations:combos,minHeight:minHeight.toString(),maxHeight:maxHeight.toString()};
}
const results=[10,20,40].map(r=>run(r,5,false));
console.log(JSON.stringify(results,null,2));
