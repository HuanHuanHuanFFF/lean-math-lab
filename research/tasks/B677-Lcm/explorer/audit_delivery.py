from pathlib import Path
from fractions import Fraction
import hashlib,json,re
B=Path(__file__).resolve().parent
c=json.loads((B/'finite-cones-result.json').read_text(encoding='utf8'))
s=json.loads((B/'bounded-start-result.json').read_text(encoding='utf8'))
checks={}
for name,data in [('check_finite_cones.py',c),('check_bounded_start.py',s)]:
    h=hashlib.sha256((B/name).read_bytes()).hexdigest()
    assert h==data['source_sha256'],(name,h,data['source_sha256'])
    checks[name]=h
assert c['largest_necessary_k']==s['max_k']==71
assert c['results']['4']['collisions']==c['results']['8']['collisions']==s['collisions']==[]
assert c['results']['8']['full_integer_triples_checked_via_exact_lcm_lookup']==40070219
assert s['integer_triples_compared_via_exact_counter']==2061156211
assert s['every_sieve_bit_trial_division_checked']
e=Fraction(c['rational_log_margin']['exp_one_upper_num'],c['rational_log_margin']['exp_one_upper_den'])
assert e<Fraction(87,32)
assert 87**57<89693**5*32**57
assert Fraction(57,5)**3>1480
assert Fraction(57,5)**3-Fraction(1480)==Fraction(193,125)
expected={
 'sources/dusart-2018-explicit-estimates.pdf':'fcd7cd1f7afcec97f6c73a2cbc540f7a56f0425987fa261c9f0d4925c2b31ebc',
 'sources/dusart-2018-correctif.pdf':'bcd8b9868b6b2b4e28e332e54ef56967c35df2670ba7dd7e8e4b61410ce74d5d'}
for name,h in expected.items():
    assert hashlib.sha256((B/name).read_bytes()).hexdigest()==h
proof=(B/'complete-proof.md').read_text(encoding='utf-8-sig')
for target in re.findall(r'\]\(([^)]+)\)',proof):
    if not target.startswith('https://'):
        assert (B/target).is_file(),target
assert 'n>369k' in proof and 'm-n>8k' in proof
assert '不是 Lean kernel' in proof
assert 'Proposition 5.4' in proof
assert '1480' in proof and '1466' in proof
out={'artifact':'complete-proof.md','artifact_sha256':hashlib.sha256((B/'complete-proof.md').read_bytes()).hexdigest(),
     'script_hashes_match':checks,'source_pdf_hashes_match':expected,
     'all_local_evidence_links_exist':True,'finite_results_no_collisions':True,
     'strict_log_margin_over_1480':'193/125','lean_acceptance_claimed':False,
     'fresh_review_status':'pending'}
(B/'delivery-audit.json').write_text(json.dumps(out,indent=2),encoding='utf8')
print(json.dumps(out,indent=2))

