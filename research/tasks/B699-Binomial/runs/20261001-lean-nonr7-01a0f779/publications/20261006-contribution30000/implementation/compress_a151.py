"""Lossless source-data re-encoding of the 151 accepted low-index rows.
All resulting Lean sources are candidates until fresh elaboration and audits.
"""
import collections, hashlib, json, pickle, re, os
from extract import REPO, OUT, LOW, TARGETS, Tree
from compress_i11 import add, override, emit, SCRATCH

NS='B699LowIndex'
MODULE='research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/FiniteCover.lean'
ALPHABET=''.join(chr(x) for x in range(35,127) if x not in (45,47,92) and not chr(x).isalpha())
assert len(ALPHABET)==37

def pack(n,width):
 assert 0<=n<37**width,n
 result=''
 for _ in range(width):result=ALPHABET[n%37]+result;n//=37
 return result

DECODER='''def decodeGoods (divisors : List ℕ) (previous : ℕ) (codes : List ℕ) : List GoodSegment :=
  match codes with
  | [] => []
  | code :: rest =>
      let payload := code / 2
      let index := payload % 1369
      let width := (payload / 1369) % 1369
      let lo := previous + payload / 1874161
      let witness := if code % 2 = 0 then RowWitness.topPrime (lo - index)
        else RowWitness.largeDivisor (divisors[index]?.getD 0)
      ⟨lo, lo + width, witness⟩ :: decodeGoods divisors lo rest
termination_by structural codes

def decodeLayers (stop lower : ℕ) (indices : List ℕ) : List CoverLayer :=
  match indices with
  | [] => []
  | index :: rest =>
      let upper := min (2 * lower) stop
      ⟨lower, upper, index⟩ :: decodeLayers stop upper rest
termination_by structural indices

def fastGoodSegmentCheck (i r s : ℕ) (g : GoodSegment) : Bool :=
  match g.witness with
  | .topPrime p => decide (g.lower ≤ g.upper ∧ p ≤ g.lower ∧ g.upper < p + i) && trialPrimeCheck p
  | .largeDivisor _ => goodSegmentCheck i r s g

theorem fastGoodSegmentCheck_spec {i r s : ℕ} {g : GoodSegment}
    (h : fastGoodSegmentCheck i r s g = true) : goodSegmentCheck i r s g = true := by
  cases hw : g.witness with
  | largeDivisor D => simpa only [fastGoodSegmentCheck, hw] using h
  | topPrime p =>
    have hc : (decide (g.lower ≤ g.upper ∧ p ≤ g.lower ∧ g.upper < p + i) && trialPrimeCheck p) = true := by
      simpa only [fastGoodSegmentCheck, hw] using h
    obtain ⟨hb, hp⟩ := Bool.and_eq_true_iff.mp hc
    obtain ⟨hlo, hplower, hupper⟩ := of_decide_eq_true hb
    simp only [goodSegmentCheck, hw, decide_eq_true_eq]
    exact ⟨hlo, trialPrimeCheck_sound hp, hplower, hupper⟩

def fastFiniteCoverRowCheck (row : FiniteCoverRow) : Bool :=
  decide (row.height ∈ heightCertificateData) &&
  row.goods.all (fastGoodSegmentCheck row.height.i row.height.r row.height.s) &&
  coverCheck (2 * row.height.i + 2) (row.height.i * (row.height.i - 1) - 1)
    (row.goods.map goodSegmentBounds) &&
  coverCheck (row.height.i * (row.height.i - 1)) (row.height.n0 - 1)
    (row.layers.map CoverLayer.bounds) &&
  row.layers.all (coverLayerCheck row.height row.goods)

theorem fastFiniteCoverRowCheck_spec {row : FiniteCoverRow}
    (h : fastFiniteCoverRowCheck row = true) : finiteCoverRowCheck row = true := by
  unfold fastFiniteCoverRowCheck at h
  unfold finiteCoverRowCheck
  simp only [Bool.and_eq_true, and_assoc] at h ⊢
  refine ⟨h.1, ?_, h.2.2.1, h.2.2.2.1, h.2.2.2.2⟩
  apply List.all_eq_true.mpr
  intro g hg
  exact fastGoodSegmentCheck_spec (List.all_eq_true.mp h.2.1 g hg)
'''

def add_decoder(tree):
 # This fixed checker's needed prime helper was already an imported dependency
 # of the original 151 rows. Add it explicitly to the checker module visibility.
 prime='research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/TrialPrimeCheck.lean'
 if prime not in tree.mods[MODULE]['imports']:tree.mods[MODULE]['imports'].append(prime)
 tree.vis.clear()
 mini=Tree.__new__(Tree);mini.mods={MODULE:{'text':'namespace '+NS+'\n'+DECODER+'\nend '+NS,'imports':[]}};mini.order=[MODULE];mini.decls={};mini.byname=collections.defaultdict(list)
 mini.parse(MODULE)
 for d in mini.decls.values():add(tree,MODULE,NS,d['name'],d['text'],[])

def compress_row(tree,i):
 row=f'row{i:03d}';ns='B699LowIndex.LowIndexLean513dc7cc'
 d=tree.decls[tree.byname[ns+'.'+row+'_goods'][0]]
 records=[(int(lo),int(hi),kind,int(v)) for lo,hi,kind,v in re.findall(r'lower := (\d+), upper := (\d+), witness := RowWitness\.(topPrime|largeDivisor) (\d+)',d['text'])]
 assert records,(i,d['text'][:100])
 previous=0;encoded=[];divisors=[]
 for lo,hi,kind,v in records:
  if kind=='topPrime':mark=0;index=lo-v
  else:
   mark=1
   if v not in divisors:divisors.append(v)
   index=divisors.index(v)
  delta,width=lo-previous,hi-lo
  assert 0<=delta<37**4 and 0<=width<1369 and 0<=index<1369
  encoded.append(2*((delta*1369+width)*1369+index)+mark);previous=lo
 # Independently decode the one-Nat representation back to every original field.
 reconstructed=[];previous=0
 for code in encoded:
  payload=code//2;lo=previous+payload//1874161;hi=lo+(payload//1369)%1369
  value=payload%1369;kind='topPrime' if code%2==0 else 'largeDivisor'
  value=lo-value if kind=='topPrime' else divisors[value]
  reconstructed.append((lo,hi,kind,value));previous=lo
 assert reconstructed==records
 encoded_text='['+','.join(map(str,encoded))+']'
 goods_body=f'def {row}_goods : List GoodSegment :=\n  B699LowIndex.decodeGoods [{",".join(map(str,divisors))}] 0 {encoded_text}\n'
 override(tree,ns+'.'+row+'_goods',goods_body)
 ld=tree.decls[tree.byname[ns+'.'+row+'_layers'][0]]
 layers=[tuple(map(int,x)) for x in re.findall(r'lower := (\d+), upper := (\d+), M := (\d+)',ld['text'])]
 hd=tree.decls[tree.byname[ns+'.'+row+'_height'][0]]
 hpow=int(re.search(r'n0Power10 := (\d+)',hd['text'])[1]);stop=10**hpow
 assert layers and layers[0][0]==i*(i-1)
 assert all(hi==min(2*lo,stop) for lo,hi,m in layers)
 assert all(layers[k][1]==layers[k+1][0] for k in range(len(layers)-1)) and layers[-1][1]==stop
 indices=[m for lo,hi,m in layers];lower=i*(i-1);reconstructed_layers=[]
 for m in indices:
  upper=min(2*lower,stop);reconstructed_layers.append((lower,upper,m));lower=upper
 assert reconstructed_layers==layers
 mtext='['+','.join(map(str,indices))+']'
 layers_body=f'def {row}_layers : List CoverLayer :=\n  B699LowIndex.decodeLayers {row}_height.n0 {i*(i-1)} {mtext}\n'
 override(tree,ns+'.'+row+'_layers',layers_body)
 override(tree,ns+'.'+row+'_checked',f'theorem {row}_checked : finiteCoverRowCheck {row} = true := by\n  exact B699LowIndex.fastFiniteCoverRowCheck_spec (by decide +kernel)\n')
 return {'i':i,'goodsCount':len(records),'layerCount':len(layers),'goodsSource':d['module'],'goodsSourceSHA256':tree.mods[d['module']]['sha256'],'encodingKind':'oneNatpergood/oneNatperlayer; explicitList.rec','encodedGoodsSHA256':hashlib.sha256(encoded_text.encode('ascii')).hexdigest(),'encodedGoodsBytes':len(encoded_text),'largeDivisors':len(divisors),'originalGoodsRecordsSHA256':hashlib.sha256(json.dumps(records,separators=(',',':')).encode()).hexdigest(),'originalLayerRecordsSHA256':hashlib.sha256(json.dumps(layers,separators=(',',':')).encode()).hexdigest(),'roundTrip':'all original record fields equal','layersRoundTrip':'all original lo/hi/M fields equal'}

def main():
 with (SCRATCH/'a151-slice.pickle').open('rb') as f:tree,_,_=pickle.load(f)
 add_decoder(tree)
 rows=[29,*range(35,185)]
 records=[compress_row(tree,i) for i in rows]
 hd=tree.decls[tree.byname['B699LowIndex.heightCertificateDataValidBool'][0]]
 override(tree,'B699LowIndex.heightCertificateDataValidBool',hd['text'].split(':= by')[0]+':= by\n  decide +kernel\n')
 groups=[rows, [29,*range(35,85)], list(range(85,135)),list(range(135,185))]
 reports=[]
 for ix,indices in enumerate([] if os.getenv('B699_A151_PACKED_ONLY')=='1' else groups):
  targets=['B699LowIndex.LowIndexLean513dc7cc.HuanAllA.original_i'+str(i).zfill(3) for i in indices]
  selected,_=tree.slice(targets)
  name='A151' if ix==0 else 'A'+str(indices[0])+'_'+str(indices[-1])
  report=emit(tree,selected,OUT/'candidates'/f'{name}.lean')
  report['indices']=indices;report['status']='uncompiled_source_candidate'
  reports.append(report)
  print(json.dumps({k:v for k,v in report.items() if k not in ('imports','namespaceSegmentMap','declarationNameMap','indices')},ensure_ascii=False))
 # A small number of proof-carrying tables replaces thousands of row aliases.
 add(tree,MODULE,NS,'CheckedRow','''structure CheckedRow where
  row : FiniteCoverRow
  checked : finiteCoverRowCheck row = true
''',[])
 namespace='B699LowIndex.LowIndexLean513dc7cc.HuanAllA'
 module=LOW+'HuanAllA.lean'
 tree.mods[module]['external'].append('Mathlib.Tactic.IntervalCases')
 packed=[]
 for ix,indices in enumerate(groups[:1] if os.getenv('B699_A151_PACKED_ONLY')=='1' else groups):
  entries=[]
  for i in indices:
   base='B699LowIndex.LowIndexLean513dc7cc.row'+str(i).zfill(3)
   values=[]
   for suffix in ['height','goods','layers']:
    d=tree.decls[tree.byname[base+'_'+suffix][0]]
    values.append(d['text'].split(':=',1)[1].strip())
   power=int(re.search(r'n0Power10 := (\d+)',values[0])[1])
   values[2]=values[2].replace('row'+str(i).zfill(3)+'_height.n0',f'(10 ^ {power})')
   r='{ height := '+values[0]+', goods := '+values[1]+', layers := '+values[2]+' }'
   entries.append('  ⟨'+r+', B699LowIndex.fastFiniteCoverRowCheck_spec (by decide +kernel)⟩')
  label='a151' if ix==0 else 'a'+str(indices[0])+'_'+str(indices[-1])
  name=label+'_rows'
  add(tree,module,namespace,name,'def '+name+' : List B699LowIndex.CheckedRow := [\n'+',\n'.join(entries)+'\n]\n',[],'before')
  index_list='['+','.join(map(str,indices))+']'
  lower=35 if 29 in indices else indices[0];upper=indices[-1]
  cond=f'i = 29 ∨ ({lower} ≤ i ∧ i ≤ {upper})' if 29 in indices else f'{lower} ≤ i ∧ i ≤ {upper}'
  cases='rcases hi with rfl | ⟨hl, hh⟩\n    · decide +kernel\n    · interval_cases i <;> decide +kernel' if 29 in indices else 'obtain ⟨hl, hh⟩ := hi\n    interval_cases i <;> decide +kernel'
  theorem=f'''theorem complete_{label} {{n i j : ℕ}} (hi : {cond})
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  have hindices : {name}.map (fun r => r.row.height.i) = {index_list} := by decide +kernel
  have hm : i ∈ {name}.map (fun r => r.row.height.i) := by
    rw [hindices]
    {cases}
  obtain ⟨r, hr, rfl⟩ := List.mem_map.mp hm
  obtain ⟨p, hp, hip, hg⟩ := B699LowIndex.common_of_finite_cover_row_checked r.checked hij hjn
  exact ⟨p, hp, hip, dvd_trans hg (Nat.gcd_dvd_left _ _), dvd_trans hg (Nat.gcd_dvd_right _ _)⟩
'''
  target=namespace+'.complete_'+label
  add(tree,module,namespace,'complete_'+label,theorem,[],'before')
  chosen,_=tree.slice([target]);filename='A151Packed' if ix==0 else 'A'+str(indices[0])+'_'+str(indices[-1])+'Packed'
  result=emit(tree,chosen,OUT/'candidates'/f'{filename}.lean')
  result.update(indices=indices,target=target,status='uncompiled_source_candidate');packed.append(result)
  print(json.dumps({k:v for k,v in result.items() if k not in ('imports','namespaceSegmentMap','declarationNameMap','indices')},ensure_ascii=False))
 (OUT/'analysis/a151-compression.json').write_text(json.dumps({'rows':records,'candidates':reports,'packedCandidates':packed},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 with (SCRATCH/'a151-compact.pickle').open('wb') as f:pickle.dump(tree,f)

if __name__=='__main__':main()
