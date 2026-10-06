"""Re-encode i11 CRT tables and terminal cover into pure Lean candidates.
This does not claim kernel acceptance. Original source files remain unchanged.
"""
from pathlib import Path
import collections, hashlib, json, pickle, re, math
from fractions import Fraction
from extract import REPO, OUT, LOW, ROOTS, TARGETS, Tree, strip_comments, ID, DECL

SCRATCH=REPO/'.tools/b699-contribution-implementation-20261006'
PAIRS=[(2,3),(2,5),(2,7),(3,5),(3,7),(5,7)]
META='B699LowIndex.I11CrtStageMetadata.'
GRID='Math.B699.CRTGrid.'
TERM='Math.B699.I11TerminalCRT.'

COMPACT = '''def compactCellData (P Q capA capC : ℕ) : CellData :=
  let v : ℤ := Nat.gcdA P Q % (Q : ℤ)
  { inverse := v.toNat
    bounds := fun d =>
      let z := (d * v) % (Q : ℤ)
      let rho := if z = 0 then (Q : ℤ) else z
      let c0 := ((P : ℤ) * rho - d) / (Q : ℤ)
      ⟨max 0 ((1 - c0 + (P : ℤ) - 1) / (P : ℤ)),
        min (((capA : ℤ) - rho) / (Q : ℤ)) (((capC : ℤ) - c0) / (P : ℤ))⟩ }
'''

FAST = '''def fastWitnessCheck : Witness → Bool
  | .special330 => true
  | .good g => match g.witness with
    | .topPrime p => decide (g.lower ≤ g.upper ∧ p ≤ g.lower ∧ g.upper < p + 11) && trialPrimeCheck p
    | .largeDivisor _ => witnessCheck (.good g)

theorem fastWitnessCheck_spec {w : Witness} (h : fastWitnessCheck w = true) :
    witnessCheck w = true := by
  cases w with
  | special330 => rfl
  | good g =>
    cases hw : g.witness with
    | largeDivisor D => simpa only [fastWitnessCheck, hw] using h
    | topPrime p =>
      have hc : decide (g.lower ≤ g.upper ∧ p ≤ g.lower ∧ g.upper < p + 11) && trialPrimeCheck p = true := by
        simpa only [fastWitnessCheck, hw] using h
      obtain ⟨hb, hp⟩ := Bool.and_eq_true_iff.mp hc
      obtain ⟨hlo, hplower, hupper⟩ := of_decide_eq_true hb
      simp only [witnessCheck, goodSegmentCheck, hw, decide_eq_true_eq]
      exact ⟨hlo, trialPrimeCheck_sound hp, hplower, hupper⟩

structure CoverBundle where
  interval : NatInterval
  witnesses : List Witness

def bundleCheck (b : CoverBundle) : Bool :=
  b.witnesses.all fastWitnessCheck &&
    coverCheck b.interval.1 b.interval.2 (witnessIntervals b.witnesses)

theorem bundleCheck_sound {b : CoverBundle} (h : bundleCheck b = true) :
    IntervalSound b.interval := by
  obtain ⟨hc, hcover⟩ := Bool.and_eq_true_iff.mp h
  have hws : witnessesCheck b.witnesses = true := by
    apply List.all_eq_true.mpr
    intro w hw
    exact fastWitnessCheck_spec (List.all_eq_true.mp hc w hw)
  intro n j hn hij hjn
  exact common_of_cover_checks hws hcover hn.1 hn.2 hij hjn
'''

def terminal_override(tree):
 module=LOW+'I11TerminalCandidateCoverage/Assembly.lean'
 ns='Math.B699.I11TerminalCandidateCoverage'
 opens=['B699LowIndex','B699LowIndex.I11TerminalCover','B699LargePrimeStructure','Math.B699.I11TerminalMembership']
 # Add each command independently so dependency extraction can see it.
 mini=Tree.__new__(Tree);mini.mods={module:{'text':'namespace '+ns+'\nopen '+' '.join(opens)+'\n'+FAST+'\nend '+ns,'imports':[]}};mini.order=[module];mini.decls={};mini.byname=collections.defaultdict(list)
 mini.parse(module)
 for old in mini.decls.values():
  add(tree,module,ns,old['name'],old['text'],opens,'before')
 def value(key):
  d=tree.decls[key];body=d['text'].split(':=',1)[1].strip()
  if body.startswith('.'):return [body]
  if body.startswith('['):
   result=[]
   for token in body[1:body.rfind(']')].split(','):
    result.extend(value(tree.resolve(token.strip(),d)))
   return result
  ref=tree.resolve(body,d)
  if ref is None:raise ValueError((key,body))
  return value(ref)
 bundles=[]
 for d in list(tree.decls.values()):
  if not (d['full'].startswith(ns+'.Groups.') or d['full'].startswith(ns+'.FirstParts.')):continue
  if d['kind']!='def' or not d['name'].endswith('witnesses'):continue
  suffix=d['name'][:-len('witnesses')]+'sound'
  full=d['namespace']+'.'+suffix
  sound=tree.decls[tree.byname[full][0]]['text']
  interval=re.search(r'IntervalSound\s*\((\d+),\s*(\d+)\)',sound)
  if not interval:raise ValueError((full,sound[:180]))
  lo,hi=map(int,interval.groups());ws=value(d['key'])
  bundles.append((lo,hi,ws,d['module']))
 bundles.sort(key=lambda x:x[:2])
 assert len(bundles)==1111,len(bundles)
 body='def compactBundles : List CoverBundle := [\n'+',\n'.join('  ⟨('+str(lo)+','+str(hi)+'),['+','.join(ws)+']⟩' for lo,hi,ws,_ in bundles)+'\n]\n'
 add(tree,module,ns,'compactBundles',body,opens,'before')
 add(tree,module,ns,'compactBundles_check','theorem compactBundles_check : compactBundles.all bundleCheck = true := by\n  decide +kernel\n',opens,'before')
 add(tree,module,ns,'compactIntervals','def compactIntervals : List NatInterval := compactBundles.map CoverBundle.interval\n',opens,'before')
 add(tree,module,ns,'compactIntervals_sound', '''theorem compactIntervals_sound : IntervalsSound compactIntervals := by
  intro I hI
  obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hI
  exact bundleCheck_sound (List.all_eq_true.mp compactBundles_check b hb)
''',opens,'before')
 add(tree,module,ns,'compactCandidates_cover', '''theorem compactCandidates_cover :
    originalCandidates.all (fun I => coverCheck I.1 I.2 compactIntervals) = true := by
  decide +kernel
''',opens,'before')
 override(tree,ns+'.common_of_original_candidates', '''theorem common_of_original_candidates {n j : ℕ}
    (hmem : candidateMem n originalCandidates) (hij : 11 < j) (hjn : j ≤ n / 2) :
    Common n 11 j := by
  obtain ⟨I, hI, hn⟩ := hmem
  exact interval_sound_of_interval_cover compactIntervals_sound
    (List.all_eq_true.mp compactCandidates_cover I hI) hn hij hjn
''')
 return {'bundles':len(bundles),'witnessOccurrences':sum(len(x[2]) for x in bundles),'dataSHA256':hashlib.sha256(body.encode()).hexdigest(),'sourceModules':sorted({x[3] for x in bundles})}

def add(tree, module, ns, name, body, opens, position='after'):
 key=module+':new:'+ns+'.'+name
 command=DECL.match(body.lstrip())
 if command is None or command.group(2)!=name:
  raise ValueError('synthetic declaration must preserve its actual kind/name: '+ns+'.'+name)
 d={'key':key,'module':module,'line':0,'name':name,'full':ns+'.'+name,'namespace':ns,'opens':opens,'variables':[],'attributes':[],'kind':command.group(1),'private':False,'text':body,'bytes':len(body.encode()),'position':position}
 tree.decls[key]=d;tree.byname[d['full']].append(key);tree.mods[module]['decls'].append(key)
 return key

def override(tree, full, body):
 keys=tree.byname.get(full,[])
 if len(keys)!=1:raise ValueError((full,keys))
 d=tree.decls[keys[0]];d['old_text']=d['text'];d['text']=body;d['bytes']=len(body.encode())
 return keys[0]

def crt_override(tree):
 module=LOW+'CrtGrid/Cell.lean'
 add(tree,module,'Math.B699.CRTGrid','compactCellData',COMPACT,[])
 details=[]
 for stage in range(4):
  for p,q in PAIRS:
   ns=f'Math.B699.CRTStage{stage}Pair{p}{q}.CompleteComposer'
   key=tree.byname[ns+'.globalData'][0];old=tree.decls[key]['text']
   body=f'''def globalData (a b : ℕ) : CellData :=
  {GRID}compactCellData ({p} ^ a) ({q} ^ b)
    (heightCap Stage0{stage}.H Stage0{stage}.M ({p} ^ a))
    (heightCap Stage0{stage}.H Stage0{stage}.M ({q} ^ b))
'''
   override(tree,ns+'.globalData',body)
   rectkey=tree.byname[ns+'.rectangle_check'][0];d=tree.decls[rectkey]
   signature=d['text'].split(':= by')[0]
   override(tree,ns+'.rectangle_check',signature+':= by\n  decide +kernel\n')
   details.append({'stage':stage,'pair':[p,q],'definition':ns+'.globalData','check':ns+'.rectangle_check','replacement':'gcdA/Euclidean-division formula + standard kernel check'})
 for p,q in PAIRS:
  ns=f'Math.B699.I11TerminalMembership.Pair{p}{q}'
  body=f'''def cells (a b : ℕ) : CellData :=
  {GRID}compactCellData ({p} ^ a) ({q} ^ b)
    (heightCap Stage04.H Stage04.M ({p} ^ a))
    (heightCap Stage04.H Stage04.M ({q} ^ b))
'''
  override(tree,ns+'.cells',body)
  d=tree.decls[tree.byname[ns+'.rectangle_check'][0]]
  signature=d['text'].split(':= by')[0]
  override(tree,ns+'.rectangle_check',signature+':= by\n  decide +kernel\n')
  details.append({'stage':4,'pair':[p,q],'definition':ns+'.cells','check':ns+'.rectangle_check','replacement':'same formula + terminal parameter interval cover kernel check'})
 return details

BERNSTEIN = '''noncomputable def bernsteinSum : List (ℕ × ℕ × ℚ) → ℚ[X]
  | [] => 0
  | (a, b, c) :: cs => Polynomial.C c * bernsteinMonomial a b + bernsteinSum cs

theorem bernsteinSum_cone {cs : List (ℕ × ℕ × ℚ)}
    (h : ∀ t ∈ cs, 0 ≤ t.2.2) : BernsteinCone (bernsteinSum cs) := by
  induction cs with
  | nil => exact BernsteinCone.zero
  | cons t cs ih =>
    exact BernsteinCone.add
      (BernsteinCone.scale t.2.2 (h t (by simp)) (BernsteinCone.basis t.1 t.2.1))
      (ih (by intro u hu; exact h u (by simp [hu])))
'''

def growth_override(tree):
 module=LOW+'Moment/Bernstein.lean';ns='Math.B699.PadeMoment'
 mini=Tree.__new__(Tree);mini.mods={module:{'text':'namespace '+ns+'\nopen Polynomial\n'+BERNSTEIN+'\nend '+ns,'imports':[]}};mini.order=[module];mini.decls={};mini.byname=collections.defaultdict(list)
 mini.parse(module)
 for d in mini.decls.values():add(tree,module,ns,d['name'],d['text'],['Polynomial'])
 leaves=[]
 for d in list(tree.decls.values()):
  if d['name']!='gapExpansion' or '/Growth/' not in d['module']:continue
  ns=d['namespace'];terms=re.findall(r'Polynomial.C (gapCoeff\d+) \* bernsteinMonomial (\d+) (\d+)',d['text'])
  if not terms:raise ValueError('unrecognized expansion '+ns)
  values=[]
  for name,a,b in terms:
   cd=tree.decls[tree.byname[ns+'.'+name][0]]
   raw=cd['text'].split(':=',1)[1].strip()
   cm=re.fullmatch(r'\((\d+) : ℚ\) / (\d+)',raw)
   if not cm:raise ValueError((cd['full'],raw[:160]))
   values.append((int(a),int(b),Fraction(int(cm[1]),int(cm[2]))))
  denominator=math.lcm(*(v.denominator for a,b,v in values))
  opens=d['opens'];mod=d['module']
  add(tree,mod,ns,'gapDen',f'def gapDen : ℚ := {denominator}\n',opens,'before')
  number_body='def gapNumbers : List (ℕ × ℕ × ℚ) := [\n'+',\n'.join(f'  ({a},{b},({v.numerator*(denominator//v.denominator)}:ℚ)/gapDen)' for a,b,v in values)+'\n]\n'
  add(tree,mod,ns,'gapNumbers',number_body,opens,'before')
  override(tree,ns+'.gapExpansion','noncomputable def gapExpansion : ℚ[X] := Math.B699.PadeMoment.bernsteinSum gapNumbers\n')
  override(tree,ns+'.gapExpansion_cone','''theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  apply Math.B699.PadeMoment.bernsteinSum_cone
  norm_num [gapNumbers, gapDen]
''')
  eq=tree.decls[tree.byname[ns+'.actual_gap_eq'][0]]['text']
  eq=re.sub(r'gapCoeff\d+,?\s*','',eq)
  eq=eq.replace('gapExpansion,','gapExpansion, gapNumbers, gapDen, Math.B699.PadeMoment.bernsteinSum,')
  override(tree,ns+'.actual_gap_eq',eq)
  leaves.append({'source':mod,'namespace':ns,'coefficients':len(values),'coefficientSHA256':hashlib.sha256(number_body.encode()).hexdigest()})
 return leaves

def emit(tree,selected,dest,shorten=True):
 # Preserve scope commands and instances; prune only whole parsed declarations.
 mods={tree.decls[k]['module'] for k in selected};pieces=[];new=[]
 known_ns={d['namespace'] for d in tree.decls.values()}
 kept_ns={tree.decls[k]['namespace'] for k in selected}
 def live_open(name):
  if name.split('.')[0] in {'Nat','Int','List','Finset','Set','Polynomial','Real','Rat','NNReal','ENNReal','Function','Lean','Array','Prod','Bool','Option','Classical','Fintype','Fin','Equiv','ZMod','BigOperators','Mathlib','Std','Batteries'}:return True
  project=any(n==name or n.startswith(name+'.') or n.endswith('.'+name) for n in known_ns)
  if not project:return True
  return any(n==name or n.startswith(name+'.') or n.endswith('.'+name) for n in kept_ns)
 for mod in tree.module_order():
  if mod not in mods:continue
  s=tree.mods[mod]['text']
  for key in tree.mods[mod]['decls']:
   d=tree.decls[key]
   if d['line']==0:
    if key in selected:new.append((mod,d))
    continue
   old=d.get('old_text',d['text']).strip()
   if key not in selected:
    s=s.replace(old,'',1)
    for attr in d['attributes']:s=s.replace(attr,'',1)
   elif 'old_text' in d:s=s.replace(old,d['text'].strip(),1)
  s=re.sub(r'^(?:(?:public|meta)\s+)*import\s+.*$','',s,flags=re.M)
  s=re.sub(r'^#.*$','',s,flags=re.M)
  s=re.sub(r'^(set_option maxHeartbeats)\s+0\b',r'\1 10000000',s,flags=re.M)
  # Add new generic definitions after types, before importing consumers.
  additions=[d for m,d in new if m==mod];pre=[];post=[]
  if additions:
   for d in additions:
    content=f"\nnamespace {d['namespace']}\n"+('open '+' '.join(d['opens'])+'\n' if d['opens'] else '')+d['text']+f"end {d['namespace']}\n"
    (pre if d.get('position')=='before' else post).append(content)
  s=''.join(pre)+s+''.join(post)
  scope_lines=[]
  for line in s.splitlines():
   if line.strip().startswith('open ') and not line.strip().startswith('open scoped '):
    names=line.strip().split()[1:]
    kept=[name for name in names if live_open(name)]
    if not kept:continue
    line='open '+' '.join(kept)
   scope_lines.append(line)
  s='\n'.join(scope_lines)+'\n'
  s=re.sub(r'\n\s*\n+', '\n',s).strip()+'\n'
  pieces.append(s)
 external=sorted({e for mod in mods for e in tree.mods[mod]['external']})
 if 'Mathlib.Data.Int.GCD' not in external:external.append('Mathlib.Data.Int.GCD')
 # Mathlib umbrella remains forbidden here: retain source-focused imports.
 own_namespace='Contribution.B699'+dest.stem
 # Namespace availability is independent of declaration availability. An open
 # can mention a selected namespace whose only retained declaration is emitted
 # later; its previous unknown-namespace error invalidated the complete open
 # command, including Polynomial and the already-defined BernsteinCone. Declare
 # project namespace headers up front, without introducing any mathematical fact.
 external_ns_roots={'Nat','Int','List','Finset','Set','Polynomial','Real','Rat','NNReal','ENNReal','Function','Lean','Array','Prod','Bool','Option','Classical','Fintype','Fin','Equiv','ZMod','BigOperators','Mathlib','Std','Batteries'}
 predeclared=sorted(n for n in kept_ns if n.split('.')[0] not in external_ns_roots)
 namespace_headers=''.join(f'namespace {n}\nend {n}\n' for n in predeclared)
 text='\n'.join('import '+e for e in external)+'\n\nnamespace '+own_namespace+'\n'+namespace_headers+''.join(pieces)+'\nend '+own_namespace+'\n'
 text=re.sub(r'^set_option (?:maxHeartbeats|maxRecDepth|exponentiation.threshold|autoImplicit|relaxedAutoImplicit|Elab.async) [^\n]*?(?<! in)$','',text,flags=re.M)
 text=text.replace('namespace '+own_namespace+'\n','namespace '+own_namespace+'\nset_option autoImplicit false\nset_option relaxedAutoImplicit false\nset_option Elab.async false\nset_option maxRecDepth 100000\nset_option maxHeartbeats 10000000\nset_option exponentiation.threshold 1000000\n',1)
 ns_segments=sorted({x for k in selected for x in tree.decls[k]['namespace'].split('.') if x})
 # Only shorten distinctive project namespace segments; preserve common external names.
 omit={'Nat','Int','Finset','Set','List','Polynomial','Function','Real','ENNReal','NNReal','Rat'}
 mapping={n:'N'+str(i) for i,n in enumerate(ns_segments) if len(n)>4 and n not in omit}
 if shorten:
  declnames=sorted({tree.decls[k]['name'] for k in selected if len(tree.decls[k]['name'])>8})
  name_map={name:'d'+str(i) for i,name in enumerate(declnames) if name not in ('original_i11','compactCellData','fastWitnessCheck','fastWitnessCheck_spec')}
  external_roots={'Nat','Int','List','Finset','Set','Polynomial','Real','Rat','NNReal','ENNReal','Function','Lean','Array','Prod','Bool','Option','Classical','Fintype','Fin','Equiv','ZMod','BigOperators','Mathlib','Std','Batteries'}
  def shorten_token(m):
   token=m.group();parts=token.split('.')
   if len(parts)>1 and parts[0] in external_roots:return token
   return '.'.join(name_map.get(x,mapping.get(x,x)) for x in parts)
  # Byte-bearing strings and library module imports must not be renamed.
  chunks=re.split(r'("(?:[^"\\]|\\.)*")',text)
  text=''.join(chunk if i%2 else re.sub(ID,shorten_token,chunk) for i,chunk in enumerate(chunks))
 else:name_map={}
 # Avoid indentation-sensitive formatting changes. Empty lines and trailing spaces only.
 text='\n'.join(line.rstrip() for line in text.splitlines() if line.strip())+'\n'
 # A removed global declaration may leave its command-scoped depth prefix
 # directly before a named namespace end. That prefix would open an anonymous
 # section around `end`, rather than scope a consumer. The same finite depth is
 # already installed at the file header, so remove only this known orphan.
 text,orphan_depth_groups=re.subn(r'(?m)^(?:set_option maxRecDepth 100000 in\n)+(?=end [^\n]+$)','',text)
 text=re.sub(r' *([,:]) *',r'\1',text)
 dest.parent.mkdir(parents=True,exist_ok=True);dest.write_text(text,encoding='utf-8',newline='\n')
 return {'path':str(dest.relative_to(REPO).as_posix()),'bytes':dest.stat().st_size,'sha256':hashlib.sha256(dest.read_bytes()).hexdigest(),'selectedDeclarations':len(selected),'modules':len(mods),'imports':external,'namespaceSegmentMap':mapping,'declarationNameMap':name_map,'ownNamespace':own_namespace,'removedOrphanDepthPrefixGroups':orphan_depth_groups,'predeclaredProjectNamespaces':predeclared}

def main():
 with (SCRATCH/'i11-slice.pickle').open('rb') as f:tree,_,_=pickle.load(f)
 overrides=crt_override(tree)
 terminal=terminal_override(tree)
 growth=growth_override(tree)
 selected,edges=tree.slice(TARGETS['i11'])
 dest=OUT/'candidates/I11CRTCompact.lean'
 report=emit(tree,selected,dest)
 report.update(status='uncompiled_source_candidate',overrides=overrides,terminal=terminal,growth=growth,goal='complete i=11; part of complete S contract',remaining='official re-elaboration/axiom/policy/size checks')
 (OUT/'analysis/i11-crt-compression.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 with (SCRATCH/'i11-crt-compact.pickle').open('wb') as f:pickle.dump((tree,selected,edges),f)
 print(json.dumps({k:v for k,v in report.items() if k not in ('imports','namespaceSegmentMap','declarationNameMap','overrides','terminal','growth')},ensure_ascii=False))
 module=LOW+'I11OriginalFinal/Final.lean';ns='Math.B699.I11OriginalFinal'
 opens=['B699LargePrimeStructure']
 add(tree,module,ns,'common_i11_above', '''theorem common_i11_above {n j : ℕ}
    (hn : (2 : ℕ) ^ 15360 ≤ n) (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  classical
  by_contra hno
  exact Nat.not_le_of_gt (Math.B699.I11InitialHeight.actual_i11_below_15360 hij hjn hno) hn
''',opens,'before')
 add(tree,module,ns,'common_i11_below', '''theorem common_i11_below {n j : ℕ}
    (hn : n < (2 : ℕ) ^ 15360) (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  classical
  by_contra hno
  have hn109 := Math.B699.I11VerifiedCubicCompression.actual_i11_below_109_of_initial_height hij hjn hno hn
  have hn04 := Math.B699.I11CRTConsumers.AllStages.initial_to_stage04 hij hjn hno hn109
  have hmember := candidate_mem_of_stage04 hij hjn hno hn04
  exact hno (Math.B699.I11TerminalCandidateCoverage.common_of_original_candidates hmember hij hjn)
''',opens,'before')
 reports=[]
 for part in ['above','below']:
  target=ns+'.common_i11_'+part
  subset,_=tree.slice([target])
  rr=emit(tree,subset,OUT/f'candidates/I11{part.title()}.lean')
  rr['target']=target;rr['status']='uncompiled_source_candidate';reports.append(rr)
  print(json.dumps({k:v for k,v in rr.items() if k not in ('imports','namespaceSegmentMap','declarationNameMap')},ensure_ascii=False))
 (OUT/'analysis/i11-split-size.json').write_text(json.dumps(reports,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')

if __name__=='__main__':main()
