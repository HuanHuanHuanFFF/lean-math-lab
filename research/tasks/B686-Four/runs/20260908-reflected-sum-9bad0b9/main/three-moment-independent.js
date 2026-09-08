// Exact independent diagnostic, main task, 2026-09-07.
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
 return {r,k,D,R,freeT,columns:monomials.length,rows:rows.length,rank,nullity:monomials.length-rank};
}
const results=[];
for(const r of [2,3,5])for(const D of [3,5])for(const freeT of [true,false])results.push(run(r,D,freeT));
for(const row of results){
 if(row.freeT&&row.nullity!==0)throw Error("free-T obstruction counterexample: "+JSON.stringify(row));
 if(!row.freeT&&row.D===5&&row.nullity<3)throw Error("contact dimension check failed");
}
console.log(JSON.stringify(results,null,2));
