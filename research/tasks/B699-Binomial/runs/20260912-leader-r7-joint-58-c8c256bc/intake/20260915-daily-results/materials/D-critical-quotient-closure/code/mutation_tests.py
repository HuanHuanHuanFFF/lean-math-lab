#!/usr/bin/env python3
from pathlib import Path
import importlib.util,json,copy
R=Path(__file__).resolve().parents[1]
spec=importlib.util.spec_from_file_location('receiver',R/'code/verify.py');v=importlib.util.module_from_spec(spec);spec.loader.exec_module(v)
a=json.loads((R/'evidence/algebra.json').read_text());d=json.loads((R/'evidence/domains.json').read_text());rs=json.loads((R/'evidence/rows.json').read_text());fs=json.loads((R/'evidence/families.json').read_text());passed=[]
def rejects(name,fn):
    try:fn()
    except (ValueError,AssertionError):passed.append(name)
    else:raise RuntimeError('Bad certificate was accepted: '+name)
def alg(name,change):
    x=copy.deepcopy(a);change(x);rejects(name,lambda:v.check_algebra(x))
alg('nonlinear coefficient altered',lambda x:x['R'][0].__setitem__(1,x['R'][0][1]+1))
alg('cleared monomial omitted',lambda x:x['T'].pop())
alg('positivity coefficient negated',lambda x:x['positive_shift']['terms'][0].__setitem__(1,-x['positive_shift']['terms'][0][1]))
alg('Delta=1 silently included',lambda x:x['positive_shift'].__setitem__('Delta',1))
alg('j lower bound weakened',lambda x:x['positive_shift'].__setitem__('J',7))
alg('endpoint7 denominator removed',lambda x:x.__setitem__('K',x['K']//7))
alg('coefficient sum rounded down',lambda x:x.__setitem__('S',x['S']-1))
alg('height exponent shortened',lambda x:x.__setitem__('E',310))
alg('height bound text forged',lambda x:x.__setitem__('bound',str(int(x['bound'])-1)))
alg('duplicate monomial',lambda x:x['T'].append(copy.deepcopy(x['T'][0])))
alg('limiting relation sign changed',lambda x:[t.__setitem__(1,-t[1]) for t in x['R']])

def row(name,change):
    x=copy.deepcopy(rs);change(x);rejects(name,lambda:v.check_rows(x,d['terminal_rows']))
row('terminal row omitted',lambda x:x.pop())
row('interval left gap',lambda x:x[0][2][0].__setitem__(0,9))
row('interval incomplete end',lambda x:x[0][2][0].__setitem__(1,36))
row('illegal right endpoint',lambda x:x[0][2][0].__setitem__(1,38))
row('prime threshold relaxed',lambda x:x[0][2][0].__setitem__(2,5))
row('composite witness',lambda x:x[0][2][0].__setitem__(2,49))
row('non-prime-power layer',lambda x:x[0][2][0].__setitem__(3,72))
row('unit layer',lambda x:x[0][2][0].__setitem__(3,1))
row('wrong source index',lambda x:x[0].__setitem__(0,8))
row('source witness absent',lambda x:x[0][2][0].__setitem__(slice(2,4),[67,67]))
row('terminal row repeated',lambda x:x.append(copy.deepcopy(x[0])))

def dom(name,key,value):
    x=copy.deepcopy(d);x[key]=value;rejects(name,lambda:v.check_domain(x,rs,311))
dom('source NC changed','m',5)
dom('H constraint changed','H',[0,3,5])
dom('domain exponent truncated','height_exponent',310)
dom('mass theorem threshold lowered','mass_threshold',131072)
dom('incomplete residue period','period',900)

def family(name,change):
    x=copy.deepcopy(fs);change(x);rejects(name,lambda:v.check_families(x))
family('retained prime role omitted',lambda x:x['7']['roles'].pop())
family('endpoint coefficient 7 omitted',lambda x:x['7']['roles'][0]['allowed_coefficients'].remove(7))
family('spurious coefficient added',lambda x:x['5']['coefficients']['2'].append(3))
family('residual count fabricated',lambda x:x['7'].__setitem__('family_count',25))
for m,n,j,p,Q in [(5,129,25,5,25),(7,349,49,7,49)]:
    rejects(f'complete {p}-power lowered',lambda n=n,j=j,Q=Q:v.need(j%Q>n%Q,'missing higher carry'))
# A0 and D2 examples show why cancelling a factor shared with the modulus is forbidden.
rejects('g cancelled from zero row',lambda:v.need((14//7)%7==0,'q0 not coprime g'))
(R/'evidence/mutations.json').write_text(json.dumps({'status':'PASS_REJECTED_ALL','count':len(passed),'rejected':passed},separators=(',',':'))+'\n')
print('rejected',len(passed),'mutations')
