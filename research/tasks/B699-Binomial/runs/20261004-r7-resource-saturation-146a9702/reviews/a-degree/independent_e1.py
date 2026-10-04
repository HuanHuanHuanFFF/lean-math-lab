"""Independent verifier: direct outer tuples and forward exact-cost convolution.
No import or execution of either author implementation. Uses all 649 input rows,
not a Pareto deletion, and targets all 416 E1 states. Output stays in this folder.
"""
from pathlib import Path
from collections import Counter
import ctypes, hashlib, json, platform, sys, time

ROOT = Path.cwd()
OUT = Path(__file__).resolve().parent
RUN = ROOT / 'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702'
INTAKE = ROOT / 'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake'
TABLE = INTAKE / '20260927-session-results/objects/cf/cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553.txt'
EXPECTED = {
    str(RUN / 'notes/a/02-seven-factor-excess-bound.md'): 'c464d68726ee40d731bf4e77aa63798c271854555c34846bc9aa2976541230f3',
    str(RUN / 'notes/a/01-resource-model.md'): 'f86143742df61012ea3ac4ec4443d0da364cb932b46d3a684796dfb52fc60ac2',
    str(TABLE): 'cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553',
    str(INTAKE / '20260924-session-results/objects/13/1318319ffd765a2e8f637afb0e536db4d45e9c0bda2cab130fe7403a3412091e.md'): '1318319ffd765a2e8f637afb0e536db4d45e9c0bda2cab130fe7403a3412091e',
    str(INTAKE / '20261003-session-results/objects/75/753fdd3baf4ff9fd492562a74e9d5964ab2782ea808bb9e6db3fc62428f91fd5.md'): '753fdd3baf4ff9fd492562a74e9d5964ab2782ea808bb9e6db3fc62428f91fd5',
}
OFF = [(77,74), (67,57), (51,54,46), (40,43,48), (31,34,39,45), (25,28,33,39)]
CENTER = [0,56,0,41,0,52]
START = time.monotonic()
PEAK_LAYERS = 0
FORWARD_CACHE = {}

class PMC(ctypes.Structure):
    _fields_ = [('cb',ctypes.c_ulong), ('PageFaultCount',ctypes.c_ulong),
                ('PeakWorkingSetSize',ctypes.c_size_t), ('WorkingSetSize',ctypes.c_size_t),
                ('QuotaPeakPagedPoolUsage',ctypes.c_size_t), ('QuotaPagedPoolUsage',ctypes.c_size_t),
                ('QuotaPeakNonPagedPoolUsage',ctypes.c_size_t), ('QuotaNonPagedPoolUsage',ctypes.c_size_t),
                ('PagefileUsage',ctypes.c_size_t), ('PeakPagefileUsage',ctypes.c_size_t)]

def peak_bytes():
    if sys.platform != 'win32':
        return None
    obj = PMC(); obj.cb = ctypes.sizeof(obj)
    ctypes.windll.kernel32.GetCurrentProcess.restype = ctypes.c_void_p
    handle = ctypes.windll.kernel32.GetCurrentProcess()
    fn = ctypes.windll.psapi.GetProcessMemoryInfo
    fn.argtypes = [ctypes.c_void_p, ctypes.POINTER(PMC), ctypes.c_ulong]
    if not fn(handle,ctypes.byref(obj),obj.cb):
        raise RuntimeError('process-memory observation failed')
    return int(obj.PeakWorkingSetSize)

def guard():
    peak = peak_bytes()
    if peak is not None and peak > 150*1024**2:
        raise RuntimeError('resource checkpoint exceeded; not an infeasibility result')
    if time.monotonic()-START > 180:
        raise RuntimeError('elapsed checkpoint exceeded; not an infeasibility result')

def capacity(h, row, v):
    return 2*h - sum(2*(a-v) for a in OFF[row] if a>v) - max(CENTER[row]-v,0)

def direct_outer():
    states=[]
    for h in range(153):
        budget=305-2*h
        domains=[[v for v in range(budget+1) if capacity(h,r,v)>=0] for r in range(6)]
        if any(not a for a in domains):
            continue
        suffix=[0]*7
        for r in range(5,-1,-1):
            suffix[r]=suffix[r+1]+domains[r][0]
        if suffix[0]>budget:
            continue
        def visit(r, left, vv):
            if r==6:
                states.append({'idx':len(states),'h':h,'v':vv,'E':left,
                               'cap':tuple(capacity(h,t,vv[t]) for t in range(6))})
                return
            for v in domains[r]:
                if v+suffix[r+1]>left:
                    break
                visit(r+1,left-v,vv+(v,))
        visit(0,budget,())
    assert len({(s['h'],s['v']) for s in states})==len(states)
    return states

def forward(cap, raw, count=7, track=False):
    """Dictionary keyed by exact used cost, minimum degree after each factor.
    Unused capacity is allowed by minimizing over the final exact-cost dictionary.
    All table rows fitting the capacity are used; repeated proxies are allowed.
    """
    global PEAK_LAYERS
    if not track and (cap,count) in FORWARD_CACHE:
        return FORWARD_CACHE[(cap,count)]
    usable=[s for s in raw if all(s[r+1]<=cap[r] for r in range(6))]
    zero=(0,)*6
    layer={zero:0}
    minima=[0]
    traces=[]
    sizes=[1]
    for n in range(1,count+1):
        nxt={}; prev={}
        for used, degree in layer.items():
            for item in usable:
                cost=tuple(used[r]+item[r+1] for r in range(6))
                if any(cost[r]>cap[r] for r in range(6)):
                    continue
                value=degree+item[0]
                if cost not in nxt or value<nxt[cost]:
                    nxt[cost]=value
                    if track:
                        prev[cost]=(used,item)
        layer=nxt
        minima.append(min(layer.values(),default=None))
        sizes.append(len(layer)); PEAK_LAYERS=max(PEAK_LAYERS,len(layer))
        if track:
            traces.append(prev)
        guard()
    witness=None
    if track and layer:
        current=min(layer,key=lambda c:(layer[c],c)); witness=[]
        for trace in reversed(traces):
            current,item=trace[current]; witness.append(item)
        witness.reverse()
    answer={'min_degree_by_count':minima,'exact_cost_state_counts':sizes,'witness':witness,
            'fitting_table_rows':len(usable)}
    if not track:
        FORWARD_CACHE[(cap,count)]=answer
    return answer

EXPECTED[str(RUN/'notes/a/06-source-minimal-degree.md')]='b5f4354dbaf32997b8f513cbbec68fa7e74850baf956b5d933cf800ed774188a'
ADOPTED_IMPLEMENTATION=RUN/'reviews/a-excess/independent_check.py'
SENSITIVITY=RUN/'experiments/a/positive-sensitivity.json'

def main():
    observed={}
    for name,expected in EXPECTED.items():
        observed[name]=hashlib.sha256(Path(name).read_bytes()).hexdigest()
        assert observed[name]==expected,(name,observed[name])
    inherited=hashlib.sha256(ADOPTED_IMPLEMENTATION.read_bytes()).hexdigest()
    assert inherited=='21257d521a4d56b46bdf8008958e6cfdfb801f7417edb652891f6d8da113d423'
    raw=[tuple(int(x) for x in line.split()) for line in TABLE.read_text().splitlines()]
    assert len(raw)==649 and all(len(s)==7 and s[0]>=0 and min(s[1:])>=0 for s in raw)
    states=direct_outer(); distribution=dict(sorted(Counter(s['E'] for s in states).items()))
    target_states=[s for s in states if s['E']==1]
    rows=[];survivors=[]
    for st in target_states:
        result=forward(st['cap'],raw)
        minimum=result['min_degree_by_count'][7]
        feasible=minimum is not None and minimum<=st['h']
        row={**st,**result,'M7':minimum,'M7_le_h':feasible}
        rows.append(row)
        if feasible:survivors.append(row)
    assert distribution=={0:1540,1:416,2:73,3:6}
    assert len(rows)==416 and len(survivors)==1
    st=survivors[0]
    assert (st['idx'],st['h'],st['v'],st['E'],st['cap'],st['M7'])==(1999,147,(2,2,2,2,1,1),1,(0,0,4,5,4,1),147)
    witness=forward(st['cap'],raw,7,track=True)
    assert witness['min_degree_by_count'][7]==147 and len(witness['witness'])==7
    assert sum(s[0] for s in witness['witness'])==147
    cost_sums=tuple(sum(s[r+1] for s in witness['witness']) for r in range(6))
    assert all(cost_sums[r]<=st['cap'][r] for r in range(6))
    author=json.loads(SENSITIVITY.read_text())
    indexed={tuple([s['h'],*s['v']]):s for s in author['states']}
    assert len(indexed)==416
    comparisons=[]
    for row in rows:
        key=tuple([row['h'],*row['v']]); old=indexed[key]
        assert row['idx']==old['idx'] and tuple(old['cap'])==row['cap']
        independent=row['M7'] if row['M7'] is not None else 10**6
        assert independent==old['balanced7'],(key,independent,old['balanced7'])
        comparisons.append({'idx':row['idx'],'M7':row['M7'],'author_balanced7':old['balanced7'],'match':True})
    result={'reviewer':'/root/review_source_degree',
            'scope':'all 416 E1 outer states; exact seven BALANCED global649 convolution only',
            'algorithm':'direct legal vertical tuples; forward exact USED-cost dictionary DP of all 649 rows',
            'adopted_algorithm_source':str(ADOPTED_IMPLEMENTATION),'adopted_algorithm_sha256':inherited,
            'python':platform.python_version(),'fixed_sources':observed,
            'author_comparison_sha256':hashlib.sha256(SENSITIVITY.read_bytes()).hexdigest(),
            'outer_states':len(states),'outer_by_E':distribution,'processed_E1':len(rows),
            'M7_le_h_survivors':survivors,'M7_gt_h_or_infeasible_count':len(rows)-len(survivors),
            'unique_seven_balanced_witness':witness,'witness_cost_sum':cost_sums,
            'all_author_balanced7_values_match':True,'author_comparisons':comparisons,
            'rows':rows,'peak_layer_states':PEAK_LAYERS,'peak_working_set_bytes':peak_bytes(),
            'seconds':round(time.monotonic()-START,6)}
    output=OUT/'independent-e1-result.json'
    output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:result[k] for k in ['outer_states','outer_by_E','processed_E1','M7_gt_h_or_infeasible_count','all_author_balanced7_values_match','peak_layer_states','peak_working_set_bytes','seconds']},ensure_ascii=False))
    print(json.dumps({'survivor':{k:st[k] for k in ['idx','h','v','E','cap','M7']},'seven_balanced_witness':witness['witness'],'witness_cost_sum':cost_sums,'result_sha256':hashlib.sha256(output.read_bytes()).hexdigest()},ensure_ascii=False))

if __name__=='__main__':main()
