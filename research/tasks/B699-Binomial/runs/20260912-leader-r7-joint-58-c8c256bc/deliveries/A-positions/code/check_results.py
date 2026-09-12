"""Exact receiver for this continuation, NOT a Lean or old-certificate replay.
Acceptance uses Python integers/Fraction, frozen two-implementation Padé checkers,
and explicit finite coverage. No optimizer is imported by this module.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb,prod,isqrt
import argparse,copy,hashlib,itertools,json,platform,sys,time
from prepare_sources import ROOT,restore,sha256,load_module

CELLS=[(r,b,r-b) for r in range(9) for b in range(r+1)]
POWERS=[(0,0),(1,0),(0,1),(2,0),(1,1),(0,2),(3,0),(2,1),(1,2),(0,3)]
class Rejected(ValueError):pass

def need(condition,message):
 if not condition:raise Rejected(message)
def read(name):return json.loads((ROOT/'evidence'/name).read_text())
def write(path,data):
 Path(path).parent.mkdir(parents=True,exist_ok=True)
 Path(path).write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
def ceilq(x):return -(-x.numerator//x.denominator)

def peval(q,b,c):return sum(v*b**u*c**w for v,(u,w) in zip(q,POWERS))
def shifted(q):
 """Exact coefficients of F(x+9,x+y+9), indexed by powers of x,y."""
 out={}
 for coef,(u,v) in zip(q,POWERS):
  for i in range(u+1):
   for j in range(v+1):
    for k in range(v-j+1):
     power=(i+j,k)
     value=coef*comb(u,i)*comb(v,j)*comb(v-j,k)*9**(u-i+v-j-k)
     out[power]=out.get(power,0)+value
 return out

def multiplicity(q,b,c):
 degree=max((sum(p) for v,p in zip(q,POWERS) if v),default=-1)
 need(degree>=0,'zero polynomial')
 for order in range(degree+1):
  for dx in range(order+1):
   dy=order-dx
   value=sum(v*comb(u,dx)*comb(w,dy)*b**(u-dx)*c**(w-dy)
             for v,(u,w) in zip(q,POWERS) if u>=dx and w>=dy)
   if value:return order
 raise Rejected('impossible polynomial multiplicity')

def check_poly(data,require_constant=True):
 q=data['coefficients'];degree=data['degree']
 need(len(q) in (6,10) and all(type(v) is int for v in q),'integer polynomial coefficients')
 need(max((sum(p) for v,p in zip(q,POWERS) if v),default=-1)==degree,'polynomial degree')
 sh=shifted(q)
 need(all(v>=0 for v in sh.values()) and any(v>0 for v in sh.values()),'nonvanishing positive expansion')
 if require_constant:need(sh.get((0,0),0)>0,'nonzero also at n=2j')
 mask=[multiplicity(q,b,c) for r,b,c in CELLS]
 need(data['multiplicities']==mask,'full triangle multiplicity coverage')
 H=sum(abs(v) for v in q)
 need(H>0,'positive coefficient norm')
 return {'degree':degree,'norm':H,'norm_bits':(H-1).bit_length(),
         'positive_shift_coefficients':{str(k):v for k,v in sh.items()},'multiplicities':mask}

def check_dual(cert,expected=True):
 r,s=cert['positions']
 if expected:need({r,s} in ({1,4},{2,3}),'excluded position support')
 lam=list(map(F,cert['lambda']));nu=list(map(F,cert['nu']))
 need(len(lam)==9 and len(nu)==48,'dual dimensions')
 need(all(v==0 for v in nu[:45]) and all(v<=0 for v in nu[45:]),'upper bounds only for three t variables')
 pp=cert['polynomials'];mu=[F(p['mu']) for p in pp]
 need(all(v<0 for v in mu),'dual inequality sign')
 checked=[check_poly(p) for p in pp]
 slack=[]
 for k in range(48):
  if k<45:
   row=CELLS[k][0]
   val=lam[row]+sum(w*p['multiplicities'][k] for w,p in zip(mu,pp))
  else:val=lam[[0,r,s][k-45]]+nu[k]
  objective=F(int(k in (46,47)))
  need(val<=objective,'dual coefficient coverage at '+str(k))
  slack.append(str(objective-val))
 L=sum(lam)+sum(w*p['degree'] for w,p in zip(mu,pp))+sum(nu)
 B=11*sum(max(lam[a],F(0)) for a in range(9) if a not in (0,r,s))
 B+=sum(-w*p['norm_bits'] for w,p in zip(mu,checked))+20
 need(L==F(cert['L']) and 2-L==F(cert['gamma']),'exact exponent reconstruction')
 need(B==F(cert['constant_bits']) and ceilq(B)==cert['constant_bits_ceil'],'constant reconstruction')
 need(2-L<=F(9,100) and B<=100,'uniform integer consumer')
 return {'positions':[r,s],'gamma':str(2-L),'constant_bits':str(B),'constraint_rows':len(pp),
         'coefficient_checks':48,'slacks':slack,'polynomial_checks':checked}

def check_duals(data):
 need(len(data['certificates'])==2,'two base dual certificates')
 need({tuple(v['positions']) for v in data['certificates']}=={(1,4),(2,3)},'base supports')
 out=[]
 for c in data['certificates']:
  out.append(check_dual(c))
  swapped=copy.deepcopy(c);swapped['positions']=list(reversed(c['positions']))
  swapped['nu'][46],swapped['nu'][47]=swapped['nu'][47],swapped['nu'][46]
  out.append(check_dual(swapped))
 # The three pure integer consumers stated in PROOFS.
 need(F(22,245)<F(9,100) and F(24384,245)<100,'first uniform bound')
 need(F(51,625)<F(9,100) and F(49857,625)<80,'second uniform bound')
 return out

def check_products(cutdata):
 need(cutdata['denominator']==10000 and cutdata['logY_min']==9500000,'cut domain')
 cuts=cutdata['cuts'];need(len(cuts)==2,'two cuts')
 need(all({c['p'],c['q']}=={3,7} for c in cuts),'complementary primes')
 branches=[]
 for choices in itertools.product((0,1),repeat=2):
  low={3:0,7:0}
  for c,side in zip(cuts,choices):
   p=c['p'] if side==0 else c['q'];w=c['wp'] if side==0 else c['wq']
   low[p]=max(low[p],w)
  branches.append({'choices':list(choices),'lower_numerators':low,'sum':sum(low.values())})
 needed=F(cutdata['product_lambda'])
 need(min(F(b['sum'],10000) for b in branches)>=needed==F(463,5000),'product claim')
 need(5000%100==0 and 9*50==450 and 463-450==13,'power compatibility')
 need(500000+463==500463 and 13*38498>500463,'terminal bound')
 need(38498<14000001 and 169<4096<14000001,'separate low/high branch endpoints')
 return branches

def check_coverage(data):
 old=[[1,2],[2,1],[1,3],[3,1],[1,4],[4,1],[2,3],[3,2]]
 excluded=[[1,4],[4,1],[2,3],[3,2]];remaining=[[1,2],[2,1],[1,3],[3,1]]
 need(data['baseline_double_positions']==old,'confirmed8-position frontier')
 need(data['excluded_positions']==excluded and data['remaining_positions']==remaining,'complete disjoint position split')
 need(data['baseline_family_total']==58 and data['one_high_families']==56 and data['two_high_families']==2,'58 families unchanged')
 need(data['m3_remaining_positions']==[[3,1]],'m3 position consumer')
 need(data['global_i9_closed'] is False and data['R7_changed'] is False,'unresolved quantifiers remain')
 need({tuple(x) for x in excluded+remaining}==set(map(tuple,old)),'no lost branch')
 need([x for x in remaining if x[0]%3==0]==[[3,1]],'3-divisible n branch')
 return {'baseline_positions':8,'excluded_all_heights':4,'remaining_positions':4,'m3_remaining_positions':1,
         'families_remaining':58,'R7':[3,4,5,6,7,8,9]}

def family_check(fc,tc,cut):
 need(fc['status']=='ACCEPTED_PAPER_PLUS_EXACT_CERTIFICATE_UNLEANED' and fc['all_permutations'],'frozen content status')
 need(fc['deltas']==[0,1],'both delta values')
 need(sorted(map(tuple,fc['permutations']))==sorted(set(itertools.permutations((19,27,42)))),'all content permutations')
 need(tuple(sorted((cut['e'],cut['d'],cut['f'])))==(19,27,42),'cut permutation')
 need(F(fc['g'])==F(tc['g'])==F(cut['g'])==F(8051,1000),'content growth')
 need(fc['m0']==cut['m0']==22047 and fc['M']==tc['M']==100000000,'finite/infinite interface')
 need(fc['finite']['blocks']==70539 and fc['tail']['terms']==len(tc['rows'])==283,'old complete certificate counts')
 need(tc['passed'] and F(tc['margin'])>0,'old tail metadata')
 return {'family':[19,27,42],'g':'8051/1000','m0':22047,'M':100000000,'frozen_finite_blocks':70539,
         'frozen_tail_terms':283,'old_content_replayed_this_run':False}

def check_numerics(sources,cutdata):
 e=sources['effective'];primary=load_module('A58Q2_primary',e/'code/verify_cuts.py')
 alternate=load_module('A58Q2_grid',e/'code/check_cuts_grid.py')
 fc=json.loads((e/'evidence/accepted_content_family_19_27_42.json').read_text())
 tc=next(v for v in json.loads((e/'evidence/content_tail.json').read_text())['rows'] if tuple(v[k] for k in ('e','d','f'))==(19,27,42))
 dep=family_check(fc,tc,cutdata['cuts'][0]);records=[]
 for c in cutdata['cuts']:
  a=primary.obligations(c,19000000,13);b=alternate.check(c,19000000,13)
  need(a['passed'] and all(F(v)>0 for v in a['margins'].values()),'primary exact threshold')
  need(all(int(v[0])>0 for v in b['margins']),'alternate exact threshold')
  records.append({'input':c,'primary':a,'alternate':b})
 need(14000000*primary.logq(F(2)).lo>9500000,'height-to-real-log threshold')
 # Hash/headers, explicitly not new big-integer arithmetic replay.
 block=sources['i14']/'evidence/blocks/blocks_3_7.tsv'
 meta={'additional_content':dep,'content_metadata_sha256':sha256(e/'evidence/accepted_content_family_19_27_42.json'),
       'local_3_7_cubic_certificate_sha256':sha256(block),'local_3_7_cubic_header':block.read_text().splitlines()[:2],
       'local_cubic_blocks_replayed_this_run':False,'A9_finite_replayed_this_run':False,'Lean':'NOT_RUN'}
 return records,meta,primary,fc,tc

def selected_polynomials(duals):
 unique={tuple(p['coefficients']):p for d in duals['certificates'] for p in d['polynomials']}
 return list(unique.values())

def prime_blocks(m):
 ans=[];x=m;p=2
 while p*p<=x:
  if x%p==0:
   q=1;e=0
   while x%p==0:x//=p;q*=p;e+=1
   if p>=11:ans.append((p,q,e))
  p+=1
 if x>=11:ans.append((x,x,1))
 return ans

def stress_divisibility(polys,nmax=320):
 """Finite diagnostic for the GENERAL avoided-part lemma, not an E9 proof."""
 cases=checks=blocks_used=higher=0;max_exp=0
 index={(r,b,c):k for k,(r,b,c) in enumerate(CELLS)}
 for n in range(20,nmax+1):
  factors=[(r,p,q,e) for r in range(9) for p,q,e in prime_blocks(n-r)]
  Cnj=comb(n,10)
  for j in range(10,n//2+1):
   avoided=[]
   for r,p,q,e in factors:
    if Cnj%p:
     b=j%q;c=(n-j)%q
     need(b+c==r,'full p^e carry-free residue, not only modulo p')
     avoided.append((q,index[r,b,c]));blocks_used+=1;max_exp=max(max_exp,e)
     if e>1:higher+=1
   for poly in polys:
    value=peval(poly['coefficients'],j,n-j)
    divisor=prod(q**poly['multiplicities'][k] for q,k in avoided)
    need(value!=0 and value%divisor==0,'integer polynomial full-power divisibility stress')
    checks+=1
   cases+=1
   if j<n//2:Cnj=Cnj*(n-j)//(j+1)
 need(higher>0 and max_exp>=2,'stress includes genuine powers, not only squarefree products')
 return {'status':'PASS_FINITE_DIAGNOSTIC_NOT_INFINITE_PROOF','n_interval':[20,nmax],'legal_pairs':cases,
         'polynomial_divisibility_checks':checks,'avoided_complete_blocks':blocks_used,
         'blocks_with_exponent_above_one':higher,'maximum_exponent':max_exp}

def check_relaxation(witnesses,cuts,full=True):
 need(witnesses['not_integer_counterexamples'] is True,'relaxation is not an integer counterexample')
 lines=read('all_lines_probe.json')['lines'];conics=read('conics_probe.json')['polynomials'];cubics=read('cubics_probe.json')['polynomials']
 need(len(lines)==witnesses['line_count']==459 and len(conics)==witnesses['conic_count']==12732 and len(cubics)==witnesses['cubic_count']==970,'fixed model scope')
 constraints=[]
 for a,b,c,ids in lines:
  need(ids==[k for k,(r,s,t) in enumerate(CELLS) if a*r+b*s==c],'line support')
  constraints.append(([(k,1) for k in ids],1))
 for qrow in conics:
  q=qrow[:6];ids=qrow[-1]
  if full:
   need(ids==[k for k,(r,b,c) in enumerate(CELLS) if peval(q,b,c)==0],'conic zero support')
   sh=shifted(q);need(all(v>=0 for v in sh.values()) and any(sh.values()),'recorded conic positivity')
  constraints.append(([(k,1) for k in ids],2))
 for qrow in cubics:
  q=qrow[:10];mask=qrow[-1]
  if full:
   need(mask==[multiplicity(q,b,c) for r,b,c in CELLS],'cubic full multiplicity support')
   sh=shifted(q);need(all(v>=0 for v in sh.values()) and any(sh.values()),'recorded cubic positivity')
  constraints.append(([(k,w) for k,w in enumerate(mask) if w],3))
 need({tuple(v['positions']) for v in witnesses['witnesses']}=={(1,2),(2,1),(1,3),(3,1)},'all four remaining position models')
 rec=[]
 for w in witnesses['witnesses']:
  r,s=w['positions'];x={int(k):F(v) for k,v in w['cofactor_exponents'].items()}
  need(x=={2:F(3,5),3:F(7,100),5:F(2,5),7:F(7,100)},'specified exact exponents')
  need(sum(1-v for v in x.values())>=F(27,10) and (1-x[2])+(1-x[5])<=1,'scalar and collision mass')
  for c in cuts:need(x[c['p']]>=F(c['wp'],10000) or x[c['q']]>=F(c['wq'],10000),'cut feasibility')
  values=list(map(F,w['cell_masses']));need(len(values)==45 and all(v>=0 for v in values),'nonnegative cell masses')
  totals=[sum(v for v,(a,b,c) in zip(values,CELLS) if a==rr) for rr in range(9)]
  target=[F(1)]*9;target[0]=F(0);target[r]=target[s]=F(7,100)
  need(totals==target,'exact model row equations')
  need(list(map(F,w['small_mass_by_row']))==[1-v for v in target],'small mass placement')
  for support,bound in constraints:need(sum(m*values[k] for k,m in support)<=bound,'finite curve-model capacity')
  rec.append({'positions':[r,s],'constraint_checks':len(constraints),'nonzero_cells':sum(v>0 for v in values)})
 return {'status':'PASS_EXACT_FINITE_MODEL_WITNESSES_NOT_INTEGER_COUNTEREXAMPLES','lines':len(lines),'conics':len(conics),'cubics':len(cubics),'witnesses':rec,
         'not_a_universal_limitation_on_polynomial_methods':True}

def negative_tests(dual,cutdata,coverage,primary,fc,tc,witnesses):
 rec=[]
 def reject(name,fn):
  try:fn()
  except (Rejected,AssertionError,ValueError,KeyError,IndexError) as err:
   rec.append({'mutation':name,'result':'REJECTED','exception':type(err).__name__});return
  raise Rejected('corrupt certificate accepted: '+name)
 d=copy.deepcopy(dual['certificates'][0]);d['polynomials'][0]['coefficients'][0]+=1
 reject('polynomial-coefficient-with-stale-support',lambda:check_dual(d))
 d2=copy.deepcopy(dual['certificates'][0]);d2['polynomials'][0]['multiplicities'][0]=0
 reject('dropped-complete-cell',lambda:check_dual(d2))
 d3=copy.deepcopy(dual['certificates'][0]);d3['polynomials'][-1]['degree']=1
 reject('understated-polynomial-degree',lambda:check_dual(d3))
 d4=copy.deepcopy(dual['certificates'][0]);d4['polynomials'][0]['mu']='1'
 reject('wrong-dual-sign',lambda:check_dual(d4))
 d5=copy.deepcopy(dual['certificates'][0]);d5['lambda'][0]='100'
 reject('invalid-column-cover',lambda:check_dual(d5))
 d6=copy.deepcopy(dual['certificates'][0]);d6['nu'][0]='-1'
 reject('nonexistent-upper-bound-on-prime-mass',lambda:check_dual(d6))
 d7=copy.deepcopy(dual['certificates'][0]);d7['constant_bits']='1'
 reject('understated-constant',lambda:check_dual(d7))
 d8=copy.deepcopy(dual['certificates'][0]);d8['gamma']='0'
 reject('overstated-exponent-strength',lambda:check_dual(d8))
 d9=copy.deepcopy(dual['certificates'][0]);d9['positions']=[1,3]
 reject('unsupported-position-exclusion',lambda:check_dual(d9))
 c=copy.deepcopy(cutdata);c['product_lambda']='1/5'
 reject('overstated-product-disjunction',lambda:check_products(c))
 c2=copy.deepcopy(cutdata['cuts'][0]);c2['wp']=9900
 reject('unproved-stronger-pade-cut',lambda:primary.obligations(c2,19000000,13))
 c3=copy.deepcopy(cutdata['cuts'][0]);c3['m0']=0
 reject('wrong-content-threshold',lambda:primary.obligations(c3,19000000,13))
 ff=copy.deepcopy(fc);ff['deltas']=[0]
 reject('missing-second-delta',lambda:family_check(ff,tc,cutdata['cuts'][0]))
 tt=copy.deepcopy(tc);tt['rows'].pop()
 reject('missing-frozen-tail-term',lambda:family_check(fc,tt,cutdata['cuts'][0]))
 cc=copy.deepcopy(coverage);cc['remaining_positions'].pop()
 reject('lost-unresolved-position',lambda:check_coverage(cc))
 cc2=copy.deepcopy(coverage);cc2['global_i9_closed']=True
 reject('false-global-closure-flag',lambda:check_coverage(cc2))
 w=copy.deepcopy(witnesses);w['not_integer_counterexamples']=False
 reject('relaxation-mislabeled-as-counterexample',lambda:check_relaxation(w,cutdata['cuts'],False))
 return {'status':'PASS_SEMANTIC_MUTATION_REJECTION','count':len(rec),'cases':rec}

def main(outdir):
 start=time.monotonic();outdir=Path(outdir);outdir.mkdir(parents=True,exist_ok=True)
 baseline,sources=restore()
 dual=read('quadratic_dual_certificates.json');cutdata=read('cut_inputs.json');coverage=read('position_coverage.json')
 ds=check_duals(dual);branches=check_products(cutdata);cov=check_coverage(coverage)
 nums,deps,primary,fc,tc=check_numerics(sources,cutdata)
 polys=selected_polynomials(dual)
 stress=stress_divisibility(polys)
 oldcuts=json.loads((baseline/'evidence/selected_cuts.json').read_text())['cuts']
 older=json.loads((sources['effective']/'input/cuts.json').read_text())['cuts']
 allcuts=cutdata['cuts']+oldcuts+[c for c in older if c['p'] in (2,3,5,7) and c['q'] in (2,3,5,7)]
 witnesses=read('relaxation_witnesses.json');relax=check_relaxation(witnesses,allcuts)
 neg=negative_tests(dual,cutdata,coverage,primary,fc,tc,witnesses)
 write(outdir/'dual_and_coverage.json',{'duals':ds,'product_branches':branches,'coverage':cov})
 write(outdir/'cut_numerics.json',{'status':'PASS_TWO_EXACT_IMPLEMENTATIONS','rows':nums,'strict_margins':20})
 write(outdir/'frozen_dependencies.json',deps);write(outdir/'finite_diagnostics.json',stress)
 write(outdir/'relaxation_model.json',relax);write(outdir/'negative_tests.json',neg)
 summary={'status':'PASS_NEW_QUADRATIC_POSITION_CONSUMERS','run_id':'A-58-Q2-20260913','base_dual_certificates':2,
          'ordered_position_consumers':4,'exact_dual_column_checks':192,'distinct_selected_polynomials':len(polys),
          'selected_quadratics':sum(p['degree']==2 for p in polys),'selected_linear_forms':sum(p['degree']==1 for p in polys),
          'cut_rows':2,'exact_numeric_implementations':2,'strict_cut_margins':20,'product_disjunction_branches':4,
          'new_content_blocks_computed':0,'frozen_additional_content_blocks_adopted':70539,'frozen_additional_tail_terms_adopted':283,
          'finite_diagnostic_pairs':stress['legal_pairs'],'finite_polynomial_divisibility_diagnostics':stress['polynomial_divisibility_checks'],
          'exact_residual_model_witnesses':4,'semantic_mutations_rejected':neg['count'],
          'family_total':58,'double_positions_remaining':4,'m3_positions_remaining':1,'a_b_absolute_bound':'NOT_OBTAINED',
          'R7':[3,4,5,6,7,8,9],'i9_global_closure':False,'old_large_blocks_replayed':False,'old_i9_finite_replayed':False,
          'Lean':'NOT_RUN','external_independent_whole_proof_review':'NOT_DONE','seconds':round(time.monotonic()-start,6),
          'python':sys.version.split()[0],'platform':platform.platform()}
 write(outdir/'acceptance.json',summary)
 print(json.dumps(summary,ensure_ascii=False,indent=2))
 return summary
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'verification-runs/current'))
 args=ap.parse_args();main(args.out)
