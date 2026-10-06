"""Full unchanged middle ranges with changed numeric/checker/aggregation workload.

No original artifact is overwritten. Every original encoded edge and height
row is retained; factorial equality and all node certificates remain kernel
proof obligations, with failed fuel returning false rather than assumed success.
"""
from pathlib import Path
import hashlib,json,math,re,sys
sys.set_int_max_str_digits(0)
here=Path(__file__).resolve().parent
repair=here.parent
repo=next(parent for parent in here.parents if (parent/'AGENTS.md').is_file())
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
fuel=(repair/'numeric/FueledCoprime.lean').read_text()
fuel=fuel[fuel.index('def fueledCoprime'):fuel.index('end Contribution.')]
F=str(math.factorial(4472))
prime='''def primorialPrimeCheck (B P p : Nat) : Bool :=
  if p<B then N3.trialPrimeCheck p
  else decide (2≤p ∧ p<B*B) && fueledCoprime 64 p P
theorem primorialPrimeCheck_sound {B P p : Nat}
    (hfactorial : P=Nat.factorial (B-1))
    (hcheck : primorialPrimeCheck B P p=true) : p.Prime := by
  by_cases hsmall : p<B
  · exact N3.trialPrimeCheck_sound (by simpa only [primorialPrimeCheck,if_pos hsmall] using hcheck)
  · have hc : (2≤p ∧ p<B*B) ∧ fueledCoprime 64 p P=true := by
      simpa only [primorialPrimeCheck,if_neg hsmall,Bool.and_eq_true,decide_eq_true_eq] using hcheck
    have hg : Nat.gcd p P=1 := fueledCoprime_sound hc.2
    refine Nat.prime_def_le_sqrt.mpr ⟨hc.1.1,?_⟩
    intro d hd hs hdiv
    have hsqrt : Nat.sqrt p<B := Nat.sqrt_lt.mpr hc.1.2
    have hdP : d ∣ P := by
      rw [hfactorial]
      exact Nat.dvd_factorial (by omega) (by omega)
    have hd1 : d ∣ 1 := by simpa only [hg] using Nat.dvd_gcd hdiv hdP
    have hle := Nat.le_of_dvd (by decide : 0<1) hd1
    omega
'''
group='''structure Group (gap : Nat) where
  lo : Nat
  hi : Nat
  chain : N6.PrimeChain gap lo hi
def groupCheck {gap : Nat} (p : Nat) : List (Group gap) → Bool
  | [] => true
  | g::gs => decide (p=g.lo) && groupCheck g.hi gs
def groupEnd {gap : Nat} (p : Nat) : List (Group gap) → Nat
  | [] => p
  | g::gs => groupEnd g.hi gs
theorem group_sound {gap p : Nat} {gs : List (Group gap)} (hp : p.Prime)
    (hc : groupCheck p gs=true) : N6.PrimeChain gap p (groupEnd p gs) := by
  induction gs generalizing p with
  | nil => exact .singleton hp
  | cons g gs ih =>
      have hb : p=g.lo ∧ groupCheck g.hi gs=true := by
        simpa only [groupCheck,Bool.and_eq_true,decide_eq_true_eq] using hc
      rcases hb with ⟨hpeq,htail⟩
      subst p
      exact g.chain.trans (ih (chain_last g.chain) htail)
'''
reports=[]
for identifier,gap,wide,lo,upper,stop in [('Middle185_322',184,False,185,322,20000093),('Middle323_999',322,True,323,999,2000003)]:
    original=repair/(identifier+'.lean')
    source=original.read_text(encoding='utf-8')
    old=source
    source=source.replace('namespace N5\n\ndef BasisComplete',fuel+'\nnamespace N5\n\ndef BasisComplete',1)
    assert 'def fueledCoprime' in source
    begin=source.index('def primorialPrimeCheck ')
    end=source.index('def primorialChainCheck ',begin)
    source=source[:begin]+prime+'\n'+source[end:]
    begin=source.index('theorem primorialChainCheck_sound ')
    end=source.index('def BasisCompleteOn ',begin)
    source=source[:begin]+'''theorem primorialChainCheck_sound {B P gap p : Nat} {qs : List Nat}
    (hfactorial : P=Nat.factorial (B-1)) (hcheck : primorialChainCheck B P gap p qs=true) :
    N6.PrimeChain gap p (N6.chainEnd p qs) := by
  induction qs generalizing p with
  | nil => exact .singleton (primorialPrimeCheck_sound hfactorial hcheck)
  | cons q qs ih =>
      simp only [primorialChainCheck,Bool.and_eq_true,decide_eq_true_eq] at hcheck
      exact .step (primorialPrimeCheck_sound hfactorial hcheck.1.1)
        hcheck.1.2.1 hcheck.1.2.2 (ih hcheck.2)

'''+source[end:]
    source=re.sub(r'^def P : Nat := \d+$','def P : Nat := '+F,source,flags=re.M)
    source=source.replace('theorem prodP : basis.prod = P := by decide +kernel','theorem factorialP : P=Nat.factorial 4472 := by decide +kernel')
    start=source.index('theorem basisComplete :')
    end=source.index('def gapsOne :',start)
    source=source[:start]+source[end:]
    source=source.replace('  lo : Nat\n  text : String\n  checked : N5.primorialChainCheck','  lo : Nat\n  hi : Nat\n  text : String\n  checked : N5.primorialChainCheck',1)
    start=source.index('def Segment.hi ')
    end=source.index('theorem chain_last ',start)
    source=source[:start]+'''  endpoint : N6.chainEnd lo (D wide lo text)=hi
theorem Segment.chain {gap : Nat} {wide : Bool} (s : Segment gap wide) :
    N6.PrimeChain gap s.lo s.hi := by
  have hc := N5.primorialChainCheck_sound factorialP s.checked
  rw [s.endpoint] at hc
  exact hc
'''+source[end:]
    data_start=source.index('def sg0 :')
    data_end=source.index('structure HeightRow where',data_start)
    old_data=source[data_start:data_end]
    blocks=re.findall(r'def (sg\d+) : List \(Segment \d+ (?:true|false)\) := \[\n(.*?)\]\n',old_data,re.S)
    groups=[]
    originals=[]
    expanded=[]
    previous=None
    for name,body in blocks:
        entries=[]
        first=None
        terminal=None
        for line in body.splitlines():
            match=re.fullmatch(r'⟨(\d+),("(?:[^"\\]|\\.)*"),by decide \+kernel⟩,?',line)
            assert match,line[:120]
            a=int(match[1]);text=json.loads(match[2]);b=a
            if previous is not None:assert a==previous
            step=2 if wide else 1
            assert len(text)%step==0
            for index in range(0,len(text),step):
                v=ord(text[index])-32+(94*(ord(text[index+1])-32) if wide else 0)
                b+=2*v-1 if b==2 else 2*v
            first=a if first is None else first
            terminal=b
            previous=b
            originals.append((a,match[2]))
            expanded.append((a,match[2]))
            entries.append('⟨'+str(a)+','+str(b)+','+match[2]+',by decide +kernel,by decide +kernel⟩')
        assert entries
        groups.append((name,first,terminal,len(entries)))
        groups_text='def '+name+' : Group '+str(gap)+' := ⟨'+str(first)+','+str(terminal)+',by\n  exact join_sound (ss:=([\n'+',\n'.join(entries)+'] : List (Segment '+str(gap)+' '+str(wide).lower()+'))) (by decide) (by decide +kernel)⟩\n'
        if name=='sg0':new_data=group+'\n'
        new_data+=groups_text
    assert groups[0][1]==2 and groups[-1][2]==stop
    assert len(originals)==(7292 if lo==185 else 687) and originals==expanded
    names=[item[0] for item in groups]
    new_data+='def groups : List (Group '+str(gap)+') := ['+','.join(names)+']\n'
    new_data+='theorem complete_chain : N6.PrimeChain '+str(gap)+' 2 '+str(stop)+' :=\n  group_sound (gs:=groups) (by decide) (by decide +kernel)\n\n'
    source=source[:data_start]+new_data+source[data_end:]
    start=source.index('def hr0 :')
    end=source.index('theorem heightChecked',start)
    old_heights=source[start:end]
    heights=[line.rstrip(',]') for line in old_heights.splitlines() if re.match(r'^⟨\d+,\d+,\d+,\d+,by rw',line)]
    assert [int(re.match(r'^⟨(\d+)',line)[1]) for line in heights]==list(range(lo,upper+1))
    new_heights='';hnames=[]
    for n,index in enumerate(range(0,len(heights),16)):
        name='hr'+str(n);hnames.append(name)
        new_heights+='def '+name+' : List HeightRow := [\n'+',\n'.join(heights[index:index+16])+']\n'
    new_heights+='def heightRows : List HeightRow := List.flatten ['+','.join(hnames)+']\n\n'
    source=source[:start]+new_heights+source[end:]
    path=here/(identifier+'.lean')
    path.write_text(source,encoding='utf-8',newline='\n')
    reports.append({'id':identifier,'oldSha256':sha(original),'sha256':sha(path),'bytes':path.stat().st_size,
        'originalSegmentsPreserved':len(originals),'originalEncodedStringsAndLoUnchanged':True,
        'groupCount':len(groups),'maxSegmentsPerGroup':max(item[3] for item in groups),'heightRowsPreserved':len(heights),
        'maxHeightsPerDeclaration':16,'newPrimeChecker':'4472factorial once+structuralfuel64 conditional soundness; exhaustedfalse',
        'explicitEndpointsVerifiedByKernel':False,'LeanCompiled':False,'proofAccepted':False})
(here/'SOURCE-FREEZE.json').write_text(json.dumps({'owner':'/root/b699_contribution_environment','scopeUnchanged':'185..322/323..999,alllegalNat n/j,actualPrime>=i/bothfullchoose/nooracle','records':reports,'await':'tinycarrier actual, then full fresh compile/kernel/literal/Std3'},indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps(reports))
