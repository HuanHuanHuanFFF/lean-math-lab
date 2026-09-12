from pathlib import Path
from fractions import Fraction as F
from math import comb
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-seven-two-final-consumers-5e2d13bb'
edge=run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb'
growth=run/'experiments/huan-i11-seven-two-growth-tree-5e2d13bb'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def srcint(file,name):
    s=file.read_text(encoding='utf-8')
    return int(re.search(r'def '+name+r' : ℕ := (\d+)',s)[1])
def srcrat(file,name):
    s=file.read_text(encoding='utf-8')
    expr=re.search(r'def '+name+r' : ℚ := ([^\r\n]+)',s)[1]
    digits=re.findall(r'\d+',expr)
    assert len(digits)==2,(name,expr)
    return F(*map(int,digits))
N=srcint(out/'RateBasis.lean','rateNumerator')
D=srcint(out/'RateBasis.lean','rateDenominator')
M=srcint(edge/'Parameters.lean','sevenTwoM')
Z=srcint(edge/'Parameters.lean','sevenTwoZ')
shared=growth/'candidate/lean/Growth/I11SevenTwoShared.lean'
c=srcint(shared,'qSeedC');d=srcint(shared,'qSeedD')
ql=srcrat(shared,'qLam');el=srcrat(shared,'eLam')
assert c==9 and d==5
assert ql==srcrat(edge/'GrowthInputs.lean','qLambda')
assert el==srcrat(edge/'GrowthInputs.lean','eLambda')
ct=(edge/'ActualRows.lean').read_text()
m=re.search(r'def contentBase : ℚ := \((\d+) / (\d+) : ℚ\) \^ (\d+)',ct)
Lt=F(int(m[1]),int(m[2]));assert int(m[3])==d
beta=F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))
qrate=49**(c-d)*Lt**d/(3**c*beta*ql)
scaled=(edge/'ScaledGap.lean').read_text()
assert 'def qNumerator : ℚ := (49 : ℚ) ^ 9 * contentBase' in scaled
assert 'def qDenominator (BQ : ℚ) : ℚ := (3 : ℚ) ^ 9 * (49 : ℚ) ^ 5 * BQ' in scaled
assert qrate==F(N,D)
assert 0<D<=N and 2*D**32<=N**32
assert 32*6<=M and 2**6>48
basis=growth/'selector/candidate/lean/I11Numeric/I11SevenTwoBasis.lean'
assert srcint(basis,'certificateZ')==Z
assert srcint(basis,'selectorM')==M
assert 2**13813<=Z**256<=2**13814
assert 7**4096<=2**11499
selector=[]
for p,a,b,k,alpha in [(7,11499,4096,18000,940),(2,1,1,36000,670)]:
    margins=[13813*b*alpha-a*256*k,b*15359*alpha-a*k*M,
             13813*b*alpha*M-2*alpha*b*256-a*256*k*(M+1)]
    assert min(margins)>=0
    selector.append({'p':p,'J_exponent':k,'alpha':alpha,'margins':margins})
assert 13814*284<=15361*256
assert Z**284<=4*2**15359
gapcases=0
for n in range(33):
    for a in range(11):
        for b in range(11):
            assert abs(max(n-a,0)-max(n-b,0))<=10
            gapcases+=1
ceilcases=0
for n in range(20,101):
    Y=(n+1)//2
    for a in range(11):
        assert Y<=n-a<=2*Y
        ceilcases+=1
rawcases=[]
for n in range(20,201):
    choose=comb(n,11)
    for p in (7,2):
        residue=choose;valuation=0
        while residue%p==0:valuation+=1;residue//=p
        X=p**valuation
        offsets=[a for a in range(11) if (n-a)%X==0 and (n-a)//X>=1]
        assert offsets
        a=offsets[0];C=(n-a)//X
        assert C*X==n-a
        rawcases.append([n,p,valuation,a])
texts={n:(out/(n+'.lean')).read_text() for n in ['RateBasis','ActualNumeric','ActualInstance','Component']}
assert 'rateRational ^ 285' in texts['RateBasis']
assert 'row_delta_false : rowDelta false = 1' in texts['ActualInstance']
assert 'row_delta_true : rowDelta true = 0' in texts['ActualInstance']
assert re.sub(r'/\-.*?\-/', '', texts['ActualNumeric'], flags=re.S).count('And.intro')==7
assert 'simpa only [sevenTwoZ, Math.B699.I11SevenTwoNumeric.certificateZ,' in texts['ActualNumeric']
signature=texts['Component'].split('theorem actual_seven_two_component_edge',1)[1].split(':= by',1)[0]
assert '(hn : (2 : ℕ) ^ 15360 ≤ n)' in signature
assert '(primeComponent n 7) ^ 1000 * ((n + 1) / 2) ^ 60' in signature
assert '(primeComponent n 2) ^ 1000 * ((n + 1) / 2) ^ 330' in signature
report={'status':'EXACT_BOUNDED_PYTHON_NOT_LEAN','rate_derived_from_actual_source':str(qrate),
 'c':c,'d':d,'Lt':str(Lt),'beta':str(beta),'qLambda':str(ql),'eLambda':str(el),
 'rate_certificate':{'N':str(N),'D':str(D),'inequality':'2*D^32 <= N^32','holds':True,
 'max_bits':max((2*D**32).bit_length(),(N**32).bit_length()),'symbolic_blocks':6,'symbolic_lower_bound':64,'M':M},
 'selector':selector,'Z':Z,'max_selector_basis_bits':max((Z**256).bit_length(),13815),
 'gap_test':{'n':[0,32],'a_b':[0,10],'cases':gapcases,'includes_zero_negative_and_truncated':True},
 'ceil_test':{'n':[20,100],'a':[0,10],'cases':ceilcases},
 'actual_binomial_window_test':{'n':[20,200],'primes':[7,2],'cases':len(rawcases),'examples':rawcases[:8]},
 'large_final_component_power_not_evaluated':True,'new_Lean_invocations':0,'source_sha256':{n:sha(out/(n+'.lean')) for n in texts}}
p=out/'exact-checks.json'
if p.exists():assert json.loads(p.read_text())==report
else:p.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(report,ensure_ascii=False,indent=2))
