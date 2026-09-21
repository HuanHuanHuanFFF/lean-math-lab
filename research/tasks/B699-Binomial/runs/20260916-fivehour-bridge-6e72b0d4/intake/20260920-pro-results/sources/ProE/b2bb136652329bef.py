"""Mutation tests. Temporary bad inputs are outside the delivered directory."""
import copy,json,subprocess,sys,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def variants(c):
    x=copy.deepcopy(c); x['endpoints']=x['endpoints'][1:]; yield 'omit_P3_endpoint',x
    x=copy.deepcopy(c); x['endpoints'][0]['witnesses'][0]=2; yield 'use_even_witness',x
    x=copy.deepcopy(c); x['endpoints'][0]['witnesses'].pop(); yield 'omit_midpoint',x
    x=copy.deepcopy(c); x['endpoints'][3]['h']=1; yield 'truncate_complete_power',x
    x=copy.deepcopy(c); x['endpoints'][0]['n']+=2; yield 'replace_original_n',x
    x=copy.deepcopy(c); x['small_cofactor_templates'].pop(); yield 'omit_digit_template',x
    x=copy.deepcopy(c); x['small_cofactor_templates'][4]['remainder'][0]+=1; yield 'corrupt_small_remainder',x
    x=copy.deepcopy(c); x['polynomials']['r1'][0][1]+=1; yield 'corrupt_general_coefficient',x
    x=copy.deepcopy(c); x['polynomials']['quotient'][0][0][0]=10; yield 'exceed_identity_degree',x
    x=copy.deepcopy(c); x['scope']['p']='odd integer'; yield 'replace_prime_power_radix',x
    x=copy.deepcopy(c); x['scope']['coprime_m_p']=False; yield 'change_complete_source_contract',x
    x=copy.deepcopy(c); x['bounds']['general_threshold']=1; yield 'remove_size_hypothesis',x
    x=copy.deepcopy(c); x['endpoints'][0]['witness_sha256']='0'*64; yield 'forge_witness_digest',x

def main():
    c=json.loads((ROOT/'certificates/certificate.json').read_text())
    count=0
    with tempfile.TemporaryDirectory(prefix='b699-plus-bad-') as td:
        for name,bad in variants(c):
            path=Path(td)/(name+'.json'); path.write_text(json.dumps(bad))
            for script in ('check_primary.py','check_independent.py'):
                p=subprocess.run([sys.executable,'-B',str(ROOT/script),'--certificate',str(path)],
                    stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)
                if p.returncode==0: raise ValueError(f'BAD CERTIFICATE ACCEPTED: {name}, {script}')
            count+=1; print('REJECTED_BY_BOTH',name)
    print(f'PASS_BAD_CERTIFICATE_REJECTION cases={count}')
if __name__=='__main__': main()
