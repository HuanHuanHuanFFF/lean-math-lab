"""Audit the separate two-line option-scope repair without Lean."""
import hashlib, json, re
from pathlib import Path
import audit_i11_below_kind as kind_audit

BASE=Path(__file__).resolve().parent
R=BASE/'repairs/20261007-i11-below-options'
def main():
 freeze=json.loads((R/'FREEZE.json').read_text(encoding='utf-8'))
 oldp=kind_audit.REPO/freeze['previousKindOnlyDraft']['path']
 newp=kind_audit.REPO/freeze['newArtifact']['path']
 old=oldp.read_text(encoding='utf-8');new=newp.read_text(encoding='utf-8')
 assert new==old.replace('set_option maxRecDepth 100000 in\n','')
 assert not re.search(r'(?m)^set_option .* in$',new)
 assert 'set_option maxRecDepth 100000\n' in new
 assert 'set_option maxHeartbeats 10000000\n' in new
 assert hashlib.sha256(oldp.read_bytes()).hexdigest()==freeze['previousKindOnlyDraft']['sha256']
 kind_audit.R=R;kind_audit.main()
 audit=json.loads((R/'analysis/static-repair-audit.json').read_text(encoding='utf-8'))
 audit['scopeOptionAudit']={'noScopedSetOptionPrefixRemains':True,'globalFiniteDepthAndHeartbeatPreserved':True,'exactSourceChangeOnlyTwoOrphanLines':True,'previousKindOnlyDraftUnmodified':True}
 (R/'analysis/static-repair-audit.json').write_text(json.dumps(audit,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')

if __name__=='__main__':main()
