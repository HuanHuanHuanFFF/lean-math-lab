#!/usr/bin/env python3
"""Native-prime return and rejection-protocol tests. Not a finite NC3 endgame."""
from __future__ import annotations
from math import comb
from same_input_consumer import gate,prime_proved,binomial_valuation,check_original


def run()->None:
    events=0
    for n in range(4,81):
        for j in range(n+1):
            for p in (3,5,7,11,13,17,19):
                value=comb(n,j);v=0
                while value%p==0:
                    value//=p;v+=1
                assert v==binomial_valuation(n,j,p)
                carries=0;e=p
                while e<=n:
                    if j%e>n%e:
                        carries+=1
                    e*=p
                assert carries==v
                events+=1
    for q,expected in ((1,False),(2,True),(3,True),(9,False),(27,False),(10007,True)):
        assert prime_proved(q)==expected
    assert gate(266773)['exits'][0]['theorem']=='MID128'
    assert gate(264709)['exits'][0]['d']==-1
    assert gate(16383)['exits'][0]['theorem']=='BSC_MINUS1'
    assert gate(65533)['exits'][0]['theorem']=='BSC_MINUS3'
    assert gate(16639)['result']=='NO_NAMED_GATE'
    # The old tiny algebraic shell is NOT accepted as an original input.
    h,Q,v,nu,P=43,3,2,20,89
    shell={'h':h,'Q':Q,'v':v,'nu':nu,'P':P,'n':P*Q*nu+2,
           'j':(P+nu)*Q*Q,'q':3,'r':1}
    rejected=False
    try:
        check_original(shell)
    except ValueError:
        rejected=True
    assert rejected
    print('LEGENDRE_NATIVE_POWER_UNIT_TESTS=PASS ('+str(events)+' cases; not a proof endgame)')
    print('Q_IS_NOT_REPLACED_BY_A_PRIME=PASS')
    print('WEAK_SHELL_REJECTION=PASS')
    print('PARAMETER_GATE_DOES_NOT_ASSERT_NC3=PASS')

if __name__=='__main__':
    run()
