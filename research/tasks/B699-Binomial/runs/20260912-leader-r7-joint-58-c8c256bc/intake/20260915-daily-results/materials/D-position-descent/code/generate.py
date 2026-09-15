from core import *
import argparse,time
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args();a.out.mkdir(parents=True,exist_ok=True)
 t=time.perf_counter();bs=bounds();low,sm=expected_finite(bs)
 print(json.dumps({'stage':'finite-domain','seconds':time.perf_counter()-t,'rows':len(low),'summary':sm}),flush=True)
 high,crt=candidate_027();print(json.dumps({'stage':'crt027','seconds':time.perf_counter()-t,**crt,'first_rows':high[:5],'last_rows':high[-5:]}),flush=True)
 allrows=sorted(set(low+[(8,n) for n in high]));spf=sieve_spf(max(n for m,n in low));rows=[]
 for m,n in allrows:rows.append(cover_row(n,m,spf))
 cert={'schema':'b699-D-position-descent-finite-v1','bounds':bs,'domain_summary':sm,'crt027':crt,'high027':high,'rows':rows}
 (a.out/'finite_certificate.json').write_text(json.dumps(cert,sort_keys=True,separators=(',',':'))+'\n')
 print(json.dumps({'status':'GENERATED','seconds':time.perf_counter()-t,'rows':len(rows),'intervals':sum(len(r['cover']) for r in rows),'represented_j':sum(n//2-m for m,n in allrows)}),flush=True)
