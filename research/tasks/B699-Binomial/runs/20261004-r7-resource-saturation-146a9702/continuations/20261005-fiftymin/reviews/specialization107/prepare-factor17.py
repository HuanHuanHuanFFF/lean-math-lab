from pathlib import Path
root=Path.cwd();out=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/reviews/specialization107';s=(out/'check_factor.py').read_text(encoding='utf-8-sig')
s=s.replace('pow(2,a,p)','pow(17,a,p)').replace("z['c']==2","z['c']==17").replace("n in [16,37,54]","n in [1,17,88]").replace("assert add(a,[0,1],-1)==[]","assert rem(add(a,[0,1],-1),z)==[]").replace("==[16,37,54]","==[1,1,17,88]").replace('range(3)','range(4)').replace("'N_specialization':2","'N_specialization':17").replace("'omega':3","'omega':4").replace("factor-independent-result.json","factor17-independent-result.json")
(out/'check_factor17.py').write_text(s,encoding='utf-8')
