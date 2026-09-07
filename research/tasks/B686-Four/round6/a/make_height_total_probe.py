from pathlib import Path
import json,re
h=Path(__file__).resolve().parent
text=(h/'FourHeight.lean').read_text();text=re.sub(r'import research.tasks.«B686-Four».round6.main.HighContact\d+\n','',text)
text=text[:text.index('def fourPart1345_0')]
row=json.loads((h/'selected-four-input.json').read_text())['rows'][0]['row']
expr=' + '.join(f'({c} : ℤ) * z ^ {a} * d ^ {b}' for a,b,c in row['terms'])
text=text.replace('namespace B686Round6AHeight','namespace B686Round6AProbe').replace('open B686Round6High',f'def auxiliary1235 (z d : ℤ) : ℤ :=\n  {expr}')
text+='''/-- info: 'B686Round6AProbe.auxiliary1235_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1235_bounds
end B686Round6AProbe
'''
(h/'HeightTotalProbe.lean').write_text(text)
