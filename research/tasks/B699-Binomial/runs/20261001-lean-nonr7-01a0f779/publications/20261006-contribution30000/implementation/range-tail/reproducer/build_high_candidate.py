from inventory import ROOT, OUT, ROOTS, closure
from slice_core import strip_comments
import re, json, hashlib, math, sys
sys.set_int_max_str_digits(0)

RUN=ROOT/'research/tasks/B699-Binomial/runs'
MIDDLE=RUN/'20260909-middle-index-cert-1a78f8cd/lean'
TAIL=RUN/'20261001-lean-nonr7-01a0f779'
orig_nodes={2}
source_entries=[]
for p in sorted((MIDDLE/'extension/primeChain/blocks').glob('*.lean')):
 text=p.read_text(encoding='utf-8-sig')
 for m in re.finditer(r'def tail\d+\s*:\s*List Nat\s*:=\s*\[([^\]]*)\]',text):
  orig_nodes.update(map(int,re.findall(r'\d+',m[1])))
 source_entries.append(p)
for p in closure(ROOTS['tail']):
 text=p.read_text(encoding='utf-8-sig')
 values=re.findall(r'(?:Nat\.)?Prime\s+(\d+)',text)
 if values:
  orig_nodes.update(map(int,values));source_entries.append(p)
orig_nodes=sorted(n for n in orig_nodes if 2<=n<=122879557)
assert orig_nodes[-1]==122879557

def select_chain(start,stop,ratio):
 vals=[p for p in orig_nodes if start<=p<=stop]
 assert vals[0]==start and vals[-1]==stop
 out=[start];pos=0
 while out[-1]!=stop:
  cap=4096*out[-1]//4095 if ratio else out[-1]+999
  while pos+1<len(vals) and vals[pos+1]<=cap:pos+=1
  assert vals[pos]>out[-1],(out[-1],cap)
  out.append(vals[pos])
 return out

seed=next(x for x in orig_nodes if x>=4096000)
low=select_chain(2,seed,False)
high=select_chain(seed,122879557,True)
core=(OUT/'tail-core.lean').read_text(encoding='utf-8')
head,body=core.split('namespace B699TailGap',1)
head=head.replace('import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus\n','')
head=head.replace('import Mathlib.Tactic.FunProp\n','')
head=head.replace('import Mathlib.Tactic.NormNum\n','')
head=head.replace('import Lean.Elab.Tactic.Omega\n','').replace('set_option maxRecDepth 20000','set_option maxRecDepth 65536')
body='namespace B699TailGap'+body
names=sorted(set(re.findall(r'\bB699[A-Za-z_0-9]*',body)))
mapping={name:'N'+str(i) for i,name in enumerate(names)}
def short(text):
 for a,b in mapping.items():text=re.sub(r'\b'+re.escape(a)+r'\b',b,text)
 return text
body=short(body).replace('open Real MeasureTheory Set','open Real Set')
body=re.sub(r'^attribute \[local instance\] Classical\.propDecidable\n','',body,flags=re.M)
parts=[head,'namespace Contribution.Range\n',body]
rows=(TAIL/'continuations/20261002-onehour/tail/RowsNumeric.lean').read_text(encoding='utf-8-sig')
row_values=[tuple(map(int,m)) for m in re.findall(r'⟨(\d+), (\d+), (\d+), (\d+)⟩',rows)][:36]
assert row_values[-1][1]==31572
row_def='def rows : List Row := [\n'+',\n'.join('  ⟨'+', '.join(map(str,r))+'⟩' for r in row_values)+']\n'
rows=strip_comments(rows)
rows=re.sub(r'import[^\n]*\n','',rows)
rows=re.sub(r'set_option[^\n]*\n','',rows)
rows=re.sub(r'def rows : List Row := \[.*?\]\n',row_def,rows,flags=re.S)
rows=rows.replace('131072','31573').replace('131071','31572').replace('= 115','= 36')
rows=re.sub(r'#(?:check|print)[^\n]*\n','',rows)
parts.append(rows)

sieve='''
def poolList : List Nat := [53,47,43,41,37,31,29,23,19,17,13,11,7,5,3,2]
def pool : Finset Nat := poolList.toFinset
theorem poolPrime : ∀ p ∈ pool, p.Prime := by decide
theorem poolCard : pool.card = 16 := by decide
theorem poolMax : ∀ p ∈ pool, p ≤ 53 := by decide
theorem poolNodup : poolList.Nodup := by decide
theorem piBound {b t : Nat} (hb : 53 ≤ b)
    (hc : B699ModernPrunedSieve.count poolList b + 15 ≤ (t : Int)) :
    Nat.primeCounting b ≤ t := by
  have hrec := B699ModernPrunedSieve.count_eq_floorSum poolList poolNodup b
  unfold B699ModernPrunedSieve.floorSum at hrec
  have hfloor := B699ModernSieve.survivors_card_floor_formula pool poolPrime b
  change B699ModernPrunedSieve.count poolList b =
    ∑ s ∈ pool.powerset, (-1 : Int) ^ s.card * (b / s.prod id : Nat) at hrec
  have heq : ((B699ModernSieve.survivors pool b).card : Int) =
      B699ModernPrunedSieve.count poolList b := hfloor.trans hrec.symm
  rw [← heq] at hc
  have hu := B699ModernSieve.primeCounting_sieve_upper
    (by decide : pool.Nonempty) poolPrime (fun p hp => (poolMax p hp).trans hb)
  rw [poolCard] at hu
  omega
'''
parts.append(short(sieve))
for a,b,k,t in row_values:
 parts.append(short(f'theorem s{b} : B699ModernPrunedSieve.count poolList {b} + 15 ≤ ({t} : Int) := by decide +kernel\n'))
parts.append('''
theorem rowPi : ∀ r ∈ B699ContinuationRows.rows, Nat.primeCounting r.b ≤ r.bound := by
  simp only [B699ContinuationRows.rows, List.forall_mem_cons, List.forall_mem_nil]
''')
terms=[f'piBound (by decide) s{b}' for a,b,k,t in row_values]
nest='True.intro'
for x in reversed(terms):nest='⟨'+x+','+nest+'⟩'
parts.append('  exact '+nest+'\n')
parts.append(short('''
theorem largeN {n i j : Nat} (hi : 1000 ≤ i) (hu : i ≤ 30000)
    (hij : i < j) (hjn : j ≤ n / 2) (hn : 4096 * i ≤ n) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  obtain ⟨r,hr,ha,hb⟩ := B699ContinuationRows.covers_1000_31572 hi (by omega)
  obtain ⟨_,_,hbk,hcert⟩ := B699ContinuationRows.all_rows_valid r hr
  exact B699ContinuationIC.row_common hi hij hjn ha hb hbk (by decide) (rowPi r hr) hcert hn
'''))
F=str(math.factorial(11085))
parts.append('def F : Nat := '+F+'\n')
parts.append('theorem F_eq : F = Nat.factorial 11085 := by decide +kernel\n')
trial=(RUN/'20260909-low-index-structure-b41a5a63/lean/TrialPrimeCheck.lean').read_text(encoding='utf-8-sig')
trial=strip_comments(trial)
trial=re.sub(r'^(?:import|set_option|#(?:print|check))[^\n]*\n','',trial,flags=re.M)
trial=re.sub(r'^namespace B699LowIndex\n|^end B699LowIndex\n','',trial,flags=re.M)
parts.append(trial)
parts.append('''
def primeCheck (p : Nat) : Bool :=
  if p < 11086 then trialPrimeCheck p
  else decide (2 ≤ p ∧ p < 11086*11086 ∧ Nat.gcd p F=1)
theorem primeCheck_sound {p : Nat} (hc : primeCheck p=true) : p.Prime := by
  by_cases hs : p < 11086
  · exact trialPrimeCheck_sound (by simpa only [primeCheck,if_pos hs] using hc)
  · have he : 2 ≤ p ∧ p < 11086*11086 ∧ Nat.gcd p F=1 :=
      of_decide_eq_true (by simpa only [primeCheck,if_neg hs] using hc)
    refine Nat.prime_def_le_sqrt.mpr ⟨he.1,?_⟩
    intro d hd hdle hdiv
    obtain ⟨q,hq,hqd⟩ := Nat.exists_prime_and_dvd (n:=d) (by omega)
    have hqle := Nat.le_of_dvd (show 0<d by omega) hqd
    have hB : Nat.sqrt p < 11086 := Nat.sqrt_lt.mpr he.2.1
    have hqF : q ∣ F := by
      rw [F_eq]
      exact hq.dvd_factorial.mpr (by omega)
    have hqg := Nat.dvd_gcd (hqd.trans hdiv) hqF
    exact hq.not_dvd_one (by simpa only [he.2.2] using hqg)
''')
parts.append('''

inductive Chain (R : Nat → Nat → Prop) : Nat → Nat → Prop where
  | one {p : Nat} (hp : p.Prime) : Chain R p p
  | cons {p q r : Nat} (hp : p.Prime) (hpq : p < q)
      (hr : R p q) (ht : Chain R q r) : Chain R p r
theorem Chain.trans {R : Nat → Nat → Prop} {lo mid hi : Nat}
    (hl : Chain R lo mid) (hr : Chain R mid hi) : Chain R lo hi := by
  revert hr
  induction hl with
  | one _ => intro hr; exact hr
  | cons hp hlt he _ ih => intro hr; exact .cons hp hlt he (ih hr)
def chainEnd (p : Nat) : List Nat → Nat
  | [] => p
  | q::qs => chainEnd q qs
def stepCheck (R : Nat → Nat → Prop) [DecidableRel R] (p : Nat) : List Nat → Bool
  | [] => true
  | q::qs => decide (p < q ∧ R p q) && stepCheck R q qs
theorem stepCheck_sound {R : Nat → Nat → Prop} [DecidableRel R] {p : Nat} {qs : List Nat}
    (hp : ∀ x ∈ p::qs, x.Prime) (hc : stepCheck R p qs = true) :
    Chain R p (chainEnd p qs) := by
  induction qs generalizing p with
  | nil => exact .one (hp p (by simp))
  | cons q qs ih =>
      have hboth : (p < q ∧ R p q) ∧ stepCheck R q qs = true := by
        simpa only [stepCheck, Bool.and_eq_true, decide_eq_true_eq] using hc
      have hs := hboth.1
      have ht := hboth.2
      exact .cons (hp p (by simp)) hs.1 hs.2
        (ih (fun x hx => hp x (List.mem_cons_of_mem p hx)) ht)
def addEdge (p q : Nat) : Prop := q ≤ p + 999
instance : DecidableRel addEdge := fun p q => inferInstanceAs (Decidable (q ≤ p + 999))
def ratioEdge (p q : Nat) : Prop := 4095 * q ≤ 4096 * p
instance : DecidableRel ratioEdge := fun p q => inferInstanceAs (Decidable (4095 * q ≤ 4096 * p))
theorem Chain.nearAdd {lo hi : Nat} (hc : Chain addEdge lo hi)
    {n : Nat} (hn : lo ≤ n) (hu : n < hi) :
    ∃ p : Nat, p.Prime ∧ p ≤ n ∧ n < p + 999 := by
  induction hc generalizing n with
  | one _ => omega
  | @cons p q r hp hpq he ht ih =>
      by_cases hnq : n < q
      · exact ⟨p,hp,hn,by change q ≤ p+999 at he; omega⟩
      · exact ih (by omega) hu
theorem Chain.nearRatio {lo hi : Nat} (hc : Chain ratioEdge lo hi)
    {n : Nat} (hn : lo ≤ n) (hu : n < hi) :
    ∃ p : Nat, p.Prime ∧ p ≤ n ∧ 4095 * n < 4096 * p := by
  induction hc generalizing n with
  | one _ => omega
  | @cons p q r hp hpq he ht ih =>
      by_cases hnq : n < q
      · exact ⟨p,hp,hn,by change 4095*q ≤ 4096*p at he; omega⟩
      · exact ih (by omega) hu
theorem Chain.lastPrime {R : Nat → Nat → Prop} {lo hi : Nat} (hc : Chain R lo hi) : hi.Prime := by
  induction hc with
  | one hp => exact hp
  | cons _ _ _ _ ih => exact ih
structure Part (R : Nat → Nat → Prop) [DecidableRel R] where
  lo : Nat
  qs : List Nat
  primesChecked : (lo::qs).all primeCheck=true
  checked : stepCheck R lo qs=true
def Part.hi {R : Nat → Nat → Prop} [DecidableRel R] (s : Part R) := chainEnd s.lo s.qs
theorem Part.chain {R : Nat → Nat → Prop} [DecidableRel R] (s : Part R) :
    Chain R s.lo s.hi := stepCheck_sound
  (fun p hp => primeCheck_sound (List.all_eq_true.mp s.primesChecked p hp)) s.checked
def joinCheck {R : Nat → Nat → Prop} [DecidableRel R] (p : Nat) : List (Part R) → Bool
  | [] => true
  | s::ss => decide (p=s.lo) && joinCheck s.hi ss
def joinEnd {R : Nat → Nat → Prop} [DecidableRel R] (p : Nat) : List (Part R) → Nat
  | [] => p
  | s::ss => joinEnd s.hi ss
theorem join_sound {R : Nat → Nat → Prop} [DecidableRel R] {p : Nat} {ss : List (Part R)}
    (hp : p.Prime) (hc : joinCheck p ss=true) : Chain R p (joinEnd p ss) := by
  induction ss generalizing p with
  | nil => exact .one hp
  | cons s ss ih =>
      have hb : p=s.lo ∧ joinCheck s.hi ss=true := by
        simpa only [joinCheck,Bool.and_eq_true,decide_eq_true_eq] using hc
      subst p
      exact s.chain.trans (ih s.chain.lastPrime hb.2)
''')

def emit_chain(nodes,mode,prefix):
 rel='ratioEdge' if mode else 'addEdge'
 groups=[]
 for j,start in enumerate(range(0,len(nodes)-1,32*64)):
  name=prefix+'d'+str(j);groups.append(name);entries=[]
  for ix in range(start,min(start+32*64,len(nodes)-1),32):
   ns=nodes[ix:ix+33]
   entries.append('⟨'+str(ns[0])+',['+','.join(map(str,ns[1:]))+'],by decide +kernel,by decide +kernel⟩')
  parts.append(f'def {name} : List (Part {rel}) := [\n'+',\n'.join(entries)+']\n')
 dat=prefix+'parts'
 parts.append(f'def {dat} : List (Part {rel}) := List.flatten ['+','.join(groups)+']\n')
 parts.append(f'theorem {prefix}chain : Chain {rel} {nodes[0]} {nodes[-1]} :=\n'+
    f'  join_sound (ss:={dat}) (by decide) (by decide +kernel)\n')
emit_chain(low,False,'a')
emit_chain(high,True,'r')
parts.append(short(f'''
theorem common_1000_30000 {{n i j : Nat}} (hi : 1000 ≤ i) (hu : i ≤ 30000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hn : 4096 * i ≤ n
  · exact largeN hi hu hij hjn hn
  · by_cases hseed : n < {seed}
    · obtain ⟨p,hp,hpn,hnear⟩ := achain.nearAdd (n := n) (by omega) hseed
      exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn
    · by_cases hlast : n < 122879557
      · obtain ⟨p,hp,hpn,hnear⟩ := rchain.nearRatio (n := n) (by omega) hlast
        exact B699TailGap.common_of_top_prime hij hjn hp (by omega) hpn
      · exact B699TailGap.common_of_top_prime hij hjn rchain.lastPrime (by omega) (by omega)
theorem common_gcd_1000_30000 {{n i j : Nat}} (hi : 1000 ≤ i) (hu : i ≤ 30000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ (n.choose i).gcd (n.choose j) := by
  obtain ⟨p,hp,hpi,hd1,hd2⟩ := common_1000_30000 hi hu hij hjn
  exact ⟨p,hp,hpi,Nat.dvd_gcd hd1 hd2⟩
end Contribution.Range
#print axioms Contribution.Range.common_1000_30000
#print axioms Contribution.Range.common_gcd_1000_30000
'''))
candidate='\n'.join(parts)
candidate=re.sub(r'\n\s*\n(?:\s*\n)+','\n\n',candidate)
dest=OUT/'High1000_30000.lean'
dest.write_text(candidate,encoding='utf-8',newline='\n')
provenance={'sourceBaseline':'a5f7afff0766bf5fee2d72aa9e8ee6a5eb7bda99',
 'claim':'All Nat n i j: 1000 <= i <= 30000, i<j<=n/2 -> same actual prime p>=i divides both complete chooses',
 'candidateBytes':dest.stat().st_size,'candidateSHA256':hashlib.sha256(dest.read_bytes()).hexdigest(),
 'lowChain':{'start':low[0],'end':low[-1],'nodes':len(low),'maxGap':max(b-a for a,b in zip(low,low[1:]))},
 'ratioChain':{'start':high[0],'end':high[-1],'nodes':len(high),'allRatioEdgesHold':all(4095*b<=4096*a for a,b in zip(high,high[1:]))},
 'certificateTransform':'Greedy thinning of nodes from fixed source; proof-carrying list blocks32; standard kernel prime checker by trial below11086 and gcd with fixed11085! above; same sieve algorithm re-evaluated for first36 fixed IC rows; generic Chain soundness supplied',
 'primeChecker':{'bound':11086,'factorial':11085,'factorialDecimalDigits':len(F),'factorialLiteralVerified':False},
 'namespaceMapping':mapping,'primeNodeSources':[{'path':str(p.relative_to(ROOT)).replace('\\','/'),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in sorted(set(source_entries))],
 'status':'Uncompiled static candidate; source binding and numeric edge inspection do not establish primality, proof validity, or platform admissibility'}
(OUT/'HIGH-CANDIDATE.json').write_text(json.dumps(provenance,indent=2)+'\n',encoding='utf-8')
print('candidate',dest.stat().st_size,'low',len(low),'ratio',len(high),'seed',seed)
