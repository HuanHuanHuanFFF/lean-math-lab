#!/usr/bin/env python3
"""Executable sufficient predicates, conditional on the frozen paper contracts.
These functions do not factor any rough integer and do not construct a prime
witness. Returning False means only that this selected consumer does not apply.
No claim of Lean or independent acceptance is made.
"""
from __future__ import annotations
from math import gcd, lcm

def small_part(x:int)->int:
 if x<1:raise ValueError('small_part requires x>=1')
 s=1
 for p in (2,3,5,7):
  while x%p==0:x//=p;s*=p
 return s

def max_power(x:int,p:int)->int:
 q=1
 while x%p==0:x//=p;q*=p
 return q

def has_h012(n:int)->bool:
 if n<20:return False
 for p in (2,3,5,7):
  powers=[max_power(n-r,p) for r in range(9)]
  if max(powers[:3])!=max(powers):return False
 return True

def target_data(n:int,j:int)->dict:
 if not isinstance(n,int) or not isinstance(j,int) or not (10<=j<=n//2):
  raise ValueError('require integer n,j with 10<=j<=floor(n/2)')
 g=gcd(n,j)
 h1=lcm(gcd(n-1,j),gcd(n-1,j-1))
 h2=lcm(*(gcd(n-2,j-s) for s in range(3)))
 d6=n//gcd(n,pow(j,6,n))
 return {'g':g,'Lambda1':h1,'Lambda2':h2,'d6':d6}

def target_covered(n:int,j:int,*,allow_frozen_400_extension:bool=False)->dict:
 d=target_data(n,j)
 h=has_h012(n)
 extension=(allow_frozen_400_extension and n%400==0)
 if not (h or extension):return {'covered':False,'reason':'source hypothesis not established'}
 simple=d['d6']<=d['Lambda1']**4*d['Lambda2']**3
 exact=simple or d['d6']**13<=d['Lambda1']**54*d['Lambda2']**48
 return {'covered':exact,'consumer':'C-simple' if simple else ('C' if exact else None),
         'scope':'H012' if h else 'frozen whole-400 extension',
         'proof_grade':'paper derivation on frozen contracts; not Lean',**d}

def source_covered(n:int,*,allow_frozen_400_extension:bool=False)->dict:
 if not isinstance(n,int) or n<20:raise ValueError('n must be an integer >=20')
 h=has_h012(n)
 extension=(allow_frozen_400_extension and n%400==0)
 if not (h or extension):return {'covered':False,'reason':'source hypothesis not established'}
 ss=[small_part(n-r) for r in range(3)]
 qs=[(n-r)//ss[r] for r in range(3)]
 s=ss[0]
 if extension:
  # On NC9 & 400|n the adopted position interface forces 3,7 not to divide n.
  while s%3==0:s//=3
  while s%7==0:s//=7
 covered=s**13<=qs[1]**54*qs[2]**48
 return {'covered':covered,'consumer':('R25' if extension else 'R2') if covered else None,
         'scope':'H012' if h else 'frozen whole-400 extension',
         'proof_grade':'paper derivation on frozen contracts; not Lean'}

def power_denominator(n:int,j:int,h:int)->int:
 """Compute n/gcd(n,j**h), using modular powering (no huge j**h needed)."""
 if not isinstance(h,int) or h<1:raise ValueError('h must be a positive integer')
 if not isinstance(n,int) or not isinstance(j,int) or not (10<=j<=n//2):
  raise ValueError('require integer n,j with 10<=j<=floor(n/2)')
 return n//gcd(n,pow(j,h,n))

def target_covered_d10(n:int,j:int,*,allow_frozen_400_extension:bool=False)->dict:
 """C10-H / C10; explicitly uses frozen PC in addition to joint-row proof."""
 d10=power_denominator(n,j,10)
 if n%400: return {'covered':False,'reason':'400 does not divide n','d10':d10}
 h=has_h012(n)
 if not(h or allow_frozen_400_extension):
  return {'covered':False,'reason':'H012 not established; whole-400 interface not enabled','d10':d10}
 covered=d10<=1<<300000
 return {'covered':covered,'consumer':'C10-H' if h else 'C10',
         'd10':d10,'uses_frozen_PC':True,
         'proof_grade':'paper on frozen PC/ENTRY/NZ; not Lean'}

def source_covered_s10(n:int,*,allow_frozen_400_extension:bool=False)->dict:
 """Whole-row S10, without factoring the rough part."""
 if not isinstance(n,int) or n<20:raise ValueError('n must be an integer >=20')
 if n%400:return {'covered':False,'reason':'400 does not divide n'}
 h=has_h012(n)
 if not(h or allow_frozen_400_extension):
  return {'covered':False,'reason':'H012 not established; whole-400 interface not enabled'}
 s=1;x=n
 for p in (2,5):
  while x%p==0:x//=p;s*=p
 covered=s**10<=n**9
 return {'covered':covered,'consumer':'S10' if covered else None,
         'uses_frozen_PC':True,
         'proof_grade':'paper on frozen PC/ENTRY/NZ; not Lean'}
