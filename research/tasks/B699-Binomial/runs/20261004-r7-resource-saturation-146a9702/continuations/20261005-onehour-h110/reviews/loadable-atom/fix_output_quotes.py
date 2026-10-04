from pathlib import Path
root=Path.cwd();out=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110/reviews/loadable-atom';p=out/'omega_low_degrees.cpp';s=p.read_text()
for key in ['n1','n2','n_high']:s=s.replace(',"'+key+'":',r',\"'+key+r'\":')
p.write_text(s,encoding='utf-8')
