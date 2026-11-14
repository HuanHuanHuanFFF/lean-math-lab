"""Pack dependency proof steps into one ordinary final Lean proof.
Keep recursive algorithms, data types, instances, attributes and their closure
global. Every moved declaration is a local have/let with a source mapping.
This is candidate proof engineering, never proof acceptance by inspection.
"""
import argparse, collections, json, pickle, re, textwrap
from extract import REPO, OUT, LOW, Tree
from compress_i11 import SCRATCH, add, override, emit
from pack_i11_growth import rewrite

def pack(tree,target,dest):
 selected,edges=tree.slice([target]);root=tree.byname[target][0]
 keep=set()
 for k in selected:
  d=tree.decls[k];s=d['text']
  if d['kind'] in ('structure','inductive','class','instance') or d['attributes'] or d['variables']:
   keep.add(k)
  elif d['kind'] in ('def','abbrev') and (re.search(r'^\s*\|',s,re.M) or re.search(r'^\s*(?:local )?instance\b',s,re.M)):
   keep.add(k)
 pending=list(keep)
 while pending:
  k=pending.pop()
  for dep in edges.get(k,[]):
   if dep not in keep:keep.add(dep);pending.append(dep)
 localset=selected-keep-{root}
 locals={k:'u'+str(i) for i,k in enumerate(sorted(localset))}
 order=[];done=set();visiting=set()
 def visit(k):
  if k in done:return
  if k in visiting:raise ValueError('proof dependency cycle '+k)
  visiting.add(k)
  for dep in edges.get(k,[]):
   if dep in localset:visit(dep)
  visiting.remove(k);done.add(k);order.append(k)
 for k in sorted(localset):visit(k)
 steps=[];mapping=[]
 for k in order:
  d=tree.decls[k];body=d['text']
  body=re.sub(r'^(?:(?:private|protected|noncomputable)\s+)*(theorem|lemma|def|abbrev)\s+'+re.escape(d['name'])+r'\b',lambda m:('have ' if d['kind'] in ('theorem','lemma') else 'let ')+locals[k],body,count=1)
  body=rewrite(tree,body,d,locals)
  steps.append('\n'.join('  '+line for line in body.strip().splitlines()))
  mapping.append({'localName':locals[k],'original':d['full'],'source':d['module'],'line':d['line'],'sourceSHA256':tree.mods[d['module']]['sha256']})
 d=tree.decls[root];signature,body=d['text'].split(':=',1)
 if not body.strip().startswith('by'):raise ValueError('root expected tactic proof')
 tail=textwrap.dedent(body.strip()[2:].strip('\n')).strip('\n')
 tail=rewrite(tree,tail,d,locals)
 packed=signature+':= by\n  classical\n  letI : Infinite ℚ := Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective\n'+'\n'.join(steps)+'\n'+textwrap.indent(tail,'  ')+'\n'
 # All external names under Polynomial remain explicit through this scope.
 d['opens']=list(dict.fromkeys(d['opens']+['Polynomial']))
 source_modules={tree.decls[k]['module'] for k in selected}
 tree.mods[d['module']]['external']=sorted(set(tree.mods[d['module']]['external']) |
    {name for m in source_modules for name in tree.mods[m]['external']})
 override(tree,target,packed)
 chosen,_=tree.slice([target]);report=emit(tree,chosen,dest)
 report.update(status='uncompiled_source_candidate',target=target,localProofSteps=len(mapping),keptGlobalDeclarations=len(keep),localSourceMap=mapping)
 return report

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--part',choices=['above','below'],default='above');args=ap.parse_args()
 filename='i11-growth-packed.pickle' if args.part=='above' else 'i11-crt-compact.pickle'
 with (SCRATCH/filename).open('rb') as f:tree,_,_=pickle.load(f)
 namespace='Math.B699.I11OriginalFinal';module=LOW+'I11OriginalFinal/Final.lean'
 target=namespace+'.common_i11_'+args.part
 if args.part=='below':
  add(tree,module,namespace,'common_i11_below','''theorem common_i11_below {n j : ℕ}
    (hn : n < (2 : ℕ) ^ 15360) (hij : 11 < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, Nat.Prime p ∧ 11 ≤ p ∧ p ∣ n.choose 11 ∧ p ∣ n.choose j := by
  have hc : Common n 11 j := by
    classical
    by_contra hno
    have hn109 := Math.B699.I11VerifiedCubicCompression.actual_i11_below_109_of_initial_height hij hjn hno hn
    have hn04 := Math.B699.I11CRTConsumers.AllStages.initial_to_stage04 hij hjn hno hn109
    have hmember := candidate_mem_of_stage04 hij hjn hno hn04
    exact hno (Math.B699.I11TerminalCandidateCoverage.common_of_original_candidates hmember hij hjn)
  obtain ⟨p, hp, hpi, hg⟩ := hc
  exact ⟨p, hp, hpi, dvd_trans hg (Nat.gcd_dvd_left _ _), dvd_trans hg (Nat.gcd_dvd_right _ _)⟩
''',['B699LargePrimeStructure','Polynomial'],'before')
 else:
  # The growth packing stage already installed the exact double-divisibility root.
  tree.decls[tree.byname[target][0]]['opens'].append('Polynomial')
 result=pack(tree,target,OUT/f'candidates/I11{args.part.title()}FinalCandidate.lean')
 (OUT/f'analysis/i11-{args.part}-local-proof.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({k:v for k,v in result.items() if k not in ('namespaceSegmentMap','declarationNameMap','imports','localSourceMap')},ensure_ascii=False))

if __name__=='__main__':main()
