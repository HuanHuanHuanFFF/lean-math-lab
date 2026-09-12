"""Second independent i18 theta review: small exact checks; no prime sieve/Lean.
All inputs are read-only. Outputs are confined to the directory of this script.
The main margin check uses rational midpoint/trapezoid integration of 1/x,
independent of both supplied logarithm-series implementations.
"""
from pathlib import Path
from fractions import Fraction as Q
from types import SimpleNamespace
from functools import lru_cache
import argparse, ast, datetime, hashlib, json, math, re, time

SPECS={(3,2):(Q(8103,5000),12018,30000000,128,106),
       (15,8):(Q(4541,2500),4211,6000000,64,95),
       (15,11):(Q(361,250),1373,3000000,64,78)}
ETA=Q(213,10**6); EPS=Q(1,100000); T=10**9; K2=Q(259,125)**2
OUT=Path(__file__).resolve().parent

def require(ok,msg):
    if not ok: raise ValueError(msg)

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()

@lru_cache(None)
def integral_log(x):
    # Convexity of 1/t bounds each integral between midpoint and trapezoid.
    n=256; step=(x-1)/n
    lower=step*sum((1/(1+(Q(k)+Q(1,2))*step) for k in range(n)),Q(0))
    upper=step*((1+1/x)/2+sum((1/(1+k*step) for k in range(1,n)),Q(0)))
    return lower,upper

def declared_log_upper(x):
    # Separate check of the certificate's exact reported number and remainder.
    z=(x-1)/(x+1)
    require(0<z<1,'atanh domain')
    partial=sum((2*z**(2*k+1)/(2*k+1) for k in range(100)),Q(0))
    return partial+2*z**201/(201*(1-z*z))

def valid_cells(c,d,W):
    N=c+d; out={}
    for t in range(1,N*(W+1)):
        w,r=divmod(t,N); j=(d*t)%N
        if 2*j<=N: continue
        g=d if j>=c else c-d; v=1+(g*t)//N
        out[t,g,v]=(w,j)
    return out

def apply_patch_text_in_memory(source,patch):
    lines=patch.splitlines(); idx=0; results={}
    while idx<len(lines):
        require(lines[idx].startswith('--- '),'patch old header')
        old_name=lines[idx][4:]; new_name=lines[idx+1][4:]
        require(lines[idx+1].startswith('+++ b/'),'patch new header')
        rel=new_name[2:]; require('..' not in Path(rel).parts,'patch path')
        old=[] if old_name=='/dev/null' else (source/rel).read_text(encoding='utf-8').splitlines()
        cursor=0; out=[]; idx+=2
        while idx<len(lines) and not lines[idx].startswith('--- '):
            m=re.fullmatch(r'@@ -(\d+)(?:,(\d+))? \+(\d+)(?:,(\d+))? @@.*',lines[idx])
            require(m is not None,'patch hunk header')
            start=int(m[1]); old_count=int(m[2] or 1); new_count=int(m[4] or 1)
            position=start-1 if start else 0
            require(position>=cursor,'patch hunk order');out+=old[cursor:position];cursor=position
            idx+=1; used=0; added=0
            while idx<len(lines) and not lines[idx].startswith(('@@ ','--- ')):
                line=lines[idx]; require(line and line[0] in ' +-','patch body prefix')
                if line[0] in ' -':
                    require(cursor<len(old) and old[cursor]==line[1:],'patch exact source context')
                    cursor+=1;used+=1
                if line[0] in ' +':out.append(line[1:]);added+=1
                idx+=1
            require(used==old_count and added==new_count,'patch hunk counts')
        out+=old[cursor:];results[rel]='\n'.join(out)+'\n'
    return results

def main(source,candidate):
    started=time.monotonic(); inputs={}
    def record(label,p):inputs[label]={'path':str(p),'bytes':p.stat().st_size,'sha256':sha(p)}
    original_path=source/'outputs/content_tail_certificates.json'
    corrected_path=candidate/'CORRECTED_THETA_CERTIFICATE.json'
    original=json.loads(original_path.read_text(encoding='utf-8'))
    corrected=json.loads(corrected_path.read_text(encoding='utf-8'))
    require(corrected['source_tail_sha256']==sha(original_path),'fixed original hash')
    require((Q(corrected['eta']),Q(corrected['epsilon']),corrected['transition'])==(ETA,EPS,T),'fixed new constants')
    require(Q(corrected['uniform_square_margin'])==4*ETA*EPS-K2/T>0,'uniform square margin')
    require(corrected['publication_sha256']==sha(candidate/'publication/BFTpaper0207.pdf'),'publication hash')
    old_rows={(r['c'],r['d']):r for r in original['rows']}
    new_rows={(r['c'],r['d']):r for r in corrected['rows']}
    require(len(original['rows'])==len(corrected['rows'])==3 and set(old_rows)==set(new_rows)==set(SPECS),'three target rows')
    evidence=[]
    for (c,d),(L,m0,M,W,count) in SPECS.items():
        N=c+d; old=old_rows[c,d]; new=new_rows[c,d]
        require(c>d>=1 and math.gcd(c,d)==1,'BFT integer assumptions')
        require((Q(old['L']),old['tail_M'],old['tail_W'],old['retained'])==(L,M,W,count),'old theorem constants')
        require((Q(new['L']),new['m0'],new['original_M'],new['W'],new['transition'])==(L,m0,M,W,T),'new theorem constants')
        require(m0+1<=M<=T and M>=2*N*(W+1),'join and W domain')
        old_terms={(r['t'],r['g'],r['den']):r for r in old['rows']}
        terms={(r['t'],r['g'],r['den']):r for r in new['terms']}
        require(len(old_terms)==len(old['rows'])==len(terms)==len(new['terms'])==count and set(old_terms)==set(terms),'exact distinct retained set')
        cells=valid_cells(c,d,W); bridge=Q(0);tail=Q(0);legacy=Q(0);direct=Q(0)
        maxX=Q(0);maxY=Q(0);minX=None;minY=None;minbr=None;mintr=None;individual_lowered=0;equal_j=0
        for key,r0 in old_terms.items():
            t,g,v=key;r1=terms[key]
            require(key in cells and cells[key]==(r0['w'],r0['j']),'reverse enumeration and source labels')
            w,j=cells[key]
            if j==c:
                equal_j+=1; rem=t%N
                require(rem==N-1 and Q(g,v)==Q(1,w+1)==Q(c-d,(c-d)*w+1+(c-d)*rem//N),'delta equality boundary')
            A,B,C=Q(N,t),Q(2,t),Q(g,v);e0=Q(r0['error_coefficient']);e=ETA*A+EPS
            require(A>0 and B>0 and C>0,'slope signs')
            require(e0==Q(r1['old_sqrt_error'])>=0 and e0*e0>=K2*A/M,'bridge error')
            require(A*M-B>=1 and A*T-B<=10**11 and C*T<=10**11,'whole bridge domain')
            require(e==Q(r1['corrected_error'])>=ETA*A and e*e>=K2*A/T,'infinite error')
            br=A-C-e0-B/M;tr=A-(1+ETA)*C-e-B/T; lr=Q(r0['rate_lower'])
            require(br==Q(r1['bridge_rate'])>0 and tr==Q(r1['corrected_tail_rate'])>0,'positive exact term rates')
            require(br>=lr,'legacy rate bridge interpretation')
            if tr<lr:individual_lowered+=1
            bridge+=br;tail+=tr;legacy+=lr;direct+=A-(1+ETA)*C-e0-B/M
            maxX=max(maxX,A*T-B);maxY=max(maxY,C*T)
            minX=A*M-B if minX is None else min(minX,A*M-B)
            minY=C*M if minY is None else min(minY,C*M)
            minbr=br if minbr is None else min(minbr,br);mintr=tr if mintr is None else min(mintr,tr)
        lo,hi=integral_log(L); actual_declared=d*declared_log_upper(L)
        require(Q(new['target_log_upper'])==actual_declared,'reported log upper exact formula')
        require(bridge==Q(new['bridge_rate_sum']) and tail==Q(new['tail_rate_sum']),'all exact sums')
        require(legacy==Q(old['logG_over_m_lower']) and min(bridge,tail)>=legacy,'old aggregate preserved')
        require(bridge>d*hi and tail>d*hi,'independent trapezoid strict margins')
        require(Q(new['bridge_margin'])==bridge-actual_declared and Q(new['tail_margin'])==tail-actual_declared,'reported margins exact')
        finite_path=source/f'outputs/content_finite_{c}_{d}.json'; fin=json.loads(finite_path.read_text(encoding='utf-8'))
        require((fin['m0'],fin['start_m'],fin['tail_M'],Q(fin['L']))==(m0,m0+1,M,L),'finite interfaces')
        next_m=m0+1
        for block in fin['blocks']:
            a,b,wcap=(block[k] for k in ('a','b','W'))
            require(a==next_m and a<=b<M and wcap>=0 and 2*N*(wcap+1)<=a,'finite block joins and BFT range')
            next_m=b+1
        require(next_m==M and len(fin['blocks'])==fin['block_count'],'finite final endpoint')
        record(f'original:{finite_path.relative_to(source).as_posix()}',finite_path)
        ev=dict(c=c,d=d,L=str(L),m0=m0,M=M,W=W,terms=count,equality_j_terms=equal_j,
                finite_blocks=len(fin['blocks']),finite_interval=[m0+1,M-1],bridge_interval=[M,T],tail_start=T,
                min_bridge_X=str(minX),min_bridge_Y=str(minY),max_bridge_X=str(maxX),max_bridge_Y=str(maxY),
                min_bridge_rate=str(minbr),min_tail_rate=str(mintr),trapezoid_log_lower=str(lo),trapezoid_log_upper=str(hi),
                bridge_margin_lower=str(bridge-d*hi),tail_margin_lower=str(tail-d*hi),
                bridge_margin_display=float(bridge-d*hi),tail_margin_display=float(tail-d*hi),
                tail_minus_old_aggregate=str(tail-legacy),individual_tail_below_legacy_terms=individual_lowered,
                direct_old_error_correct_eta_margin_display=float(direct-d*hi))
        evidence.append(ev)
    patch_sources=json.loads((candidate/'PATCH_SOURCES.json').read_text(encoding='utf-8'))
    patched=apply_patch_text_in_memory(source,(candidate/'corrected-theta.patch').read_text(encoding='utf-8'))
    require(set(patched)=={r['path'] for r in patch_sources},'five exact patch targets')
    patch_evidence=[]
    for r in patch_sources:
        rel=r['path']; old=source/rel; new=candidate/'patch-candidate'/rel
        require((sha(old) if old.exists() else None)==r['old_sha256'],'patch source hash')
        require(sha(new)==r['new_sha256'],'patch candidate byte hash')
        require(patched[rel]==new.read_text(encoding='utf-8'),'normalized in-memory patch result')
        if rel.endswith('.py'):compile(patched[rel],rel,'exec')
        patch_evidence.append(dict(path=rel,old_sha256=r['old_sha256'],candidate_sha256=r['new_sha256'],
            normalized_sha256=hashlib.sha256(patched[rel].encode()).hexdigest(),candidate_crlf=new.read_bytes().count(b'\r\n')))
    # Execute only the patched mathematical checker functions, with this review's
    # independent integral log upper. No module top-level imports/main or sieve.
    tree=ast.parse(patched['code/check_content_bounds.py'])
    wanted={'need','reverse_cells','verify_tail'}
    nodes=[n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name in wanted]
    require({n.name for n in nodes}==wanted,'patched function extraction')
    env={'F':Q,'ETA':ETA,'EXPECTED':{key:(str(v[0]),v[1],v[2],v[3]) for key,v in SPECS.items()},
         'logq':lambda x:SimpleNamespace(lo=integral_log(x)[0],hi=integral_log(x)[1])}
    exec(compile(ast.Module(body=nodes,type_ignores=[]),'patched-math-only','exec'),env)
    patched_results=[env['verify_tail'](old_rows[key]) for key in SPECS]
    pairs=json.loads((source/'outputs/i18_pair_certificate.json').read_text(encoding='utf-8'))
    require(len(pairs['rows'])==pairs['count']==10,'ten original Pade rows')
    dependent=[]
    for row in pairs['rows']:
        if row['content_source']!='new_prime_interval_bound':continue
        L,m0,*_=SPECS[row['c'],row['d']]
        require(Q(row['L1'])==L and row['m0']==m0,'unchanged downstream G interface')
        dependent.append({k:row[k] for k in ('p','q','c','d','L1','m0')})
    require(len(dependent)==7,'seven new-G dependencies')
    for rel in ['outputs/content_tail_certificates.json','notes/CONTENT_PROOF.md','REPORT.md','code/content_bounds.py',
                'code/check_content_bounds.py','code/vendor/rational_intervals.py','code/certify_i18_pairs.py',
                'code/check_i18_pairs_independent.py','code/check_i18_height.py','outputs/i18_pair_certificate.json',
                'outputs/i18_height_certificate.json','outputs/terminal_certificate_18.json','input/i18_target.json']:
        record('original:'+rel,source/rel)
    for rel in ['CORRECTION.md','CORRECTED_THETA_CERTIFICATE.json','check_corrected_theta.py','build_corrected_theta.py',
                'corrected-theta.patch','PATCH_SOURCES.json','PATCH_README.md','publication/BFTpaper0207.pdf']:
        record('candidate:'+rel,candidate/rel)
    record('second-review:independent_check.py',Path(__file__))
    result=dict(status='PASS_SECOND_INDEPENDENT_ANALYTIC_REVIEW',verifier='/root/i18_correction_review',
        utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),baseline='9d4228e3ed0de4bb6b8e555ca59af3f53d578c67',
        eta=str(ETA),epsilon=str(EPS),transition=T,uniform_square_margin=str(4*ETA*EPS-K2/T),
        log_method='256-panel exact rational midpoint and trapezoid integration of 1/x',
        rows=evidence,patch_text_and_math=patch_evidence,patched_checker_with_independent_log=patched_results,
        unchanged_G_dependent_pade_rows=dependent,original_finite_prime_sums_recomputed=False,
        original_pade_height_blocks_crt_terminal_replayed=False,lean_run=False,
        existing_first_REVIEW_read_before_check=False,inputs=inputs,elapsed_seconds=time.monotonic()-started)
    (OUT/'INDEPENDENT_CHECK.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:result[k] for k in ('status','eta','transition','uniform_square_margin','elapsed_seconds')},indent=2))
    print(json.dumps([{k:r[k] for k in ('c','d','terms','finite_blocks','bridge_margin_display','tail_margin_display','individual_tail_below_legacy_terms')} for r in evidence],indent=2))

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--source',required=True,type=Path);ap.add_argument('--candidate',required=True,type=Path)
    args=ap.parse_args();main(args.source.resolve(),args.candidate.resolve())