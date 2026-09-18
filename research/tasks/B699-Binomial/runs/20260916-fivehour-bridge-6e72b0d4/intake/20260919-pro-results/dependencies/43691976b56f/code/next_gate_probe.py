#!/usr/bin/env python3
"""Costs-only next gate tests. None of the hypothetical geometry is proved here."""
from source_budget import *
import argparse,time

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
 require(args.out.is_absolute() and not args.out.exists(),'need new output path');args.out.mkdir(parents=True)
 raw,L=source_rows();vmax=305-7*18;hmin=3*18;tab,cost=build_table(L,vmax,hmin)
 scenarios=[('NF41_tail_excluded_NOT_PROVED',(7,8,10,12,16,20),(0,2,2,2,1,0)),
            ('SAT60_NOT_PROVED',(7,8,10,12,14,22),(0,2,2,2,1,0)),
            ('NF41_tail_and_SAT60_NOT_PROVED',(7,8,10,12,16,22),(0,2,2,2,1,0)),
            ('NF41_tail_and_NF47_tail_NOT_PROVED',(7,8,10,12,18,20),(0,2,2,2,1,0))]
 output=[]
 for tag,ws,gs in scenarios:
  res=generalized_solve(19,ws,gs,tab,vmax,hmin);res['scenario']=tag
  output.append(res);print(tag,{k:v for k,v in res.items() if k!='feasible'},flush=True)
 dump(args.out/'conditional_only.json',{'status':'CONDITIONAL_COSTS_ONLY_NO_GEOMETRY','results':output,'table_bounds':{'vmax':vmax,'hmin':hmin}})
 # Conditional 18 boundary for the least-cost successful single geometry gate.
 res=generalized_solve(18,scenarios[0][1],scenarios[0][2],tab,vmax,hmin)
 dump(args.out/'conditional_K18.json',{'scenario':scenarios[0][0],**res})
if __name__=='__main__':main()
