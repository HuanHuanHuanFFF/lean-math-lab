"""Primary exact Padé constant check for the frozen new i=13 input.
The analytic interval implementation is adopted unchanged from the raw
asymmetric-Padé archive; its source hashes are recorded. No float design
output enters acceptance. Graph/height inference is independently checked.
"""
from pathlib import Path
import json,sys
if not __debug__:raise RuntimeError('Do not run proof checks with -O/-OO')
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'code/adopted_asym'))
from verify_pair_intervals import certify
if __name__=='__main__':
    data=json.loads((ROOT/'input/i13_cuts.json').read_text())
    assert (data['i'],data['height_n_bits'],data['height_Y_bits'])==(13,8192,8191) and len(data['cuts'])==11
    rows=[]
    for row in data['cuts']:
        rows.append(certify(row,8191))
        print(row['p'],row['q'],row['wp'],row['wq'],'PASS',flush=True)
    out={'status':'PASS_EXACT_RATIONAL','i':13,'source_Y_bits':8191,'cuts':data['cuts'],'cut_certificates':rows,
         'count':len(rows),'external_inputs':['BFT Lemma 4.1','BFT Proposition 5.1'],
         'arithmetic':'adopted exact Fraction intervals; square-root enclosure; atanh-series log; beta-integral sums'}
    (ROOT/'outputs/i13_cuts_certified.json').write_text(json.dumps(out,indent=2)+'\n')
    print('SUMMARY 11 exact analytic cuts; graph and height checked separately.')
