"""Materialize only the final small cofactor families, retaining distinct colours."""
from pathlib import Path
import json,sys,time,resource
R=Path(__file__).resolve().parents[1];sys.path.insert(0,str(R/'code/vendor'))
from extra_terminal_probe import explicit_cover

def union(intervals):
 out=[]
 for a,b in sorted(intervals):
  if a>b:continue
  if out and a<=out[-1][1]+1:out[-1][1]=max(out[-1][1],b)
  else:out.append([a,b])
 return out

def main():
 row=json.loads((R/'input/crt_parameters.json').read_text());stages=json.loads((R/'evidence/crt_stages.json').read_text());cost=json.loads((R/'evidence/terminal_cost.json').read_text())
 H=int(stages[-1]['next_H']);assert int(cost['H'])==H and cost['event_upper_bytes']<1024**3
 st=time.monotonic();terminal=explicit_cover(row,H)
 assert terminal['raw_intervals']==cost['raw_intervals'];candidate=union([[22,terminal['start']-1]]+terminal['segments']);assert candidate[-1][1]+1==H
 out=dict(status='COMPLETE_NECESSARY_CANDIDATE_SET_NOT_YET_EXCLUDED',i=10,r=row['r'],s=row['s'],terminal_cover=terminal,candidate_intervals=candidate,rows=sum(b-a+1 for a,b in candidate),intervals=len(candidate),max_n=candidate[-1][1],seconds=time.monotonic()-st,peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (R/'evidence/candidates.json').write_text(json.dumps(out,separators=(',',':'))+'\n');print(json.dumps({k:v for k,v in out.items() if k not in ['candidate_intervals','terminal_cover']},indent=2),flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
