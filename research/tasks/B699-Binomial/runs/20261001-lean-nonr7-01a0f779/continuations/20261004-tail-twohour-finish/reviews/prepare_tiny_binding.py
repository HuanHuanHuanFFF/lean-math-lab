"""Separate tiny proof window; full parent104 source/object/receipt binding required."""
import ast
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
source=HERE/'bind_extended_archive.py'
text=source.read_text(encoding='utf-8-sig')
def replace(before,after):
    global text
    if text.count(before)!=1:
        raise RuntimeError('Tiny adapter anchor differs: '+before[:70])
    text=text.replace(before,after)

replace("'signature': '20261004-tail-twohour-finish/reviews/TAIL15000-INDEPENDENT-ACCEPTED.json'}]", "'signature': '20261004-tail-twohour-finish/reviews/TAIL15000-INDEPENDENT-ACCEPTED.json'},\n    {'zip':'D:/ResearchArtifacts/b699-tail-twohour-finish/b699-tail2h-upperinitial-37207871560-complete.zip',\n     'sha':'8d37f8464e3ca059ad1ee9baf865c5f72fe39074d2219240a01efa293cee2068',\n     'head':'d26594a69a35f42336654b8169c61b40f55a32c0','run':'37207871560',\n     'artifact':'11306775385','count':None,'sourceCount':104,'storage':'carried-upperinitial',\n     'manifest':'delivery-manifest.json',\n     'signature':'20261004-tail-twohour-finish/reviews/UPPER-RANGES-INDEPENDENT-ACCEPTED.json'}]")
text=text.replace("'2026-10-04T14:46:00+00:00'", "'2026-10-04T15:06:00+00:00'")
text=text.replace("spec['proofStopUtc'] == '2026-10-04T14:46:00Z'", "spec['proofStopUtc'] == '2026-10-04T15:06:00Z'")
text=text.replace("spec['lastJobStart'] == '2026-10-04T14:05:00Z'", "spec['lastJobStart'] == '2026-10-04T14:54:00Z'")
text=text.replace("runtime/gap-stage-spec.json", "runtime/tiny/tiny-stage-spec.json").replace("runtime/gap-stage.py", "runtime/tiny/tiny-stage.py")
text=text.replace("prepared['sourceCount'] == 227", "prepared['sourceCount'] == 331")
text=text.replace("index['supplementSourceCount'] == 98", "index['supplementSourceCount'] == 202")
text=text.replace("len(index['sourceObjects']) == 227", "len(index['sourceObjects']) == 331")
text=text.replace("len(external['origins']) == 5", "len(external['origins']) == 6")
text=text.replace("len(all_old_receipts) == 227", "len(all_old_receipts) == 331")
text=text.replace("'adopted227Sources'", "'adopted331Sources'")
replace("require(len(onames) == frozen['count'], 'Old native ordinary member count differs')", "require(frozen['count'] is None or len(onames) == frozen['count'], 'Old native ordinary member count differs')")
replace("            source_count = 0\n            bound_parts = {}", "            if frozen['storage']=='carried-upperinitial':\n                require(signature['actualRunId']==frozen['run'] and signature['artifactId']==frozen['artifact'] and signature['archiveSha256']==frozen['sha'], 'Parent independent signature identity differs')\n                require(signature['normalCheckerExits']==[0]*104 and signature['freshAXRootCount']==5808, 'Parent104 actual complete checker/AX scope differs')\n                require(sha((signature_path.parent/signature['binding']).read_bytes())==signature['bindingSha256'], 'Parent independent binding bytes differ')\n            source_count = 0\n            bound_parts = {}")
replace("                    expected = prefix + '/' + name.removeprefix('objects/') if name.startswith('objects/') else \\\n", "                    if frozen['storage']=='carried-upperinitial' and not name.startswith('objects/'):\n                        nested=frozen['storage']+'/'+name\n                        require(nested in members and members[nested]['bytes']==row['bytes'] and members[nested]['sha256']==row['sha256'], 'Actual nested carried parent ordinary bytes differ')\n                    expected = prefix + '/' + name.removeprefix('objects/') if name.startswith('objects/') else \\\n")
replace("and obj(n).get('mode') == 'Lean'}", "and obj(n).get('mode') == 'Lean' and not n.startswith('carried-upperinitial/')}")
replace("        require('B699TailFinishVerify20261004.gap_15000_extended_initial_exact' in finite_gap_types,'Small finite Gap unit is incomplete')", "        require('B699TailFinishVerify20261004.theta_initial_exact' in finite_gap_types,'Tiny exact full finite initial missing')")
replace("mode in ('GAP','INITIAL','TAIL30000')", "mode in ('INITIAL','TAIL30000','BOTH')")
replace("k = 30000 if mode == 'TAIL30000' else 15000", "k = 30000 if mode in ('TAIL30000','BOTH') else 15000")
replace("{'GAP':'GAP-FORWARD','INITIAL':'THETA-INITIAL','TAIL30000':'TAIL30000'}[mode]", "{'INITIAL':'THETA-INITIAL','TAIL30000':'TAIL30000','BOTH':'TINY-ALL'}[mode]")
text=text.replace("if mode=='TAIL30000'", "if mode in ('TAIL30000','BOTH')").replace("mode!='TAIL30000'", "mode not in ('TAIL30000','BOTH')")
text=text.replace('GAP|INITIAL|TAIL30000', 'INITIAL|TAIL30000|BOTH')
text=text.replace('Five-provider','Six-provider').replace('Five complete','Six complete').replace('old227 closure','old331 closure')
ast.parse(text)
target=HERE/'bind_tiny_archive.py'
target.write_text(text,encoding='utf-8',newline='\n')
(HERE/'TINY-BINDING-TOOL-PROVENANCE.json').write_text(json.dumps({'status':'prepared-not-executed','sourceToolSha256':hashlib.sha256(source.read_bytes()).hexdigest(),'newToolSha256':hashlib.sha256(target.read_bytes()).hexdigest(),'parentRequirement':'Clean104 full rawZIP923266078B/SHA8d37... must first be bound with the d265 original14:46 proof window and UPPER-RANGES signature. Tiny4 then bind331 complete sources/6origins/nested parent ordinary bytes and actual4 compiler/7AX/4 normalchecker with b1de source and15:06 window. Original review hard15:16:38 unchanged.','parentLocalArchivePath':'D:/ResearchArtifacts/b699-tail-twohour-finish/b699-tail2h-upperinitial-37207871560-complete.zip','mainAndExtendedVerifiersUnchanged':True},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Prepared separate tiny15:06 proof window/331-source6origin binding; no acceptance or proof run')
