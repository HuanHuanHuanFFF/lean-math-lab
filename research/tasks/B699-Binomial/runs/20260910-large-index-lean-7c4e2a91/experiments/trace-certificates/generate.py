"""Generate explicit local traces. Every generated proposition still needs Lean checking."""
from pathlib import Path
import argparse,json,hashlib,math
RUN=Path(__file__).resolve().parents[2]
P='research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean'
OLD='research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean'
BITS=48;N=20000000;MAX=4882
HEADER='set_option autoImplicit false\nset_option relaxedAutoImplicit false\nset_option Elab.async false\nset_option maxRecDepth 65536\nset_option maxHeartbeats 0\n'
rows=json.loads((RUN/'experiments/height-block-probe/probe.json').read_text())['blocks']
assert rows[0]['L']==1000 and rows[-1]['U']==4882
assert all(a['U']+1==b['L'] for a,b in zip(rows,rows[1:]))
assert all(r['N']==N and r['L']-r['r']-1==r['s'] for r in rows)
def write(rel,text):
    path=RUN/rel;path.parent.mkdir(parents=True,exist_ok=True)
    blob=(text.rstrip()+'\n').encode()
    if path.exists() and path.read_bytes()!=blob:raise RuntimeError('refuse different generated source: '+str(rel))
    path.write_bytes(blob)
    return {'path':rel,'sha256':hashlib.sha256(blob).hexdigest()}
def mul(x,y,up=False):
    m=x[0]*y[0];d=max(0,m.bit_length()+1-BITS);den=1<<d
    return ((m+den-1)//den if up else m//den,x[1]+y[1]+d)
def power_trace(base,exp,up):
    cur=(1,0);e=0;trace=[]
    if exp:
        for bit in bin(exp)[2:]:
            cur=mul(cur,cur,up)
            if bit=='1':cur=mul(cur,base,up)
            e=e*2+int(bit);trace.append((e,cur))
    assert e==exp
    return cur,trace
fd=[(1,0)];fu=[(1,0)];wd=[(1,0)];dd=[(1,0)]
for k in range(1,MAX+1):
    fd.append(mul((k,0),fd[-1]));fu.append(mul((k,0),fu[-1],True))
    wd.append(mul(wd[-1],fd[-1]));dd.append(mul((N-k+1,0),dd[-1]))
sieve=[True]*(MAX+1);sieve[:2]=[False,False]
for p in range(2,math.isqrt(MAX)+1):
    if sieve[p]:
        for v in range(p*p,MAX+1,p):sieve[v]=False
counts=[0]
for k in range(MAX):counts.append(counts[-1]+int(sieve[k]))
def dy(x):return f'⟨{x[0]}, {x[1]}⟩'
def state(k):return '⟨'+', '.join([str(k),dy(fd[k]),dy(fu[k]),dy(wd[k]),dy(dd[k])])+'⟩'
def trace(xs):return '['+',\n    '.join('⟨'+str(e)+', '+dy(x)+'⟩' for e,x in xs)+']'
def factorial_data(full):
    selected={r[key] for r in rows for key in ['L','U','s']}
    stop=MAX if full else 64
    boundaries=[0,64]
    while boundaries[-1]<stop:boundaries.append(min(stop,boundaries[-1]+256))
    files=[];index={};previous=None
    for a,b in zip(boundaries,boundaries[1:]):
        name=f'Factorials{a:04d}_{b:04d}'
        imports=[f'import {P}.FactorialTrace'] if previous is None else [f'import {P}.factorials.{previous}']
        lines=imports+[HEADER,'namespace B699FactorialData','open B699FactorialTrace']
        for lo in range(a,b,64):
            hi=min(lo+64,b);needed=sorted({hi}|{k for k in selected if lo<k<=hi})
            lines.extend(f'def state_{k} : State := {state(k)}' for k in needed)
            listed='[\n  '+',\n  '.join(state(k) for k in range(lo+1,hi+1))+'\n]'
            lines.append(f'def states_{lo}_{hi} : List State := {listed}')
            start='initial' if lo==0 else f'state_{lo}'
            good=f'(good_initial {N})' if lo==0 else f'good_{lo}'
            lines.append(f'theorem checked_{lo}_{hi} : traceCheck {BITS} {N} {start} states_{lo}_{hi} = true := by\n  decide +kernel')
            lines.append(f'theorem good_{hi} : Good {N} state_{hi} :=\n  (traceCheck_sound checked_{lo}_{hi} {good}).1')
            for k in needed:
                if k!=hi:
                    lines.append(f'theorem good_{k} : Good {N} state_{k} :=\n  good_of_mem_trace checked_{lo}_{hi} {good} (by decide +kernel)')
            for k in needed:index[k]=name
        lines+=['end B699FactorialData',f'#print axioms B699FactorialData.good_{b}']
        files.append(write(f'lean/factorials/{name}.lean','\n\n'.join(lines)))
        previous=name
    return files,index

def count_data():
    lines=[f'import {P}.CountIntervals',f'import {OLD}.counts.Count0960',HEADER,'namespace B699CountData','open B699LargePrimeStructure B699CountIntervals']
    current=999;prev='B699Middle.Counts.count_999'
    goals=sorted({r['U'] for r in rows})
    done=[]
    for target in goals:
        while current<target:
            end=min(target,current+128);delta=counts[end]-counts[current]
            lines.append(f'theorem count_{end} : smallPrimeCount {end} = {counts[end]} :=\n  count_extend (start := {current}) (length := {end-current}) (t := {counts[current]}) (d := {delta})\n    {prev} (by decide +kernel)')
            prev=f'count_{end}';current=end;done.append(end)
    lines+=['end B699CountData',f'#print axioms B699CountData.count_{MAX}']
    return write('lean/Counts.lean','\n\n'.join(lines))

def row_source(row,index):
    L,U,r,s,t=[row[k] for k in ['L','U','r','s','t']]
    assert t==counts[U]
    q=2*s-r;e=t*q+s*(s+1)+(U-r-1)*(U-r)//2
    pf,tf=power_trace(fu[U],q,True);pn,tn=power_trace((N,0),e,True);pd,td=power_trace(dd[L],q,False)
    name=f'Block{L}_{U}'
    lines=[f'import {P}.CertifiedBlock',f'import {P}.Counts',f'import {P}.factorials.{index[U]}',HEADER,f'namespace B699TraceData.{name}','open B699TraceBlock B699FactorialData']
    fields=[f'lo := {L}',f'hi := {U}',f'r := {r}',f's := {s}',f'N := {N}',f't := {t}',f'factorialUpper := state_{U}.factorialUpper',f'windowS := state_{s}.windowLower',f'windowM := state_{s}.windowLower',f'descLower := state_{L}.descLower',f'factorialPower := {dy(pf)}',f'nPower := {dy(pn)}',f'descPower := {dy(pd)}',f'factorialTrace := {trace(tf)}',f'nTrace := {trace(tn)}',f'descTrace := {trace(td)}']
    lines.append('def row : Row := {\n  '+'\n  '.join(fields)+'\n}')
    lines.append(f'theorem checked : rowCheck {BITS} row = true := by\n  decide +kernel')
    lines.append(f'theorem tail : B699Middle.TailRange {L} {U} {N} :=\n  tailRange_of_row_checked (row := row)\n    (le_of_eq B699CountData.count_{U})\n    good_{U}.2.1 good_{s}.2.2.1 good_{s}.2.2.1 good_{L}.2.2.2 checked')
    lines += [f'end B699TraceData.{name}',f'#print axioms B699TraceData.{name}.tail']
    return write(f'lean/blocks/{name}.lean','\n\n'.join(lines))

def power_representative():
    exp=19074948;base=(N,0);final,xs=power_trace(base,exp,True)
    lines=[f'import {P}.PowerTrace',HEADER,'namespace B699TraceRepresentative','open B699Dyadic',f'def trace : List PowState := {trace(xs)}',f'theorem checked : powTraceUpCheck 48 (embed {N}) {exp} {dy(final)} trace = true := by\n  decide +kernel',f'theorem bound : {N} ^ {exp} ≤ ({dy(final)} : B699Dyadic.Dyadic).value := by\n  simpa only [value_embed] using powTraceUpCheck_sound checked','end B699TraceRepresentative','#print axioms B699TraceRepresentative.bound']
    return write('lean/PowerRepresentative.lean','\n\n'.join(lines))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--full',action='store_true');ap.add_argument('--rows',action='store_true');a=ap.parse_args()
    files,index=factorial_data(a.full)
    files += [count_data(),power_representative()]
    if a.rows:
        if not a.full:raise ValueError('rows require all factorial endpoints')
        files += [row_source(row,index) for row in rows]
    result={'status':'generated only; individual Lean checks and full dependency-closure acceptance required','bits':BITS,'N':N,'first':1000,'last':MAX,'factorial_steps':MAX if a.full else 64,'row_count':len(rows) if a.rows else 0,'files':files}
    (RUN/'experiments/trace-certificates'/('manifest-full.json' if a.full else 'manifest-representative.json')).write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8',newline='\n')
    print(json.dumps({'files':len(files),'factorial_steps':result['factorial_steps'],'rows':result['row_count']}))
if __name__=='__main__':main()
