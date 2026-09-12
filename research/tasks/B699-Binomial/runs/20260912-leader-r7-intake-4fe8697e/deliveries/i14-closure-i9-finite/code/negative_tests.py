"""Actual rejection tests on fresh copies. Original source/certificates are never edited."""
from pathlib import Path
import json,copy,tempfile,subprocess,os,sys,time
R=Path(__file__).resolve().parents[1]
from check_terminal import receive as terminal_receive
from check_crt import receive as crt_receive

def expect_failure(name,fn,substring,accepted):
    try:fn()
    except (ValueError,AssertionError) as ex:
        if substring and substring not in str(ex):raise RuntimeError(f'{name}: wrong rejection {ex}')
        accepted.append(name)
    else:raise RuntimeError(f'{name}: corrupted certificate accepted')

def main():
    started=time.monotonic();accepted=[];source=R/'evidence/blocks';exe=R/'check_blocks'
    if not exe.exists():exe=R/'cache/bin/check_blocks'
    first=(source/'blocks_2_3.tsv').read_text().splitlines()
    modifications={}
    a=first.copy();h=a[0].split();h[3]='215';a[0]='\t'.join(h);modifications['block_wrong_constant']=a
    a=first.copy();a.pop(1);modifications['block_missing_initial_interval']=a
    a=first.copy();b=a[1].split();b[2]='100';a[1]='\t'.join(b);modifications['block_unsupported_q_divisor']=a
    a=first.copy();b=a[1].split();b[1]=str(int(b[1])+100);a[1]='\t'.join(b);modifications['block_false_large_interval']=a
    a=first.copy();b=a[1].split();b[3]='99';a[1]='\t'.join(b);modifications['block_unsigned_or_out_of_range_difference']=a
    with tempfile.TemporaryDirectory(prefix='b699-negative-') as td:
        root=Path(td)
        for p in source.glob('*.tsv'):
            if p.name!='blocks_2_3.tsv':(root/p.name).symlink_to(p)
        for name,lines in modifications.items():
            (root/'blocks_2_3.tsv').write_text('\n'.join(lines)+'\n')
            out=subprocess.run([str(exe),str(root),str(root/'summary.json')],capture_output=True,text=True,timeout=15)
            if out.returncode==0 or 'REJECT' not in out.stderr:raise RuntimeError(name+' failed to reject')
            accepted.append(name)
    d=json.loads((R/'evidence/crt_descent.json').read_text())
    a=copy.deepcopy(d);a['rows'][0]['M']=str(int(a['rows'][0]['M'])-1)
    expect_failure('crt_undersized_M',lambda:crt_receive(a),'incorrect minimal M',accepted)
    a=copy.deepcopy(d);a['rows'][0]['H']=str(int(a['rows'][0]['H'])-1)
    expect_failure('crt_broken_start_height',lambda:crt_receive(a),'descent linkage',accepted)
    a=copy.deepcopy(d);a['rows'][0]['start']=str(int(a['rows'][0]['start'])+1)
    expect_failure('crt_omitted_small_boundary',lambda:crt_receive(a),'small branch boundary',accepted)
    cert=json.loads((R/'evidence/terminal_certificate.json').read_text())
    intervals=[list(map(int,l.split())) for l in (R/'evidence/candidates.tsv').read_text().splitlines()]
    a=copy.deepcopy(cert);a['exceptions'].pop(0)
    expect_failure('terminal_missing_top_exception',lambda:terminal_receive(a,intervals),'missing full-j scalar exclusion',accepted)
    a=copy.deepcopy(cert);a['exceptions'][0]['top_prime']=25
    expect_failure('terminal_composite_top_witness',lambda:terminal_receive(a,intervals),'top witness not prime',accepted)
    a=copy.deepcopy(cert);a['exceptions'][0]['V']=str(int(a['exceptions'][0]['V'])*17)
    expect_failure('terminal_wrong_full_prime_power_part',lambda:terminal_receive(a,intervals),'incorrect full-power V',accepted)
    a=copy.deepcopy(cert);a['exceptions'].append(dict(a['exceptions'][0]))
    expect_failure('terminal_duplicate_exception',lambda:terminal_receive(a,intervals),'duplicate exception',accepted)
    # Re-run the colour-union receiver against one removed interval, in a private copy.
    import check_candidates as cc
    old_root=cc.R
    try:
        with tempfile.TemporaryDirectory(prefix='b699-candidate-negative-') as td:
            root=Path(td);(root/'evidence').mkdir()
            (root/'evidence/crt_descent.json').write_bytes((R/'evidence/crt_descent.json').read_bytes())
            lines=(R/'evidence/candidates.tsv').read_text().splitlines();del lines[len(lines)//2]
            (root/'evidence/candidates.tsv').write_text('\n'.join(lines)+'\n');cc.R=root
            expect_failure('candidate_missing_middle_interval',cc.main,'complete necessary superset',accepted)
    finally:cc.R=old_root
    result={'status':'PASS_ACTUAL_CERTIFICATE_CORRUPTION_REJECTIONS','negative_tests':accepted,'count':len(accepted),'seconds':round(time.monotonic()-started,3)}
    (R/'evidence/negative_tests.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result),flush=True)
if __name__=='__main__':main()
