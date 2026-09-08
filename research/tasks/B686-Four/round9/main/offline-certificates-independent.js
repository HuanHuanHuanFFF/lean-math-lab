// Main-task independent BigInt checks of A/B offline certificates.
// These are finite diagnostics, not Lean proofs and not B686 solutions.
const abs=x=>x<0n?-x:x;
const gcd=(a,b)=>{a=abs(a);b=abs(b);while(b)[a,b]=[b,a%b];return a};
const vp=(x,p)=>{x=abs(x);if(!x)throw Error("valuation of zero");let a=0;while(x%p===0n){x/=p;a++}return a};
const P=(k,n)=>{let v=1n;for(let i=1;i<=k;i++)v*=n+BigInt(i);return v};
const choose=(n,j)=>{let v=1n;for(let i=1;i<=j;i++)v=v*BigInt(n+1-i)/BigInt(i);return v};
const assert=(v,msg)=>{if(!v)throw Error(msg)};
const mod=(a,b)=>(a%b+b)%b;
const nA=7905407968457376340994754980783824964358143n,dA=11612160n,mA=nA+dA;
assert(P(4,mA)-4n*P(4,nA)<0n,"A model residual sign");
assert(!(3n*mA<16n*dA),"A model accidentally satisfies real size window");
const va=[2n,3n,5n,7n].map(p=>({p:p.toString(),lower:vp(P(4,nA),p),upper:vp(P(4,mA),p)}));
assert(JSON.stringify(va.map(v=>[v.lower,v.upper]))===JSON.stringify([[13,15],[4,4],[1,1],[1,1]]),"A valuations");
const Ri=3n*(nA+2n)-dA,Rj=3n*(nA+3n)-dA;
assert(Ri%25n===0n&&Rj%49n===0n,"A rough square contacts");
const C=(Ri/25n)*(Rj/49n);
let Csmall=1n;for(const p of [2n,3n])Csmall*=p**BigInt(vp(C,p));
assert(Csmall===18n,"A cofactor smooth part");
const unit=2n*C-4n*331776n**2n;
assert(unit%35n===0n,"A central unit correction");
assert((2n*Ri*Rj-4n*dA*dA)%(35n**3n)===0n,"A cubic contact");
const nB=3743720404718694482367114594042897200992793953477491036451n;
const mB=4939868689749831264655616437153135443415521746603427025762n;
const triples=[[2,2,7n],[2,3,11n],[2,4,13n],[3,2,17n],[3,3,19n],[3,4,23n],[4,2,29n],[4,3,31n],[4,4,37n]];
const T=(i,j)=>choose(4,i-1)*(mB+BigInt(j))-4n*BigInt((i+j)%2?-1:1)*choose(4,j-1)*(nB+BigInt(i));
const residual=P(5,mB)-4n*P(5,nB);
assert(mB>=nB+5n&&residual>0n&&residual*10n**10n<4n*P(5,nB),"B real/nonzero checks");
for(const [i,j,p]of triples){
 assert(vp(nB+BigInt(i),p)===2&&vp(mB+BigInt(j),p)===2,"B exact edge valuation");
 assert(T(i,j)%(p**4n)===0n&&residual%(p**4n)===0n,"B local fourth-power residual");
}
const mat=[2,3,4].map(i=>[2,3,4].map(j=>T(i,j)));
const det=mat[0][0]*(mat[1][1]*mat[2][2]-mat[1][2]*mat[2][1])-mat[0][1]*(mat[1][0]*mat[2][2]-mat[1][2]*mat[2][0])+mat[0][2]*(mat[1][0]*mat[2][1]-mat[1][1]*mat[2][0]);
assert(det===0n,"B rank2 determinant");
const a=nB+2n,b=mB+2n;
const ldet=(2n*(b-4n*a))*(3n*(b+1n-4n*(a+1n)))-(2n*(b+1n)+12n*a)*(3n*b+8n*(a+1n));
assert(ldet===-4n*(5n*a+2n)*(5n*b+2n),"B small-coefficient determinant formula");
const lres=[7n,11n,17n,19n].map(p=>mod(ldet,p).toString());
assert(JSON.stringify(lres)===JSON.stringify(["5","2","7","2"]),"B minor residues");
const contact=[];
for(const [k,n,m,ratio,primes,isExact]of [
 [2,13n,19n,2n,[2n,3n],true],
 [2,83n,118n,2n,[5n,7n],true],
 [3,11n,25n,9n,[2n,7n],true],
 [4,nA,mA,4n,[2n,3n,5n,7n],false]]) {
 if(isExact)assert(P(k,m)===ratio*P(k,n),"legal control product");
 const d=m-n;
 for(const p of primes){
  const av=vp(d,p),ev=vp(ratio-1n,p);let L=0,power=1n;
  while(power*p<=BigInt(k)){power*=p;L++}
  if(av<=L+ev){contact.push({k,ratio:String(ratio),p:String(p),case:"small exponent",isExact});continue}
  const hits=[];for(let i=1;i<=k;i++)if(vp(n+BigInt(i),p)>=av-ev)hits.push(i);
  assert(hits.length===1,"unique high-power position");
  const i=hits[0],bv=vp(n+BigInt(i),p),R=(ratio-1n)*(n+BigInt(i))-d;
  const lower=2*av-ev-L+vp(ratio,p),actual=vp(R,p);
  assert(bv===av-ev&&actual>=lower,"all-prime power contact");
  contact.push({k,ratio:String(ratio),p:String(p),a:av,L,e:ev,i,b:bv,Rvaluation:actual,lower,isExact});
 }
}
console.log(JSON.stringify({A:{valuations:va,Csmall:String(Csmall),realWindow:false,exactOriginal:false},B:{edges:9,edgeValuation:2,det3:String(det),minorResidues:lres,positiveNonzeroResidual:true,relativeErrorLessThan1e10Inverse:true,exactOriginal:false},allPrimeContactDiagnostics:contact},null,2));
