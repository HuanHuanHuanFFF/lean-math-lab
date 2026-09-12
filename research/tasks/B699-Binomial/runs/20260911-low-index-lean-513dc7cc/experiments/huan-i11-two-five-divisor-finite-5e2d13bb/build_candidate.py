# Build only this fixed four-track candidate; no Lean invocation.
from pathlib import Path
from fractions import Fraction as F
from math import factorial,comb,gcd
from functools import reduce
from datetime import datetime,timezone
import json,hashlib
HERE=Path(__file__).resolve().parent
RUN=HERE.parents[1]
PLAN=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
FIXED=json.loads((PLAN/'FINAL_PLAN.json').read_text(encoding='utf-8'))['selected_plan']['rows'][0]
ROUGH=json.loads((PLAN/'D-rough-step-certificates.json').read_text(encoding='utf-8'))['tracks']
LT=F(FIXED['L_target']);LM=F(FIXED['L_mid']);RI=F(9**9,8**8*4);MID=LM**8
NS='Math.B699.I11DivisorTwoFive'
IMPORT='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-two-five-divisor-finite-5e2d13bb»'
TRACKS=[
 dict(ctor='evenZero',slug='even_zero',delta=0,rho=0,kmin=1,K=16,T=9,u=(8,0),v=(2,-1),f=(1,-1),n=(9,-1),initial=1),
 dict(ctor='evenOne',slug='even_one',delta=1,rho=0,kmin=1,K=1,T=1,u=(8,-1),v=(2,0),f=(1,0),n=(9,-1),initial=4),
 dict(ctor='oddZero',slug='odd_zero',delta=0,rho=1,kmin=0,K=0,T=2,u=(8,4),v=(2,0),f=(1,0),n=(9,4),initial=1),
 dict(ctor='oddOne',slug='odd_one',delta=1,rho=1,kmin=0,K=15,T=10,u=(8,3),v=(2,1),f=(1,0),n=(9,3),initial=1)]

def mul(a,b):
 c=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return c

def product(fs):
 a=[1]
 for f in fs:a=mul(a,f)
 return a

def sub(a,b):
 c=[(a[i] if i<len(a) else 0)-(b[i] if i<len(b) else 0) for i in range(max(len(a),len(b)))]
 while len(c)>1 and c[-1]==0:c.pop()
 return c

def scale(a,c):return [x*c for x in a]
def shift(a,k):return [sum(a[j]*comb(j,i)*k**(j-i) for j in range(i,len(a))) for i in range(len(a))]
def actualD(u,v):
 f=v//2
 return F(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
def dval(t,k):return actualD(t['u'][0]*k+t['u'][1],t['v'][0]*k+t['v'][1])
def evalpoly(a,k):return sum(x*k**i for i,x in enumerate(a))
def horner(a):
 s=str(a[-1])
 for c in reversed(a[:-1]):s=f'{c} + x * ({s})'
 return s

def affine(pair,k='k'):
 a,b=pair
 core=k if a==1 else f'{a} * {k}'
 if b>0:return core+f' + {b}'
 if b<0:return core+f' - {-b}'
 return core

def factors_expr(fs):return ' * '.join('('+affine((a,b),'x')+')' for b,a in fs)

checks=[]
for t in TRACKS:
 old=next(x for x in ROUGH if (x['c'],x['d'],x['delta'],x['rho'])==(5,4,t['delta'],t['rho']))
 mid=next(x for x in FIXED['D_tracks'] if (x['delta'],x['rho'])==(t['delta'],t['rho']))
 assert (old['k_min'],mid['K_constant_step'],mid['power_T'],mid['block_B'])==(t['kmin'],t['K'],t['T'],5)
 nf=[[t['n'][1]+i,t['n'][0]] for i in range(1,10)]+[[t['f'][1]+1,1]]
 df=[[t['u'][1]+i,8] for i in range(1,9)]+[[t['v'][1]+i,2] for i in range(1,3)]
 assert nf==old['numerator_factors'] and df==old['denominator_factors']
 N,D=product(nf),product(df)
 assert N==list(map(int,old['N_coefficients'])) and D==list(map(int,old['T_coefficients']))
 rp=shift(sub(scale(mul(N,[4,4,1]),RI.denominator),scale(mul(D,[1,2,1]),RI.numerator)),t['kmin'])
 mp=shift(sub(scale(N,MID.denominator),scale(D,MID.numerator)),t['K'])
 rc=old['rough_certificate'];mc=mid['constant_step_certificate']
 assert rp==[int(rc['content'])*int(c) for c in rc['primitive_coefficients_ascending']]
 assert mp==[int(mc['content'])*int(c) for c in mc['primitive_coefficients_ascending']]
 assert min(rp)>=0 and min(mp)>=0
 assert dval(t,t['kmin'])==t['initial']==F(old['D_initial'])
 for k in range(t['kmin'],t['kmin']+15):
  m=2*k+t['rho'];u=4*m-t['delta'];v=m+t['delta']-1
  assert dval(t,k)==actualD(u,v)
  assert dval(t,k+1)==dval(t,k)*F(evalpoly(N,k),evalpoly(D,k))
  assert RI*F((k+1)**2,(k+2)**2)<=F(evalpoly(N,k),evalpoly(D,k))
 for k in [t['K'],t['K']+1,t['K']+10]:
  assert MID<=F(evalpoly(N,k),evalpoly(D,k))
 norm0=dval(t,t['kmin'])/(LT**(4*t['rho'])*(LT**8)**t['kmin'])
 base=norm0*F((t['kmin']+1)**2,(t['K']+1)**2)
 assert base*2**t['T']>=1
 assert t['K']+5*(t['T']+1)==(mid['threshold_m']-t['rho'])//2
 t.update(nf=nf,df=df,rough=rc,middle=mc)
 checks.append({'track':t['ctor'],'delta':t['delta'],'rho':t['rho'],'initial_k':t['kmin'],'initial_D':t['initial'],'rough_degree':len(rp)-1,'middle_degree':len(mp)-1,'polynomials_match_frozen_exactly':True,'K':t['K'],'T':t['T'],'B':5,'threshold_k':t['K']+5*(t['T']+1),'threshold_m':mid['threshold_m'],'normalized_base_lower':str(base),'base_times_2powT':str(base*2**t['T'])})
assert LT**8<=RI and MID/(LT**8)>=1 and 1+5*(MID/(LT**8)-1)>=2
boundary=[]
for m in [141,142]:
 for delta in [0,1]:
  u,v=4*m-delta,m+delta-1
  value=actualD(u,v)
  content=reduce(gcd,(comb(2*u-h,u)*comb(v+h,h) for h in range(u+1)))
  assert value>LT**(4*m)
  assert F(content)/value>=1 and (F(content)/value).denominator==1
  boundary.append({'m':m,'delta':delta,'actual_divisor_gt_target':True,'actual_qContent_div_divisor_positive_integer':True,'content_bits':content.bit_length(),'divisor_numerator_bits':value.numerator.bit_length()})
(HERE/'independent-check.json').write_text(json.dumps({'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS_INDEPENDENT_EXACT_INTEGER_CHECKS_NOT_LEAN','tracks':checks,'boundary_diagnostics':boundary,'samples_per_track':15,'source_programs_executed':False,'worker_lean_invocations':0,'threshold_optimized':False},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')

a='''import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.RationalDivisor.Content
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Factorial.FactorialCommon
import Mathlib.Algebra.Order.Field.Rat

/-! UNCOMPILED. Four actual c5d4 divisor tracks, each step advances m by 2. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace '''+NS+'''
open Math.B699.RationalFactorialDivisor Math.B699.ElementaryFactorialBound

inductive Track
  | evenZero | evenOne | oddZero | oddOne
  deriving DecidableEq, Repr

'''
for name,key,ty in [('rho','rho','ℕ'),('delta','delta','ℕ'),('kMin','kmin','ℕ'),('cutoff','K','ℕ'),('loss','T','ℕ'),('initialValue','initial','ℚ')]:
 a+=f'def {name} : Track → {ty}\n'+''.join(f"  | .{t['ctor']} => {t[key]}\n" for t in TRACKS)+'\n'
a+='def divisor : Track → ℕ → ℚ\n'+''.join(f"  | .{t['ctor']}, k => rationalDivisor ({affine(t['u'])}) ({affine(t['v'])})\n" for t in TRACKS)+'\n'
for name,key in [('numerator','nf'),('denominator','df')]:
 a+=f'def {name} : Track → ℚ → ℚ\n'+''.join(f"  | .{t['ctor']}, x => {factors_expr(t[key])}\n" for t in TRACKS)+'\n'
a+='''def ratio (t : Track) (x : ℚ) : ℚ := numerator t x / denominator t x
def targetBase : ℚ := 602791 / 500000
def middleBase : ℚ := 1235039 / 1000000
def targetRate : ℚ := targetBase ^ 8
def middleRate : ℚ := middleBase ^ 8
def infiniteRate : ℚ := 387420489 / 67108864
def blockRatio : ℚ := middleRate / targetRate

theorem target_base_pos : 0 < targetBase := by norm_num [targetBase]
theorem target_rate_pos : 0 < targetRate := by norm_num [targetRate, targetBase]
theorem middle_rate_pos : 0 < middleRate := by norm_num [middleRate, middleBase]
theorem target_rate_le_infinite : targetRate ≤ infiniteRate := by
  norm_num [targetRate, targetBase, infiniteRate]
theorem block_ratio_ge_one : 1 ≤ blockRatio := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem block_linear_bound : (2 : ℚ) ≤ 1 + 5 * (blockRatio - 1) := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem cutoff_ge_kMin (t : Track) : kMin t ≤ cutoff t := by cases t <;> decide

theorem divisor_pos (t : Track) (k : ℕ) : 0 < divisor t k := by
  cases t <;> exact rationalDivisor_pos _ _

theorem denominator_pos (t : Track) (x : ℚ) (hx : (kMin t : ℚ) ≤ x) :
    0 < denominator t x := by
  cases t <;> simp only [kMin, Nat.cast_zero, Nat.cast_one] at hx
  · have hpos : 0 < x := by linarith
    unfold denominator
    positivity
  · have hpos : 0 < x := by linarith
    unfold denominator
    positivity
  · unfold denominator
    positivity
  · unfold denominator
    positivity

theorem divisor_eq_actual (t : Track) (k : ℕ) :
    divisor t k = rationalDivisor (4 * (2 * k + rho t) - delta t)
      (2 * k + rho t + delta t - 1) := by
  cases t <;> dsimp only [divisor, rho, delta] <;> congr 1 <;> omega

'''
for t in TRACKS:
 ctor,slug=t['ctor'],t['slug']
 u,v,f,n=[affine(t[k]) for k in ['u','v','f','n']]
 a+=f'''theorem divisor_{slug}_formula (k : ℕ) (hk : {t['kmin']} ≤ k) :
    divisor .{ctor} k =
      ((({n}).factorial : ℕ) : ℚ) * ((({f}).factorial : ℕ) : ℚ) /
        (((({u}).factorial : ℕ) : ℚ) * ((({v}).factorial : ℕ) : ℚ)) := by
  have hf : ({v}) / 2 = {f} := by omega
  have hn : ({u}) + ({f}) = {n} := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

'''
a+='''theorem divisor_initial (t : Track) : divisor t (kMin t) = initialValue t := by
  cases t <;> norm_num [divisor, kMin, initialValue, rationalDivisor,
    factorialNumerator, factorialDenominator, Nat.factorial]

'''
for t in TRACKS:
 ctor,slug=t['ctor'],t['slug'];even=t['rho']==0
 old='(k + 1)' if even else 'k';new='(k + 2)' if even else '(k + 1)'
 name=f'divisor_{slug}_step_succ' if even else f'divisor_{slug}_step'
 rx='((k : ℚ) + 1)' if even else '(k : ℚ)'
 a+=f'''theorem {name} (k : ℕ) :
    divisor .{ctor} {new} = divisor .{ctor} {old} * ratio .{ctor} {rx} := by
  rw [divisor_{slug}_formula {new} (by omega), divisor_{slug}_formula {old} (by omega)]
'''
 aux=[]
 for fld,label,step in [('n','hn',9),('f','hf',1),('u','hu',8),('v','hv',2)]:
  a+=f'  have {label} : {affine(t[fld],new)} = ({affine(t[fld],old)}) + {step} := by omega\n'
 for fld,label in [('n','hn1'),('f','hf1'),('u','hu1'),('v','hv1')]:
  if t[fld][1]==-1:
   a+=f'  have {label} : ({affine(t[fld],old)}) + 1 = {affine((t[fld][0],0),old)} := by omega\n'
   aux.append(label)
 rws=['hn','hf','hu','hv']+[f'factorial_add_cast ({affine(t[fld],old)}) {step}' for fld,step in [('n',9),('f',1),('u',8),('v',2)]]+aux
 a+='  rw ['+',\n    '.join(rws)+']\n'
 a+='''  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

'''
a+='''theorem divisor_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    divisor t (k + 1) = divisor t k * ratio t (k : ℚ) := by
  cases t
  · obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := Nat.exists_eq_add_of_le' hk
    simpa only [Nat.cast_add, Nat.cast_one] using divisor_even_zero_step_succ j
  · obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := Nat.exists_eq_add_of_le' hk
    simpa only [Nat.cast_add, Nat.cast_one] using divisor_even_one_step_succ j
  · exact divisor_odd_zero_step k
  · exact divisor_odd_one_step k

end '''+NS+'\n'
(HERE/'Actual.lean').write_text(a,encoding='utf-8')

c=f'import {IMPORT}.Actual\n\n/-! UNCOMPILED. Exact polynomial identities matched to all four frozen tracks. -/\nnamespace {NS}\n\n'
for typ in ['rough','middle']:
 if typ=='rough':
  c+='''theorem rough_certificate (t : Track) (x : ℚ) (hx : 0 ≤ x) :
    387420489 * denominator t (x + (kMin t : ℚ)) * (x + (kMin t : ℚ) + 1) ^ 2 ≤
      67108864 * numerator t (x + (kMin t : ℚ)) * (x + (kMin t : ℚ) + 2) ^ 2 := by
  cases t <;> simp only [kMin, Nat.cast_zero, Nat.cast_one]
'''
 else:
  c+=f'''theorem middle_certificate (t : Track) (x : ℚ) (hx : 0 ≤ x) :
    {MID.numerator} * denominator t (x + (cutoff t : ℚ)) ≤
      {MID.denominator} * numerator t (x + (cutoff t : ℚ)) := by
  cases t <;> simp only [cutoff, Nat.cast_zero, Nat.cast_one, Nat.cast_ofNat]
'''
 for t in TRACKS:
  cert=t[typ];content=cert['content'];hor=horner(cert['primitive_coefficients_ascending'])
  c+=f'  · apply sub_nonneg.mp\n    calc\n      0 ≤ {content} * ({hor}) := by positivity\n'
  if typ=='rough':
   km=t['kmin'];ct=t['ctor']
   rhs=f'67108864 * numerator .{ct} (x + {km}) * (x + {km} + 2) ^ 2 -\n          387420489 * denominator .{ct} (x + {km}) * (x + {km} + 1) ^ 2'
  else:
   K=t['K'];ct=t['ctor']
   rhs=f'{MID.denominator} * numerator .{ct} (x + {K}) -\n          {MID.numerator} * denominator .{ct} (x + {K})'
  c+=f'      _ = {rhs} := by\n        unfold numerator denominator\n        ring\n'
 c+='\n'
c+='end '+NS+'\n'
(HERE/'Certificates.lean').write_text(c,encoding='utf-8')
print(json.dumps({'status':'actual_and_certificate_prefix_generated_uncompiled','tracks':len(TRACKS),'source_steps_per_track':15,'boundary_diagnostics':boundary,'files':{'Actual.lean':len(a.encode()),'Certificates.lean':len(c.encode())}},ensure_ascii=False))

# Shared ratio bounds: actual certificates and actual factorial step discharge all hypotheses.
b='''import __IMPORT__.Certificates

/-! UNCOMPILED. Bounds for the actual four factorial-ratio tracks. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__

theorem ratio_rough (t : Track) (x : ℚ) (hx : (kMin t : ℚ) ≤ x) :
    infiniteRate * ((x + 1) / (x + 2)) ^ 2 ≤ ratio t x := by
  have hden : 0 < denominator t x := denominator_pos t x hx
  have hx0 : 0 ≤ x := le_trans (Nat.cast_nonneg _) hx
  have hmp : x + 2 ≠ 0 := ne_of_gt (by linarith : 0 < x + 2)
  have hcert := rough_certificate t (x - (kMin t : ℚ)) (sub_nonneg.mpr hx)
  have hs : x - (kMin t : ℚ) + (kMin t : ℚ) = x := by ring
  simp only [hs] at hcert
  apply sub_nonneg.mp
  have hid : ratio t x - infiniteRate * ((x + 1) / (x + 2)) ^ 2 =
      (67108864 * numerator t x * (x + 2) ^ 2 -
        387420489 * denominator t x * (x + 1) ^ 2) /
      (67108864 * denominator t x * (x + 2) ^ 2) := by
    unfold ratio infiniteRate
    field_simp [ne_of_gt hden, hmp]
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

theorem divisor_rough_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    divisor t k * (infiniteRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤
      divisor t (k + 1) := by
  rw [divisor_step t k hk]
  exact mul_le_mul_of_nonneg_left
    (ratio_rough t (k : ℚ) (by exact_mod_cast hk)) (divisor_pos t k).le

theorem ratio_middle (t : Track) (x : ℚ) (hx : (cutoff t : ℚ) ≤ x) :
    middleRate ≤ ratio t x := by
  have hstart : (kMin t : ℚ) ≤ (cutoff t : ℚ) := by
    exact_mod_cast cutoff_ge_kMin t
  have hden : 0 < denominator t x := denominator_pos t x (hstart.trans hx)
  have hcert := middle_certificate t (x - (cutoff t : ℚ)) (sub_nonneg.mpr hx)
  have hs : x - (cutoff t : ℚ) + (cutoff t : ℚ) = x := by ring
  simp only [hs] at hcert
  have hmid : middleRate = (__MID_NUM__ : ℚ) / __MID_DEN__ := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratio]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  simpa only [mul_comm (numerator t x) (__MID_DEN__ : ℚ)] using hcert

theorem divisor_middle_step (t : Track) (k : ℕ) (hk : cutoff t ≤ k) :
    divisor t k * middleRate ≤ divisor t (k + 1) := by
  rw [divisor_step t k ((cutoff_ge_kMin t).trans hk)]
  exact mul_le_mul_of_nonneg_left
    (ratio_middle t (k : ℚ) (by exact_mod_cast hk)) (divisor_pos t k).le

end __NS__
'''
b=b.replace('__IMPORT__',IMPORT).replace('__NS__',NS).replace('__MID_NUM__',str(MID.numerator)).replace('__MID_DEN__',str(MID.denominator))
(HERE/'Bounds.lean').write_text(b,encoding='utf-8')

h='''import __IMPORT__.Bounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.ElementaryRate

/-!
UNCOMPILED. All four actual tracks feed the accepted sequence lemmas.
The final qContent statement has no G, divisor-step, asymptotic or height premise.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__
open Math.B699.ElementaryRate Math.B699.RationalFactorialDivisor
open Math.B699.PadeConstruction

def normalized (t : Track) (k : ℕ) : ℚ :=
  divisor t k / (targetBase ^ (4 * rho t) * targetRate ^ k)

theorem normalized_pos (t : Track) (k : ℕ) : 0 < normalized t k :=
  div_pos (divisor_pos t k)
    (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _))

theorem normalized_rough_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    normalized t k * (1 * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤
      normalized t (k + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right target_rate_le_infinite
    (sq_nonneg ((((k : ℚ) + 1) / ((k : ℚ) + 2))))
  have hstep : divisor t k *
      (targetRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤ divisor t (k + 1) :=
    (mul_le_mul_of_nonneg_left hcoef (divisor_pos t k).le).trans
      (divisor_rough_step t k hk)
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ k ≠ 0 := pow_ne_zero _ ht
  have hs : targetBase ^ (4 * rho t) ≠ 0 :=
    pow_ne_zero _ (ne_of_gt target_base_pos)
  have hd : (k : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (divisor t k * (targetRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2)) /
        (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) := by
      unfold normalized
      rw [pow_succ targetRate k]
      field_simp [ht, hp, hs, hd]
      <;> ring
    _ ≤ divisor t (k + 1) / (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) :=
      div_le_div_of_nonneg_right hstep
        (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _)).le
    _ = normalized t (k + 1) := rfl

theorem normalized_middle_step (t : Track) (k : ℕ) (hk : cutoff t ≤ k) :
    normalized t k * blockRatio ≤ normalized t (k + 1) := by
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ k ≠ 0 := pow_ne_zero _ ht
  have hs : targetBase ^ (4 * rho t) ≠ 0 :=
    pow_ne_zero _ (ne_of_gt target_base_pos)
  calc
    _ = (divisor t k * middleRate) /
        (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) := by
      unfold normalized blockRatio
      rw [pow_succ targetRate k]
      field_simp [ht, hp, hs]
      <;> ring
    _ ≤ divisor t (k + 1) / (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) :=
      div_le_div_of_nonneg_right (divisor_middle_step t k hk)
        (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _)).le
    _ = normalized t (k + 1) := rfl

/-- The only direct evaluations use the actual four small initial values. -/
theorem finite_binary_base (t : Track) :
    1 ≤ (normalized t (kMin t) * ((kMin t : ℚ) + 1) ^ 2 /
      ((cutoff t : ℚ) + 1) ^ 2) * (2 : ℚ) ^ loss t := by
  rw [normalized, divisor_initial]
  cases t <;> norm_num [initialValue, kMin, cutoff, loss, rho, targetRate, targetBase]

theorem normalized_binary_base (t : Track) :
    1 ≤ normalized t (cutoff t) * (2 : ℚ) ^ loss t := by
  have hstart := cutoff_ge_kMin t
  have hindex : kMin t + (cutoff t - kMin t) = cutoff t := by omega
  have h := lower_telescoping_from_step (F := normalized t) (R := 1) (k0 := kMin t)
    (by norm_num) (fun k hk => normalized_rough_step t k hk) (cutoff t - kMin t)
  have htel : normalized t (kMin t) * ((kMin t : ℚ) + 1) ^ 2 /
      ((cutoff t : ℚ) + 1) ^ 2 ≤ normalized t (cutoff t) := by
    simpa only [one_pow, mul_one, hindex] using h
  exact (finite_binary_base t).trans
    (mul_le_mul_of_nonneg_right htel (by positivity))

theorem normalized_gt_one (t : Track) (k : ℕ)
    (hk : cutoff t + 5 * (loss t + 1) ≤ k) : 1 < normalized t k := by
  have hn : 5 * (loss t + 1) ≤ k - cutoff t := by omega
  have h := strict_threshold_from_step (F := normalized t) (R := blockRatio)
    (K := cutoff t) (T := loss t) (B := 5) (n := k - cutoff t)
    block_ratio_ge_one (normalized_pos t (cutoff t)).le
    (fun j hj => normalized_middle_step t j hj)
    (normalized_binary_base t) block_linear_bound hn
  have hindex : cutoff t + (k - cutoff t) = k := by omega
  simpa only [hindex] using h

theorem divisor_lower (t : Track) (k : ℕ)
    (hk : cutoff t + 5 * (loss t + 1) ≤ k) :
    targetBase ^ (4 * (2 * k + rho t)) < divisor t k := by
  have h := normalized_gt_one t k hk
  change 1 < divisor t k / (targetBase ^ (4 * rho t) * targetRate ^ k) at h
  have hmul := (lt_div_iff₀
    (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _))).mp h
  have hden : targetBase ^ (4 * rho t) * targetRate ^ k =
      targetBase ^ (4 * (2 * k + rho t)) := by
    rw [targetRate, ← pow_mul, ← pow_add]
    congr 1
    ring
  simpa only [one_mul, hden] using hmul

theorem threshold_from_large_m (t : Track) (k : ℕ) (hm : 141 ≤ 2 * k + rho t) :
    cutoff t + 5 * (loss t + 1) ≤ k := by
  cases t <;> simp only [rho, cutoff, loss] at * <;> omega

/-- Both delta values and both parity classes are covered, including odd m=141. -/
theorem source_track (d m : ℕ) (hd : d = 0 ∨ d = 1) (hm : 1 ≤ m) :
    ∃ t : Track, ∃ k : ℕ, kMin t ≤ k ∧ d = delta t ∧ m = 2 * k + rho t := by
  have hmod : m % 2 = 0 ∨ m % 2 = 1 := by omega
  have hdiv := Nat.mod_add_div m 2
  rcases hd with rfl | rfl
  · rcases hmod with hz | ho
    · refine ⟨.evenZero, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
    · refine ⟨.oddZero, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
  · rcases hmod with hz | ho
    · refine ⟨.evenOne, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
    · refine ⟨.oddOne, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega

theorem rationalDivisor_two_five_lower (d m : ℕ)
    (hd : d = 0 ∨ d = 1) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) <
      rationalDivisor (4 * m - d) (m + d - 1) := by
  obtain ⟨t, k, _hk, hdrep, hmrep⟩ := source_track d m hd (by omega)
  have hlarge : 141 ≤ 2 * k + rho t := by omega
  have h := divisor_lower t k (threshold_from_large_m t k hlarge)
  rw [divisor_eq_actual] at h
  change targetBase ^ (4 * m) < rationalDivisor (4 * m - d) (m + d - 1)
  rw [hdrep, hmrep]
  exact h

/-- Actual finite-gcd qContent, with no G, recurrence, growth or height assumption. -/
theorem qContent_two_five_lower (d m : ℕ)
    (hd : d = 0 ∨ d = 1) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) <
      (qContent (4 * m - d) (m + d - 1) (4 * m - d) : ℚ) := by
  exact (rationalDivisor_two_five_lower d m hd hm).trans_le
    (rationalDivisor_le_qContent (4 * m - d) (m + d - 1))

theorem qContent_upper_row_lower (m : ℕ) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) < (qContent (4 * m) (m - 1) (4 * m) : ℚ) := by
  simpa only [Nat.sub_zero, Nat.add_zero] using
    qContent_two_five_lower 0 m (Or.inl rfl) hm

theorem qContent_adjacent_row_lower (m : ℕ) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) < (qContent (4 * m - 1) m (4 * m - 1) : ℚ) := by
  simpa only [Nat.add_sub_cancel] using
    qContent_two_five_lower 1 m (Or.inr rfl) hm

end __NS__
'''
h=h.replace('__IMPORT__',IMPORT).replace('__NS__',NS)
(HERE/'Threshold.lean').write_text(h,encoding='utf-8')
import re
module_files=['Actual.lean','Certificates.lean','Bounds.lean','Threshold.lean']
roots=[]
for name in module_files:
 text=(HERE/name).read_text(encoding='utf-8')
 assert not re.search(r'\b(sorry|admit)\b|^\s*axiom\s',text,re.M),name
 roots.extend(NS+'.'+n for n in re.findall(r'^theorem (\w+)',text,re.M))
definitions=[NS+'.'+x for x in ['divisor','normalized','rho','delta','kMin','cutoff','loss']]
audit=f'import {IMPORT}.Threshold\n\n'+'\n'.join('#print axioms '+x for x in roots+definitions)+'\n'
(HERE/'Audit.lean').write_text(audit,encoding='utf-8')
(HERE/'ActualAudit.lean').write_text(f'import {IMPORT}.Actual\n\n'+'\n'.join('#print axioms '+NS+'.'+n for n in re.findall(r'^theorem (\w+)',a,re.M))+'\n',encoding='utf-8')
(HERE/'expected-axioms.json').write_text(json.dumps({'allowed_axioms':['propext','Classical.choice','Quot.sound'],'candidate_public_theorems':roots,'expected_print_roots':roots+definitions,'status':'uncompiled candidates; no actual Lean audit'},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'complete_four_track_chain_generated_uncompiled','candidate_public_theorems':len(roots),'audit_roots':len(roots+definitions),'sources':[n for n in module_files]+['Audit.lean','ActualAudit.lean']},ensure_ascii=False))
