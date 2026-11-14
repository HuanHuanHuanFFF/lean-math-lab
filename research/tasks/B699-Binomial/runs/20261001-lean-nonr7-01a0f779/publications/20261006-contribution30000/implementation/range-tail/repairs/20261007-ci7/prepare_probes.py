"""Prepare exact-prefix/tiny-data diagnostics; never replaces a whole range artifact."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import re

here=Path(__file__).resolve().parent
repo=next(parent for parent in here.parents if (parent/'AGENTS.md').is_file())
output=here/'probes'
output.mkdir(exist_ok=True)
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
middle_path=here/'Middle323_999.lean'
high_path=here/'High1000_30000.lean'
middle=middle_path.read_text(encoding='utf-8')
high=high_path.read_text(encoding='utf-8')
records=[]
def save(identifier,text,root,original,purpose,details):
    text=re.sub(r'set_option maxHeartbeats \d+','set_option maxHeartbeats 400000',text)
    namespace=text.index('namespace ')
    text=text[:namespace]+'set_option profiler true\nset_option profiler.threshold 100\n'+text[namespace:]
    path=output/(identifier+'.lean')
    path.write_text(text,encoding='utf-8',newline='\n')
    records.append({'id':identifier,'path':str(path.relative_to(repo)).replace('\\','/'),
        'bytes':path.stat().st_size,'sha256':sha(path),'root':root,
        'originalSource':{'path':str(original.relative_to(repo)).replace('\\','/'),'sha256':sha(original)},
        'wallTimeoutSeconds':180,'heartbeatLimit':400000,'threads':1,
        'purpose':purpose,'details':details,'proofAccepted':False})

prefix=middle[:middle.index('def basis : List Nat')]
segment_prefix=middle[:middle.index('def sg0 :')]
entries=[line.rstrip(',]') for line in middle.splitlines() if re.match(r'^⟨\d+,"',line)]
assert len(entries)==687
for count in (1,16):
    identifier='MiddleJoin'+str(count).zfill(3)
    namespace='Contribution.Profiling'+identifier
    chosen=entries[-count:]
    lo=int(re.match(r'^⟨(\d+)',chosen[0])[1])
    source=segment_prefix.replace('Contribution.Middle323',namespace)
    source+='def profilingSegments : List (Segment 322 true) := [\n'+',\n'.join(chosen)+']\n'
    source+=f'theorem profilingChain : N6.PrimeChain 322 {lo} 2000003 :=\n  join_sound (ss:=profilingSegments) (by decide +kernel) (by decide +kernel)\n'
    source+='end '+namespace+'\n#print axioms '+namespace+'.profilingChain\n'
    save(identifier,source,namespace+'.profilingChain',middle_path,'diagnosis only; copied final1/16 segments, no 323..999 acceptance',
         {'segmentsCopied':count,'chainInterval':[lo,2000003],'dataSourceEntries':[687-count,686],'fullChainExcluded':True})

height_schema=middle[middle.index('structure HeightRow where'):middle.index('def hr0 :')]
height_entries={int(re.match(r'^⟨(\d+)',line)[1]):line.rstrip(',]') for line in middle.splitlines()
                if re.match(r'^⟨\d+,\d+,\d+,\d+,by rw',line)}
assert len(height_entries)==677
for count in (1,16):
    identifier='MiddleHeight'+str(count).zfill(3)
    namespace='Contribution.Profiling'+identifier
    source=(prefix+height_schema).replace('Contribution.Middle323',namespace)
    source+='def profilingRows : List HeightRow := [\n'+',\n'.join(height_entries[i] for i in range(842,842+count))+']\n'
    source+=f'theorem profilingChecked : heightCheck 842 {842+count} profilingRows=true := by decide +kernel\n'
    source+='end '+namespace+'\n#print axioms '+namespace+'.profilingChecked\n'
    save(identifier,source,namespace+'.profilingChecked',middle_path,'diagnosis only; exact risky height842 then16rows, no full range acceptance',
         {'heightIndicesCopied':[842,841+count],'rowsCopied':count,'all677RowsExcluded':True})

identifier='MiddlePrelude'
namespace='Contribution.Profiling'+identifier
source=prefix.replace('Contribution.Middle323',namespace)
source+='theorem profilingNearTop {gap lo hi n : Nat} (hc : N6.PrimeChain gap lo hi)\n  (hl : lo≤n) (hh : n<hi) : ∃ p : Nat, p.Prime ∧ p≤n ∧ n<p+gap := hc.near_top hl hh\n'
source+='end '+namespace+'\n#print axioms '+namespace+'.profilingNearTop\n'
save(identifier,source,namespace+'.profilingNearTop',middle_path,'diagnosis only; copied general prefix and restored original API',{'numericTablesExcluded':True})

identifier='HighPrelude'
namespace='Contribution.Profiling'+identifier
source=high[:high.index('def poolList :')].replace('Contribution.Range',namespace)
source+='theorem profilingPrelude : True := by trivial\nend '+namespace+'\n#print axioms '+namespace+'.profilingPrelude\n'
save(identifier,source,namespace+'.profilingPrelude',high_path,'diagnosis only; exact prefix before sieve pool and factorial',{'numericalSieveAndFactorialExcluded':True})

F=re.search(r'^def F : Nat := (\d+)$',high,re.M)[1]
for identifier,goal in [('HighFactorial','theorem profilingFactorial : F = Nat.factorial 11085 := by decide +kernel'),
                        ('HighGcdOne','theorem profilingGcd : Nat.gcd 122879557 F = 1 := by decide +kernel')]:
    namespace='Contribution.Profiling'+identifier
    source='import Mathlib.Data.Nat.Factorial.Basic\nimport Mathlib.Data.Nat.GCD.Basic\nset_option maxHeartbeats 400000\nset_option maxRecDepth 65536\nnamespace '+namespace+'\ndef F : Nat := '+F+'\n'+goal+'\nend '+namespace+'\n'
    root=namespace+('.profilingFactorial' if identifier=='HighFactorial' else '.profilingGcd')
    source+='#print axioms '+root+'\n'
    save(identifier,source,root,high_path,'diagnosis only; isolate original F equality or gcd, no primality/S acceptance',
         {'FConstantCopiedExactly':True,'factorialIncluded':identifier=='HighFactorial','primeClaim':False,'gcdPrimeNode':122879557 if identifier=='HighGcdOne' else None})

order=['MiddlePrelude','MiddleJoin001','MiddleJoin016','MiddleHeight001','MiddleHeight016','HighPrelude','HighFactorial','HighGcdOne']
records=[next(record for record in records if record['id']==identifier) for identifier in order]
manifest={'status':'prepared range diagnosis inputs only; not executed; no contribution acceptance',
    'timeUTC':datetime.now(timezone.utc).isoformat(),'owner':'/root/b699_contribution_environment',
    'officialProductionCommit':'6a786f997e18e8f095762a2830d191b7e25e505e',
    'officialPolicyCommit':'be220ff2519ecfd61b28ba9e477321e4287ef6b4',
    'fixedLeanCommit':'819816b2e0a3bf405af45ae5c7af2491d8f5bee6','proofAccepted':False,
    'nativeLeanExecuted':False,'probes':records,'executionOrder':[r['id'] for r in records],
    'selectedBytes':sum(r['bytes'] for r in records),
    'nextSelection':'Leader selects explicit subset after independent source review; do not blindly launch all8',
    'fullContractUnchanged':'185..322/323..999/1000..30000, every legal Nat n/j, same actual Prime p>=i dividing both full choose'}
(here/'PROBE-REQUEST.json').write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({'count':len(records),'bytes':manifest['selectedBytes'],'manifestSha256':sha(here/'PROBE-REQUEST.json')}))
