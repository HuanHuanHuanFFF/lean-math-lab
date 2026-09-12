"""Reproduce the three exceptional candidate-composition source checks. No Lean calls."""
from pathlib import Path
import datetime,json,re,sys
OUT=Path(__file__).resolve().parent;LEAN=OUT.parents[1]/'lean';issues=[]
def read(s):return (LEAN/s).read_text(encoding='utf-8-sig')
def ck(ok,detail):
 if not ok:issues.append(detail)
def pairs(s):return [tuple(map(int,x)) for x in re.findall(r'\((\d+),\s*(\d+)\)',s)]
def cover(lo,hi,ints):
 for a,b in ints:
  if hi<lo:return True
  if b<lo:continue
  if a>lo:return False
  if b>=hi:return True
  lo=b+1
 return hi<lo
bounds={};chunk_lists={}
for f in (LEAN/'I11TerminalData').glob('Chunk*.lean'):
 txt=f.read_text(encoding='utf-8-sig')
 for key,a,b in re.findall(r'def (w\d+) : Witness := \.good ⟨(\d+), (\d+),',txt):bounds[f'{f.stem}.{key}']=(int(a),int(b))
 for key in re.findall(r'def (w\d+) : Witness := \.special330',txt):bounds[f'{f.stem}.{key}']=(330,330)
 body=re.search(r'def witnesses : List Witness := \[([^\n]*)\]',txt)[1]
 chunk_lists[f.stem]=[bounds[f'{f.stem}.{key}'] for key in re.findall(r'\bw\d+\b',body)]
def actual_refs(refs):
 if refs.startswith('B699LowIndex.I11TerminalData.') and refs.endswith('.witnesses'):return chunk_lists[refs.split('.')[-2]]
 return [bounds[x] for x in re.findall(r'B699LowIndex\.I11TerminalData\.(Chunk\d+\.w\d+)',refs)]
parts={}
for f in sorted((LEAN/'I11TerminalCandidateCoverage/FirstParts').glob('P*.lean')):
 txt=f.read_text(encoding='utf-8-sig');intr=pairs(re.search(r'private def intervals : List NatInterval := (\[[^\n]*\])',txt)[1]);refs=re.search(r'private def witnesses : List Witness := ([^\n]+)',txt)[1]
 lo,hi=map(int,re.search(r'theorem sound : IntervalSound \((\d+), (\d+)\)',txt).groups())
 ck(actual_refs(refs)==intr,('first_part_witness_identity',f.stem));ck(cover(lo,hi,intr),('first_part_cover',f.stem));parts[f.stem]=(lo,hi)
first=read('I11TerminalCandidateCoverage/First.lean');firstints=pairs(re.search(r'private def intervals : List NatInterval := (\[[^\n]*\])',first)[1]);firstrefs=re.findall(r'Math\.B699\.I11TerminalCandidateCoverage\.FirstParts\.(P\d+)\.sound',first)
ck([parts[k] for k in firstrefs]==firstints,'first_actual_sound_references');ck(cover(24,4010,firstints),'first_entire_interval')
g0=read('I11TerminalCandidateCoverage/Groups/G000.lean')
for tag in ['c0010_p00','c0010_p01']:
 intr=pairs(re.search(r'private def '+tag+r'_intervals : List NatInterval := (\[[^\n]*\])',g0)[1]);refs=re.search(r'private def '+tag+r'_witnesses : List Witness := ([^\n]+)',g0)[1]
 lo,hi=map(int,re.search(r'private theorem '+tag+r'_sound : IntervalSound \((\d+), (\d+)\)',g0).groups())
 ck(actual_refs(refs)==intr,('split_piece_witness_identity',tag));ck(cover(lo,hi,intr),('split_piece_cover',tag))
ck(cover(4300,4346,pairs(re.search(r'private def c0010_segments : List NatInterval := (\[[^\n]*\])',g0)[1])),'candidate_10_composition')
last=read('I11TerminalCandidateCoverage/Last.lean');lastints=pairs(re.search(r'private def intervals : List NatInterval := (\[[^\n]*\])',last)[1]);lastrefs=re.search(r'private def witnesses : List Witness := ([^\n]+)',last)[1];ck(actual_refs(lastrefs)==lastints,'last_witness_identity');ck(cover(29294601,29294602,lastints),'last_interval')
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'first_parts':len(parts),'special_candidates':[0,10,1054],'issues':issues,'kind':'independent finite source/data diagnostic, not Lean acceptance'}
name='special-coverage-replay-'+datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')+'.json';(OUT/name).write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps(result,ensure_ascii=False,indent=2));sys.exit(1 if issues else 0)
