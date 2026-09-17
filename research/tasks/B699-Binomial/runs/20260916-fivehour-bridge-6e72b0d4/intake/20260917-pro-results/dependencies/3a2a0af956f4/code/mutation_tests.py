from pathlib import Path
import json,copy,time
from verify_new import h012,h013
ROOT=Path(__file__).resolve().parents[1]
def main(out):
 out=Path(out);out.mkdir(parents=True,exist_ok=True);st=time.time()
 base=json.loads((ROOT/'evidence/h012_reduced_mod.json').read_text())
 tests=[]
 def mutate(name,fn):
  c=copy.deepcopy(base);fn(c)
  try:h012(c,direct=False)
  except (AssertionError,IndexError,ValueError,TypeError):tests.append(name);return
  raise AssertionError('MUTANT ACCEPTED: '+name)
 for key,val in [('D',81),('T',12),('prime',1000033),('coefficient_bound_bits',80850),('minor_det',0),('resultant_at_9',0),('matrix_shape',[722,725])]:
  mutate('wrong_'+key,lambda c,k=key,v=val:c.__setitem__(k,v))
 mutate('lost_origin_factor',lambda c:c['mu'].__setitem__(0,4))
 mutate('lost_free_row_weight',lambda c:c['weights'].__setitem__('3',19))
 mutate('duplicate_minor_row',lambda c:c['rows'].__setitem__(0,c['rows'][1]))
 mutate('duplicate_minor_column',lambda c:c['cols'].__setitem__(0,c['cols'][1]))
 mutate('wrong_free_column',lambda c:c['free'].__setitem__(0,0))
 mutate('changed_integer_matrix_content',lambda c:c['row_content'].__setitem__(0,c['row_content'][0]+1))
 mutate('changed_basis',lambda c:c['basis'][0].__setitem__(0,c['basis'][0][0]+1))
 mutate('changed_diagonal_jet',lambda c:c['equations'][0].__setitem__(2,c['equations'][0][2]+1))
 mutate('changed_kernel_coefficient',lambda c:c['kernel'][0].__setitem__(0,(c['kernel'][0][0]+1)%1000003))
 mutate('wrong_kernel_normalization',lambda c:c['kernel'][0].__setitem__(c['free'][0],2))
 old=json.loads((ROOT/'evidence/h013_reconstruction.json').read_text())
 old['left_relations'][0][0]+=1
 try:h013(old,direct=False)
 except AssertionError:tests.append('H013_lost_exact_left_relation')
 else:raise AssertionError('H013 exact rank lift not enforced')
 # Changing row order is a valid change in the determinant-defined integer kernels.
 c=copy.deepcopy(base);c['rows'][0],c['rows'][1]=c['rows'][1],c['rows'][0];c['minor_det']=(-c['minor_det'])%1000003
 h012(c,direct=False)
 o={'status':'PASS_SEMANTIC_MUTATIONS','rejected':len(tests),'tests':tests,'positive_basis_equivalence_tests':1,'seconds':time.time()-st}
 (out/'mutations.json').write_text(json.dumps(o,indent=2));print(json.dumps(o))
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args();main(a.out)
