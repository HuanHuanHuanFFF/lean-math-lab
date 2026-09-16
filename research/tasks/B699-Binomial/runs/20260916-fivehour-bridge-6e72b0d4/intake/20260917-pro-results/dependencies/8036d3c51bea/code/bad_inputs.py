import json,sys,copy
from pathlib import Path
from kernel import trace,verify_stored
from verify_rows import row
root=Path(__file__).resolve().parents[1];out=Path(sys.argv[1]);out.mkdir(parents=True,exist_ok=True)
rejected=[]
def fail(name,fn):
 try:fn()
 except (ValueError,ArithmeticError,AssertionError):rejected.append(name);return
 raise AssertionError('mutation not rejected: '+name)
base=[11,8,12,14803,3,12]
for name,idx,value in [('even T',0,10),('A at excluded endpoint',1,11),('zero B',2,0),('negative u',4,-1),('tail beyond B',5,13),('float parameter',0,11.0),('insufficient X',3,3455)]:
 z=base.copy();z[idx]=value;fail(name,lambda z=z:trace(*z))
fail('zero j',lambda:trace(11,8,12,14803,0,0))
fail('j equals n',lambda:trace(11,8,12,14803,8,12))
fail('source3 cancelled',lambda:row(3,1,1,1,4))
fail('composite source label',lambda:row(9,2,1,1,4))
fail('wrong actual source exponent',lambda:row(5,1,2,5,5))
rec=json.loads((root/'outputs/selected_first_window.json').read_text())[0]
for name,key,fun in [('quotient changed','q',lambda a:a+1),('dropped complete T from R','R',lambda a:a//rec['T']),('different n','n',lambda a:a+4),('different j','j',lambda a:a+1)]:
 z=copy.deepcopy(rec);z[key]=fun(z[key]);assert not verify_stored(z);rejected.append(name)
(out/'bad_inputs.json').write_text(json.dumps({'rejected':rejected,'count':len(rejected),'meaning':'Scope/certificate guards, not a proof that every removed hypothesis is necessary.'},sort_keys=True,indent=2)+'\n')
print('PASS',len(rejected),'bad-input rejections')
