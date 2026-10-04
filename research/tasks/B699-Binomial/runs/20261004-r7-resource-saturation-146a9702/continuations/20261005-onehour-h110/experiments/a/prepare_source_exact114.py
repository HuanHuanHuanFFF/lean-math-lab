from pathlib import Path
BASE=Path(__file__).parent
s=(BASE/'source_initial_maps.cpp').read_text(encoding='utf-8-sig')
s=s.replace('lev<pt.m+3','lev<pt.m')
s=s.replace('for(int t=0;t<M;t++){int piv=-1;', 'ofstream trace(string(argv[1])+".trace.tsv");trace<<"condition\\tpoint\\ta\\tb\\tpivot\\tpivot_value\\tweight_before\\n";\n for(int t=0;t<M;t++){int piv=-1;')
s=s.replace('if(piv<0)continue;int iv=pw(disc[piv],P-2);','if(piv<0){trace<<t<<\'\\t\'<<js[t].point<<\'\\t\'<<js[t].a<<\'\\t\'<<js[t].b<<"\\t-1\\t0\\t-1\\n";continue;}trace<<t<<\'\\t\'<<js[t].point<<\'\\t\'<<js[t].a<<\'\\t\'<<js[t].b<<\'\\t\'<<piv<<\'\\t\'<<disc[piv]<<\'\\t\'<<W[piv]<<\'\\n\';int iv=pw(disc[piv],P-2);')
(BASE/'source_exact114_kernel.cpp').write_text(s,encoding='utf-8')
print('prepared source-only traced kernel')
