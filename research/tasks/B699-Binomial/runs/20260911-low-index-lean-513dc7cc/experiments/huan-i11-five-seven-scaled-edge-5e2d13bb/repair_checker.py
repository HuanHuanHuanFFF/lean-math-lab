from pathlib import Path
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
out=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/experiments/huan-i11-five-seven-scaled-edge-5e2d13bb'
assert not (out/'FREEZE.json').exists(), 'Frozen package'
p=out/'check.py';s=p.read_text()
a=s.index('v=256;u=')
b=s.index("plan=json.loads",a)
new='''short_source=run/'experiments/huan-i11-approximation-bridge-plan-5e2d13bb/short-power-bases.json'
short=json.loads(short_source.read_text())
hits=[]
def find_row(x):
    if isinstance(x,dict):
        if x.get('seed',{}).get('p')==5 and x.get('seed',{}).get('q')==7 and 'ends' in x:hits.append(x)
        for t in x.values():find_row(t)
    elif isinstance(x,list):
        for t in x:find_row(t)
find_row(short)
assert len(hits)==1
cert=hits[0];v=cert['v'];u=cert['u'];assert (u,v)==(81153,1024)
assert 2**u<=Z**v
basis=[]
for end in cert['ends']:
    p=end['prime'];a=end['a'];b=end['b'];k=22000;alpha=end['alpha']
    assert p**b<=2**a
    margins=[u*b*alpha-a*v*k,b*15359*alpha-a*k*M,u*b*alpha*M-(2*alpha*b*v+a*v*k*(M+1))]
    assert min(margins)>=0,margins
    assert margins==[end['rate_exponent_margin'],end['base_exponent_margin'],end['lookahead_exponent_margin']]
    basis.append({'p':p,'a':a,'b':b,'u':u,'v':v,'J_exponent':k,'alpha':alpha,'margins':margins})
'''
p.write_text(s[:a]+new+s[b:],encoding='utf-8')
(out/'basis-diagnostic.md').write_text('The first auxiliary selector diagnostic used v=256 and b=4096 for both primes. Its p=5 lookahead exponent margin was -96645120, while rate/base margins were positive. This rejects only that coarse short-basis proof, not the fixed numerical statement or edge. The original frozen row04 certificate uses (u,v)=(81153,1024), p5(a,b)=(9511,4096), p7=(719,256); the checker now reads these exact original basis choices. No Lean source, M, weight or Lt changed. Initial PowerShell JSON object conversion also rejected case-distinct S/s keys; all adopted plan parsing is now Python case-sensitive JSON.',encoding='utf-8')
