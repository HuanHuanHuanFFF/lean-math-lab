"""Exact set equality, duplicate and cardinality checks for two full enumerations.
Does not by itself prove that either enumeration is mathematically complete.
"""
from pathlib import Path
import sys,json,hashlib

def accept(a:Path,b:Path,count:int):
 x=a.read_text().splitlines();y=b.read_text().splitlines()
 if len(x)!=count or len(y)!=count:raise ValueError('root record cardinality mismatch')
 if len(set(x))!=count or len(set(y))!=count:raise ValueError('duplicate root record')
 if sorted(x)!=sorted(y):raise ValueError('root set mismatch')
 return {'verified':True,'configurations':count,'set_sha256':hashlib.sha256(('\n'.join(sorted(x))+'\n').encode()).hexdigest()}
if __name__=='__main__':
 try:print(json.dumps(accept(Path(sys.argv[1]),Path(sys.argv[2]),int(sys.argv[3]))))
 except Exception as e:print('REJECT',e,file=sys.stderr);sys.exit(1)
