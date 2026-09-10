"""Negative tests on actual valid certificates. A reject is not a mathematical proof."""
from pathlib import Path
from copy import deepcopy
from contextlib import redirect_stdout
import io,json
from check_i13_cuts_independent import check as cuts_check
from check_i13_graph import check as graph_check
from check_i13_blocks import check as blocks_check
from check_i13_terminal import check as terminal_check
ROOT=Path(__file__).resolve().parents[1]
if not __debug__:raise RuntimeError('Do not run proof checks with -O/-OO')
def rejected(label,checker,base,modify):
    x=deepcopy(base);modify(x)
    try:
        with redirect_stdout(io.StringIO()):checker(x)
    except (AssertionError,ValueError,KeyError,ZeroDivisionError) as e:
        return {'test':label,'result':'REJECTED','exception_type':type(e).__name__,'message':str(e)}
    raise RuntimeError('CORRUPT CERTIFICATE ACCEPTED: '+label)
if __name__=='__main__':
    c=json.loads((ROOT/'input/i13_cuts.json').read_text());b=json.loads((ROOT/'outputs/block_certificate.json').read_text());t=json.loads((ROOT/'outputs/i13_terminal_certificate.json').read_text())
    tests=[]
    tests.append(rejected('wrong external gcd constant',cuts_check,c,lambda x:x['cuts'][0].__setitem__('L1','1.6')))
    tests.append(rejected('overstated asymmetric exponent',cuts_check,c,lambda x:x['cuts'][0].__setitem__('wp',999)))
    tests.append(rejected('smaller unproved height',cuts_check,c,lambda x:x.__setitem__('height_Y_bits',4095)))
    tests.append(rejected('missing asymmetric cut',graph_check,c,lambda x:x['cuts'].pop()))
    tests.append(rejected('missing prime pair',blocks_check,b,lambda x:x['rows'].pop()))
    tests.append(rejected('missing first exponent block',blocks_check,b,lambda x:x['rows'][0]['blocks'].pop(0)))
    tests.append(rejected('wrong modular inverse',blocks_check,b,lambda x:x['rows'][0]['blocks'][0].__setitem__('inverse_hex','0x0')))
    tests.append(rejected('too small CRT M',terminal_check,t,lambda x:x['profiles'][0]['bound_stages'][0].__setitem__('M',str(int(x['profiles'][0]['bound_stages'][0]['M'])-1))))
    tests.append(rejected('missing low-n branch',terminal_check,t,lambda x:x['profiles'][0]['bound_stages'][0].__setitem__('start','1')))
    tests.append(rejected('composite prime evidence',terminal_check,t,lambda x:x.__setitem__('prime_witnesses',sorted(set(x['prime_witnesses']+[21])))))
    tests.append(rejected('missing large-divisor candidate',terminal_check,t,lambda x:x['profiles'][0]['large_divisor_rows'].pop()))
    tests.append(rejected('invalid divisor witness',terminal_check,t,lambda x:x['profiles'][0]['large_divisor_rows'][0].__setitem__(1,'1')))
    tests.append(rejected('omitted exceptional row',terminal_check,t,lambda x:x['profiles'][0]['residue_cover_rows'].pop()))
    tests.append(rejected('missing final exceptional j',terminal_check,t,lambda x:x['profiles'][0]['residue_cover_rows'][0]['j_intervals'][-1].__setitem__(1,62)))
    out={'status':'PASS','negative_tests':len(tests),'tests':tests}
    (ROOT/'outputs/adversarial_checks.json').write_text(json.dumps(out,indent=2)+'\n')
    print('PASS:',len(tests),'corrupt inputs rejected.')
