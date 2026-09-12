"""Mutation checks for required coverage, not a substitute for the proof."""
from pathlib import Path
import tempfile,shutil,json,argparse
from check_certificates import check

def main():
 ap=argparse.ArgumentParser();ap.add_argument('certdir');ap.add_argument('output');a=ap.parse_args();base=Path(a.certdir)
 cases=[
 ('delete_outer','outer',lambda z:z['rows'].pop()),
 ('duplicate_outer','outer',lambda z:z['rows'].append(z['rows'][0].copy())),
 ('replace_modulus_one','outer',lambda z:z['rows'][0].update(modulus=1)),
 ('unproved_short_period','outer',lambda z:z.update(period=30)),
 ('alter_odd_part','outer',lambda z:z['rows'][0].update(odd_part=z['rows'][0]['odd_part']+2)),
 ('delete_h4_residue','middle',lambda z:z['h4_exclusions'].pop()),
 ('truncate_mod64_roots','middle',lambda z:z['mod64'][-1].update(roots_mod64=[0])),
 ('raise_unchecked_small_threshold','middle',lambda z:z.update(threshold=512)),
 ('drop_pell_orbit','pell',lambda z:z['seeds'].pop()),
 ('drop_pell_term','pell',lambda z:z['terms'].pop()),
 ('alter_pell_cutoff','pell',lambda z:z.update(index_bound_exclusive=21)),
 ('false_dyadic_term','pell',lambda z:z['terms'][3].update(dyadic=True)),
 ]
 results=[]
 for name,fn,change in cases:
  with tempfile.TemporaryDirectory() as td:
   t=Path(td)
   for f in ['outer','middle','pell']:shutil.copy2(base/(f+'.json'),t/(f+'.json'))
   f=t/(fn+'.json');z=json.loads(f.read_text());change(z);f.write_text(json.dumps(z))
   rejected=False
   try:check(t)
   except (AssertionError,KeyError,ValueError):rejected=True
   assert rejected,name
   results.append(name)
 Path(a.output).write_text(json.dumps({'rejected':results,'count':len(results),'status':'PASS'},indent=2)+'\n')
 print('PASS',len(results),'mutated finite certificates rejected')
if __name__=='__main__':main()
