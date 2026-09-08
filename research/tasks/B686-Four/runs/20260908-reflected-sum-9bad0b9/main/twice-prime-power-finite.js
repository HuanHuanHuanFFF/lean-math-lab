// Exact residual checks required by the proposed twice-prime-power-sum reduction.
// Conditional finite diagnostic only: the infinite reduction is a separate proof.
const cases=[[2,6],[3,10],[4,18],[5,50]];
const P=(k,n)=>{let x=1n;for(let i=1;i<=k;i++)x*=BigInt(n+i);return x};
const rows=[];let count=0;
for(const [k,s]of cases){
 const all=[];
 for(let n=0;2*n+2*k+1<=s;n++){
  const m=s-k-1-n;if(m<n+k)throw Error("separation");
  const lower=P(k,n),upper=P(k,m),delta=upper-4n*lower;
  if(delta===0n)throw Error("B686 witness");
  all.push({n,m,lower:String(lower),upper:String(upper),delta:String(delta)});count++;
 }
 rows.push({k,s,possibleN:all.length,all});
}
if(count!==28)throw Error("coverage count");
console.log(JSON.stringify({count,rows},null,2));
