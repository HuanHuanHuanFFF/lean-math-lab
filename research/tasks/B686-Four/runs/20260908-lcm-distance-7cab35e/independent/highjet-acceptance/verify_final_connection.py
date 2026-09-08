"""Verify the frozen LLL-to-Q-space link; no new search or optimization."""
import hashlib,json,sys
from pathlib import Path
import sympy as sp
sys.set_int_max_str_digits(0)
HERE=Path(__file__).resolve().parent
ROUND=HERE.parents[1]
hash_file=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
qpath=HERE/'base-locus-audit.json'
jpath=ROUND/'support/smith-highjet/highjet-input.json'
lpath=ROUND/'support/smith-highjet/lll-subbasis-results.json'
q=json.loads(qpath.read_text()); j=json.loads(jpath.read_text()); l=json.loads(lpath.read_text())
assert hash_file(qpath)==l['matrix_source_sha256']
assert hash_file(jpath)==l['jet_input_sha256']==q['producer_input_sha256']
assert all(c[1]==1 for row in q['rational_kernel_vectors'] for c in row)
K=sp.Matrix([[c[0] for c in row] for row in q['rational_kernel_vectors']])
assert K==sp.Matrix(l['source_kernel_rows'])
R=sp.Matrix(l['reduced_kernel_rows']); T=sp.Matrix(l['transform'])
assert all(isinstance(c,sp.Integer) for M in (K,R,T) for c in M)
assert K.shape==R.shape==(11,35) and T.shape==(11,11)
private=[]
for row in range(11):
    choices=[col for col in range(35) if K[row,col]!=0 and all(K[r,col]==0 for r in range(11) if r!=row)]
    assert choices; private.append(choices[0])
assert len(set(private))==11 and T.det()==-1 and R==T*K
A=sp.Matrix(j['primitive_integer_rows'])
assert A*K.T==sp.zeros(24,11) and A*R.T==sp.zeros(24,11)
assert max(map(abs,K))==max(map(abs,R))==l['source_max_abs']==l['reduced_max_abs']
report={'status':'PASS','qspace_source_sha256':hash_file(qpath),'jet_input_sha256':hash_file(jpath),'lll_source_sha256':hash_file(lpath),'rational_span_dimension':11,'source_private_columns':private,'transform_determinant':-1,'integer_coefficients_in_integer_valued_basis':True,'source_and_reduced_same_Q_span':True,'kernel_identities_checked':True,'no_positive_common_zero_transfers':True,'max_coefficient_digits':len(str(max(map(abs,R)))),'maximum_height_improved':False,'saturation_claim':False,'new_search':False,'lean_check':False}
(HERE/'final-connection-audit.json').write_text(json.dumps(report,indent=2)+'\n')
manifest=[{'file':p.name,'bytes':p.stat().st_size,'sha256':hash_file(p)} for p in sorted(HERE.iterdir()) if p.is_file() and p.name!='final-hashes.json']
(HERE/'final-hashes.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(json.dumps(report,indent=2))
