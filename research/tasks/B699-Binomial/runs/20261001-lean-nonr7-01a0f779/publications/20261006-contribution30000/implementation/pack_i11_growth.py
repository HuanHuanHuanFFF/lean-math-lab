"""Move concrete GrowthTree proof steps into local have/let statements.
The proof terms and rational certificates are retained; no macro is used.
Fresh Lean checking is required before any mathematical acceptance claim.
"""
import collections, json, pickle, re
from extract import REPO, OUT, LOW, ID, Tree
from compress_i11 import add, override, emit, SCRATCH

def rewrite(tree,text,d,locals):
 def token(m):
  value=m.group()
  # Named argument labels belong to the called declaration, not this scope.
  if re.match(r'\s*:=',text[m.end():]) and text[:m.start()].rstrip().endswith('('):return value
  parts=value.split('.')
  for length in range(len(parts),0,-1):
   key=tree.resolve('.'.join(parts[:length]),d)
   if key:
    prefix=locals.get(key,tree.decls[key]['full'])
    return prefix+('.'+'.'.join(parts[length:]) if length<len(parts) else '')
  return value
 chunks=re.split(r'("(?:[^"\\]|\\.)*")',text)
 # Numeric leaf certificates contain no strings; keep data strings unchanged.
 if len(chunks)>1:return text
 return re.sub(ID,token,text)

def pack_group(tree,namespace):
 roots=[namespace+'.Tree.'+n for n in ['q_tree_delta0','q_tree_delta1','e_tree_delta0','e_tree_delta1']]
 selected,edges=tree.slice(roots)
 localset={k for k in selected if tree.decls[k]['namespace'].startswith(namespace+'.') and '.Shared' not in tree.decls[k]['namespace']}
 locals={k:'v'+str(i) for i,k in enumerate(sorted(localset))}
 order=[];done=set();visiting=set()
 def visit(k):
  if k in done:return
  if k in visiting:raise ValueError('numeric proof dependency cycle '+k)
  visiting.add(k)
  for dep in edges.get(k,[]):
   if dep in localset:visit(dep)
  visiting.remove(k);done.add(k);order.append(k)
 for k in sorted(localset):visit(k)
 steps=[]
 for k in order:
  d=tree.decls[k];body=d['text']
  body=re.sub(r'^(?:(?:private|protected|noncomputable)\s+)*(theorem|lemma|def|abbrev)\s+'+re.escape(d['name'])+r'\b',lambda m:('have ' if d['kind'] in ('theorem','lemma') else 'let ')+locals[k],body,count=1)
  body=rewrite(tree,body,d,locals)
  steps.append('\n'.join('  '+line for line in body.strip().splitlines()))
 root_keys=[tree.byname[r][0] for r in roots]
 root_types=[]
 for k in root_keys:
  d=tree.decls[k];signature=d['text'].split(':=',1)[0]
  root_types.append(rewrite(tree,signature.split(':',1)[1].strip(),d,{}))
 module=tree.decls[root_keys[0]]['module'];ns=namespace+'.Tree'
 conj=' ∧\n    '.join('('+x+')' for x in root_types)
 body='theorem packed_growth_trees :\n    '+conj+' := by\n  classical\n  letI : Infinite ℚ := Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective\n'+'\n'.join(steps)+'\n  exact ⟨'+', '.join(locals[k] for k in root_keys)+'⟩\n'
 opens=tree.decls[root_keys[0]]['opens']
 add(tree,module,ns,'packed_growth_trees',body,opens,'before')
 for pos,k in enumerate(root_keys):
  d=tree.decls[k];signature=d['text'].split(':=',1)[0]
  projection=['.1','.2.1','.2.2.1','.2.2.2'][pos]
  override(tree,d['full'],signature+':= packed_growth_trees'+projection+'\n')
 return {'namespace':namespace,'localSteps':len(order),'rootTypes':root_types,'sourceModules':sorted({tree.decls[k]['module'] for k in localset})}

def main():
 with (SCRATCH/'i11-crt-compact.pickle').open('rb') as f:tree,_,_=pickle.load(f)
 groups=sorted({d['namespace'][:-5] for d in tree.decls.values() if '/Growth/' in d['module'] and d['name']=='q_tree_delta0' and d['namespace'].endswith('.Tree')})
 report=[pack_group(tree,ns) for ns in groups]
 ns='Math.B699.I11OriginalFinal';module=LOW+'I11OriginalFinal/Final.lean'
 add(tree,module,ns,'common_i11_above','''theorem common_i11_above {n j : ℕ}
    (hn : (2 : ℕ) ^ 15360 ≤ n) (hij : 11 < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, Nat.Prime p ∧ 11 ≤ p ∧ p ∣ n.choose 11 ∧ p ∣ n.choose j := by
  have hc : Common n 11 j := by
    classical
    by_contra hno
    exact Nat.not_le_of_gt (Math.B699.I11InitialHeight.actual_i11_below_15360 hij hjn hno) hn
  obtain ⟨p, hp, hpi, hg⟩ := hc
  exact ⟨p, hp, hpi, dvd_trans hg (Nat.gcd_dvd_left _ _), dvd_trans hg (Nat.gcd_dvd_right _ _)⟩
''',['B699LargePrimeStructure'],'before')
 target=ns+'.common_i11_above';selected,edges=tree.slice([target])
 output=emit(tree,selected,OUT/'candidates/I11AbovePacked.lean')
 output.update(status='uncompiled_source_candidate',growthGroups=report,target=target)
 (OUT/'analysis/i11-growth-packing.json').write_text(json.dumps(output,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 with (SCRATCH/'i11-growth-packed.pickle').open('wb') as f:pickle.dump((tree,selected,edges),f)
 print(json.dumps({k:v for k,v in output.items() if k not in ('namespaceSegmentMap','declarationNameMap','imports','growthGroups')},ensure_ascii=False))
 print(json.dumps(collections.Counter(tree.decls[k]['kind'] for k in selected)))

if __name__=='__main__':main()
