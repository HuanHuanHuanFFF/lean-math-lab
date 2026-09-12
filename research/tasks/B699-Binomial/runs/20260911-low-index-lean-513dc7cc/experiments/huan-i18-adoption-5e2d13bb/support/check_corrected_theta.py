"""Independent arithmetic checker for the corrected paper appendix.
No generator or upstream helper imports. Uses 180-term -log(1-u) bounds,
whereas the certificate builder uses a 100-term atanh expansion.
It does not establish BFT publication lemmas or replay finite certificates.
"""
from pathlib import Path
from fractions import Fraction as F
import json, hashlib, sys, time, copy

specs={(3,2):(F(8103,5000),12018,30000000,128),
       (15,8):(F(4541,2500),4211,6000000,64),
       (15,11):(F(361,250),1373,3000000,64)}
def need(x,what):
    if not x:raise ValueError(what)
def log_bracket(x):
    u=1-1/F(x);need(0<u<F(1,2),'log domain');term=u;s=F(0)
    for k in range(1,181):s+=term/k;term*=u
    return s,s+term/(181*(1-u))

def check(cert,source):
    source_path=source/'outputs/content_tail_certificates.json'; raw=source_path.read_bytes()
    need(hashlib.sha256(raw).hexdigest()==cert['source_tail_sha256'],'fixed original tails')
    need(cert['schema']=='b699-i18-corrected-theta-hybrid-tail-v1','schema')
    eta=F(213,10**6);eps=F(1,100000);T=10**9;k2=F(259,125)**2
    need(F(cert['eta'])==eta and F(cert['epsilon'])==eps and cert['transition']==T,'corrected fixed constants')
    need(4*eta*eps-k2/T==F(cert['uniform_square_margin'])>0,'uniform square certificate')
    original={(r['c'],r['d']):r for r in json.loads(raw)['rows']}
    need(len(cert['rows'])==3 and {(r['c'],r['d']) for r in cert['rows']}==set(specs),'three targets')
    result=[]
    for row in cert['rows']:
        c,d=row['c'],row['d'];N=c+d;L,m0,M,W=specs[c,d]
        need((F(row['L']),row['m0'],row['original_M'],row['W'],row['transition'])==(L,m0,M,W,T),'fixed G theorem')
        need(M<=T and M>=2*N*(W+1),'bridge and BFT truncation domains')
        old={(r['t'],r['g'],r['den']):r for r in original[c,d]['rows']}
        need(len(old)==len(original[c,d]['rows'])==len(row['terms']),'row counts')
        seen=set();btotal=F(0);ttotal=F(0);maxX=F(0);maxY=F(0)
        for term in row['terms']:
            t,g,v=term['t'],term['g'],term['den'];key=(t,g,v)
            need(key in old and key not in seen,'unmodified unique source cell');seen.add(key)
            w,r=divmod(t,N);j=d*r%N
            need(t>0 and 0<=w<=W and 2*j>N,'BFT cell range')
            need(g==(d if j>=c else c-d) and v==g*w+1+g*r//N,'BFT cell denominator')
            if j==c:need(F(g,v)==F(1,w+1),'both delta boundary')
            A,B,C=F(N,t),F(2,t),F(g,v);e0=F(old[key]['error_coefficient'])
            need(e0==F(term['old_sqrt_error']) and e0>=0 and e0*e0>=k2*A/M,'bridge sqrt bound')
            need(A*M-B>=1 and A*T-B<=10**11 and 0<C*T<=10**11,'finite theta domains')
            br=A-C-e0-B/M;need(br==F(term['bridge_rate']) and br>0,'bridge rate')
            e=eta*A+eps
            need(e==F(term['corrected_error']) and e>=eta*A and e*e>=k2*A/T,'global correct theta error')
            tr=A-(1+eta)*C-e-B/T;need(tr==F(term['corrected_tail_rate']) and tr>0,'global tail rate')
            btotal+=br;ttotal+=tr;maxX=max(maxX,A*T-B);maxY=max(maxY,C*T)
        need(seen==set(old),'all retained terms')
        need(btotal==F(row['bridge_rate_sum']) and ttotal==F(row['tail_rate_sum']),'exact sums')
        lower,upper=log_bracket(L);target=d*upper
        need(d*lower<=F(row['target_log_upper'])<=target,'independent log bracket')
        need(btotal>target and ttotal>target,'positive independent margins')
        need(F(row['bridge_margin'])==btotal-F(row['target_log_upper']) and F(row['tail_margin'])==ttotal-F(row['target_log_upper']),'reported margins')
        result.append(dict(c=c,d=d,terms=len(seen),bridge=[M,T],tail_start=T,
                           max_bridge_X=str(maxX),max_bridge_Y=str(maxY),
                           bridge_margin_lower=str(btotal-target),tail_margin_lower=str(ttotal-target),
                           tail_margin_approx=float(ttotal-target)))
    return result

if __name__=='__main__':
    st=time.monotonic();source=Path(sys.argv[1]).resolve();where=Path(__file__).resolve().parent
    path=where/'CORRECTED_THETA_CERTIFICATE.json';cert=json.loads(path.read_text());rows=check(cert,source)
    mutations=[]
    for tag in ['wrong_eta','wrong_transition','missing_term','bad_error']:
        bad=copy.deepcopy(cert)
        if tag=='wrong_eta':bad['eta']='213/10000000'
        if tag=='wrong_transition':bad['transition']=10**12
        if tag=='missing_term':bad['rows'][0]['terms'].pop()
        if tag=='bad_error':bad['rows'][0]['terms'][0]['corrected_error']='0'
        try:check(bad,source)
        except ValueError as exc:mutations.append(dict(case=tag,rejected=True,reason=str(exc)))
        else:raise ValueError('bad certificate accepted: '+tag)
    result=dict(status='PASS_CORRECTED_ANALYTIC_BRIDGE_AND_INFINITE_TAILS',rows=rows,
                source_certificate_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
                checker_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                elapsed_seconds=time.monotonic()-st,mutant_rejections=mutations,
                scope='279 terms checked with correct BFT constant. Original finite prime sums, exponent residues, CRT and terminal certificates are not rerun.')
    (where/'CORRECTED_THETA_CHECK.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(dict(status=result['status'],rows=[{k:v for k,v in r.items() if 'margin_lower' not in k} for r in rows],
                          rejected_mutants=len(mutations),elapsed_seconds=result['elapsed_seconds']),indent=2))
