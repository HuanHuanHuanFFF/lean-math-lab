import sys,json,time
from pathlib import Path
from functools import lru_cache
ROOT=Path(__file__).resolve().parents[1]
B=ROOT/'inputs/mid'
sys.path.insert(0,str(B/'code'))
import moment_frontier as MF
L=MF.L;M=MF.M

def new_raw():
 out=[]
 for a in MF.strengthened_raw():
  e,c,name,d,k=a
  if name=='double_ge8' and d==(0,0,1,0,0,1):
   for i in [1,3,5]:
    kk=[0]*6;kk[i]=1;cc=[2*t+b for t,b in zip(d,kk)]
    out.append((8,tuple(cc),'double89_58_kappa',d,tuple(kk)))
   out.append((10,c,'double10_58',d,k))
  elif name=='L':
   for i in [1,3,5]:
    kk=[0]*6;kk[i]=1
    cc=[2*t+b for t,b in zip(d,kk)]
    out.append((13,tuple(cc),'L13_15_kappa',d,tuple(kk)))
  else:out.append(a)
 return sorted(set(out))

def partial_rows(st,K,s5):
 rows=[]
 for i,r in enumerate(range(3,9)):
  off=[max(x-st['v'][i],0) for x in L.OFF[i]]
  fixed=[s*(r-s) for s,m in enumerate(off) for _ in range(m)]
  diag=None
  if r%2==0:
   B=max(L.DIAG[i]-st['v'][i],0)
   diag=(B+K[i]+1)//2
   fixed += [(r//2)**2]*diag
  if r==5:fixed +=[6]*s5
  free=st['h']-len(fixed)
  assert free>=0,(st,K,s5,r,free)
  e1,e2,e3=M.elementary123(fixed)
  rows.append(dict(r=r,free_count=free,fixed_count=len(fixed),fixed_e1=e1,fixed_e2=e2,fixed_e3=e3,off_mult=off,diag_mult=diag))
 return rows

def aggregate_map(st,raw):
    # Exact same 8-item recurrence as the adopted implementation. Discard only
    # single items not fitting the original capacity or leaving <4 per slot.
    h=st['h'];cap=tuple(st['cap'])
    items=[a for a in raw if a[0]+4*7<=h and all(c<=b for c,b in zip(a[1],cap))]
    cur={((0,)*6,(0,)*6,0):(0,[])}
    for step in range(8):
        nxt={};ceiling=h-4*(7-step)
        for (D,K,s5),(deg,path) in cur.items():
            residual=tuple(cap[i]-2*D[i]-K[i] for i in range(6))
            for a in items:
                e,c,name,d,k=a;nd=deg+e
                if nd>ceiling or any(c[i]>residual[i] for i in range(6)):continue
                key=(tuple(D[i]+d[i] for i in range(6)),tuple(K[i]+k[i] for i in range(6)),s5+int(name=='S5'))
                old=nxt.get(key)
                if old is None or nd<old[0]:nxt[key]=(nd,path+[a])
        cur=nxt
    return cur

def test(idx,raw,ag=None):
 st=L.all_states()[idx]
 if ag is None:ag=aggregate_map(st,raw)
 proj={}
 for (D,K,s5),(deg,path) in ag.items():
  key=(K,s5)
  if key not in proj or deg<proj[key][0]:proj[key]=(deg,D,path)
 rs=[]
 for (K,s5),(deg,D,path) in sorted(proj.items()):
  rows=partial_rows(st,K,s5);one=M.first_moment(rows);two=M.first_second_moment(rows)
  rs.append(dict(K=K,s5=s5,degree=deg,D=D,witness=MF.compact(path),one=one,two=two))
 res=dict(index=idx,state=st,aggregate_count=len(ag),projection_count=len(proj),surviving_projections=sum(z['two']['compatible'] for z in rs),results=rs)

 return res

def enumerate_paths(st,D,K,s5,raw):
 items=[a for a in raw if all(x<=y for x,y in zip(a[3],D)) and all(x<=y for x,y in zip(a[4],K)) and a[0]<=st['h']]
 @lru_cache(None)
 def low(i,n,D,K,s):
  if n==0:return 0 if not any(D) and not any(K) and not s else 10000
  if i==len(items) or s<0 or n<s:return 10000
  e,c,name,d,k=items[i];ans=low(i+1,n,D,K,s)
  if all(x<=y for x,y in zip(d,D)) and all(x<=y for x,y in zip(k,K)):
   ans=min(ans,e+low(i,n-1,tuple(y-x for x,y in zip(d,D)),tuple(y-x for x,y in zip(k,K)),s-int(name=='S5')))
  return ans
 res=[]
 def dfs(i,n,D,K,s,h,path):
  if low(i,n,D,K,s)>h:return
  if not n:res.append(path);return
  e,c,name,d,k=items[i]
  dfs(i+1,n,D,K,s,h,path)
  if all(x<=y for x,y in zip(d,D)) and all(x<=y for x,y in zip(k,K)):
   dfs(i,n-1,tuple(y-x for x,y in zip(d,D)),tuple(y-x for x,y in zip(k,K)),s-int(name=='S5'),h-e,path+[items[i]])
 dfs(0,8,D,K,s5,st['h'],[])
 return res


def eqs(rows):
    A=[];b=[]
    for z in rows:
        r=M.F(z['r']);a=z['fixed_e1'];bb=z['fixed_e2'];f=z['free_count']
        sv=[M.F(1),r,r*r];tv=[r**i for i in range(5)]
        if f==0:
            A += [sv+[M.F(0)]*5,[M.F(0)]*3+tv]; b += [a,bb]
        elif f==1:
            A.append([-a*x for x in sv]+tv);b.append(bb-a*a)
    return A,b

def verify_moment_certificate(st,rec):
    rows=partial_rows(st,rec['K'],rec['s5']);A,b=eqs(rows);c=rec['two']
    if not c['compatible']:
        w=list(map(M.F,c['integer_weights']));rhs=M.F(c['integer_rhs'])
        assert len(w)==len(A) and rhs!=0
        assert all(sum(w[i]*A[i][j] for i in range(len(A)))==0 for j in range(8))
        assert sum(w[i]*b[i] for i in range(len(A)))==rhs
    else:
        x=list(map(M.F,c['S_coefficients']+c['E2_coefficients']))
        assert all(sum(a*y for a,y in zip(row,x))==rhs for row,rhs in zip(A,b))

def indices(path):
    return {int(x.split()[0]) for x in path.read_text().splitlines()[1:] if x.strip() and x.split()[2]=='0'}

def main(dst):
    dst=Path(dst);(dst/'certificates/trace').mkdir(parents=True,exist_ok=True)
    (dst/'certificates/ledger').mkdir(parents=True,exist_ok=True)
    raw=new_raw();states=L.all_states();targets=[666,672,887,898,976,875]
    results=[];all_multisets=[]
    for idx in targets:
        st=states[idx];ag=aggregate_map(st,raw);rev=aggregate_map(st,list(reversed(raw)))
        assert {k:v[0] for k,v in ag.items()}=={k:v[0] for k,v in rev.items()}
        rec=test(idx,raw,ag)
        for item in rec['results']:verify_moment_certificate(st,item)
        if idx!=666 and idx!=875:assert rec['surviving_projections']==0
        if idx==666:
            for (D,K,s5),(deg,path) in sorted(ag.items()):
                rows=partial_rows(st,K,s5)
                if not M.first_second_moment(rows)['compatible']:continue
                assert s5==4 and D[2]==st['d'][2]==5
                paths=enumerate_paths(st,D,K,s5,raw)
                cross=enumerate_paths(st,D,K,s5,list(reversed(raw)))
                canonical=lambda pp:sorted(tuple(sorted(p)) for p in pp)
                assert canonical(paths)==canonical(cross)
                first=M.first_moment(rows);assert first['rank']==3
                Sc=list(map(M.F,first['S_coefficients']))
                root=sum(Sc[j]*5**j for j in range(3))-rows[2]['fixed_e1']
                assert root==M.F(-22,3) and (2*root).denominator==3
                entries=[]
                for pp in paths:
                    owners=[a for a in pp if a[2]!='S5' and a[3][2]>0]
                    assert len(owners)==1 and owners[0][3][2]==1
                    support=tuple(r for r,d in zip(range(3,9),owners[0][3]) if d)
                    assert support in [(5,),(5,6)]
                    entries.append(dict(minimum_degree=sum(a[0] for a in pp),witness=MF.compact(pp),
                        exceptional_factor_defect_support=support,forced_extra_root=M.fmt(root),
                        lattice_denominator=1 if support==(5,) else 2))
                all_multisets.append(dict(D=D,K=K,s5=s5,paths=entries))
            assert sum(len(z['paths']) for z in all_multisets)==5
        results.append(rec)
        print('TRACE_STATE',idx,'projections',rec['projection_count'],'compatible',rec['surviving_projections'],flush=True)
    # The integer-combination identities used for the residual-factor lattice.
    ident=[([6,7,8],[3,-3,1],1),([3,4,7,8],[-3,6,-3,2],2)]
    for rr,ww,den in ident:
        assert all(sum(w*r**j for r,w in zip(rr,ww))==den*5**j for j in range(3))
    inherited=indices(B/'certificates/ledger/final_E0_frontier.tsv');assert len(inherited)==381
    coarse=indices(dst/'certificates/ledger/coarse_direct.tsv');assert len(coarse)==355
    assert (dst/'certificates/ledger/coarse_direct.tsv').read_bytes()==(dst/'certificates/ledger/coarse_raw_reverse.tsv').read_bytes()
    killed_geometry=sorted(inherited-coarse);assert len(killed_geometry)==29 and 854 in killed_geometry
    killed_trace=[666,672,887,898,976]
    final=sorted((inherited&coarse)-set(killed_trace));assert len(final)==347 and min(states[i]['h'] for i in final)==63
    text='idx\th\tE\tv3,v4,v5,v6,v7,v8\n'
    for i in final:text+=f"{i}\t{states[i]['h']}\t0\t"+','.join(map(str,states[i]['v']))+'\n'
    (dst/'certificates/ledger/final_E0_frontier.tsv').write_text(text)
    summary=dict(status='PASS_RATIONAL58_R3K_PARTIALTRACE_H63',input_E0_states=381,
        coarse_E0_states=355,coarse_positive_E_states=2,positive_E_basis='frozen EDGE8',
        geometry_eliminated_from_input=killed_geometry,trace_lattice_eliminated=killed_trace,
        final_E0_states=347,minimum_equality_h=63,maximum_vertical_sum=179,
        same_fixed_G_cover_upper_bound=8,COVER7_proved=False,original_NC9_finite_bound=False,
        Lean=False,external_independent_review=False,repository_writes=False)
    (dst/'certificates/trace/partial_trace.json').write_text(json.dumps(results,indent=2)+'\n')
    (dst/'certificates/trace/state666_all_multisets.json').write_text(json.dumps(all_multisets,indent=2)+'\n')
    (dst/'certificates/ledger/refinement_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(summary['status'])

if __name__=='__main__':
    if len(sys.argv)!=2:raise SystemExit('usage: frontier_refine.py OUTPUT_ROOT')
    main(sys.argv[1])
