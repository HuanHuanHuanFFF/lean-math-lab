"""Must-reject tests for independent receivers. No positive evidence is edited."""
from pathlib import Path
from copy import deepcopy
from fractions import Fraction as F
import json,sys,tempfile,subprocess
R=Path(__file__).resolve().parents[1];sys.path.insert(0,str(R/'code'))
import verify_content_resume as content
import check_graph_and_height as graph
import verify_cuts as cuts

def main():
    passed=[]
    def reject(name,fn):
        try:fn()
        except (AssertionError,ValueError,IndexError,KeyError):passed.append(name);return
        raise RuntimeError('A malformed certificate was ACCEPTED: '+name)
    tails=json.loads((R/'evidence/content_tail.json').read_text())['rows'];base=tails[0];cells=content.catalog(base['e'],base['d'],base['f'])
    content.check_tail(base,cells)
    x=deepcopy(base);x['rows'].pop();reject('tail_missing_term',lambda:content.check_tail(x,cells))
    x=deepcopy(base);x['rows'][0]['error']='0';reject('tail_understated_error',lambda:content.check_tail(x,cells))
    x=deepcopy(base);x['rows'][0]['error_source']='relative_from_1e8';reject('tail_wrong_relative_domain',lambda:content.check_tail(x,cells))
    x=deepcopy(base);x['rows'][0]['w']=base['W']+1;reject('tail_wrong_catalogue_cell',lambda:content.check_tail(x,cells))
    gdoc=json.loads((R/'evidence/graph_certificate.json').read_text());edges=gdoc['edges'];g=gdoc['graphs'][0];graph.check_graph(g,edges)
    x=deepcopy(g);b=next(n for n in x['dag']['nodes'] if n['kind']=='bound');b['value']+=1;reject('graph_false_leaf_value',lambda:graph.check_graph(x,edges))
    x=deepcopy(g);x['dag']['nodes'][0]['children'].pop();reject('graph_missing_disjunct',lambda:graph.check_graph(x,edges))
    x=deepcopy(g);x['lower']+=1;reject('graph_false_minimum',lambda:graph.check_graph(x,edges))
    inp=json.loads((R/'input/cuts.json').read_text());r=next(r for r in inp['cuts'] if r['content_source']=='new_permutation_content');cuts.obligations(r,inp['height_Y_bits'],13)
    x=deepcopy(r);x['g']=str(F(x['g'])+1);reject('cut_inflated_content_rate',lambda:cuts.exact_rates(x))
    x=deepcopy(r);x['m0']-=1;reject('cut_understated_content_threshold',lambda:cuts.exact_rates(x))
    x=deepcopy(r);x['content_source']='NEW_UNPROVED_G';reject('cut_unproved_dependency',lambda:cuts.exact_rates(x))
    x=deepcopy(r);x['wp']=9999;reject('cut_overstated_weight',lambda:cuts.obligations(x,inp['height_Y_bits'],13))
    original=(R/'evidence/content_finite_1_2_2.blocks').read_text().splitlines()
    variants={}
    x=original[:];first=x[1].split();first[2]=str(int(first[2])+1);x[1]=' '.join(first);variants['finite_wrong_lower_sum']=x
    x=original[:];first=x[1].split();first[0]=str(int(first[0])+1);x[1]=' '.join(first);variants['finite_gap_at_start']=x
    x=original[:-1];variants['finite_missing_last_block']=x
    x=original[:];head=x[0].split();head[3]=str(int(head[3])+1);x[0]=' '.join(head);variants['finite_changed_target']=x
    with tempfile.TemporaryDirectory(prefix='proa-rejection-') as tmp:
        for name,lines in variants.items():
            f=Path(tmp)/'bad.blocks';f.write_text('\n'.join(lines)+'\n')
            run=subprocess.run([str(R/'bin/hybrid_content_check'),str(R/'input/content_catalog_1_2_2.txt'),str(R/'cache/primes'),str(f)],capture_output=True,text=True)
            assert run.returncode!=0 and 'REJECT' in run.stderr,name
            passed.append(name)
    out=dict(status='PASS_ALL_MALFORMED_CERTIFICATES_REJECTED',tests=passed,count=len(passed));(R/'evidence/negative_tests.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
if __name__=='__main__':
    if not __debug__:raise RuntimeError('No -O')
    main()
