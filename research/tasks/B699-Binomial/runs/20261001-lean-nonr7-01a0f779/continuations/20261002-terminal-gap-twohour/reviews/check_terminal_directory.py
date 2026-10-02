"""Run the frozen independent ZIP criteria against the same manifest-backed directory.

Only the reader and output location change. Never imports a runtime driver or runs Lean.
The verifier still has to inspect this fixed code and its actual execution evidence.
"""
import contextlib, hashlib, importlib.util, io, json, sys
from pathlib import Path, PurePosixPath
from types import SimpleNamespace

CRITERIA_SHA = '1b6d9a3eaea155b9a62a7b66ac58bf47c6bf479979c1ba91f71984ee4867efb1'
HERE = Path(__file__).resolve().parent

class EvidenceHandle:
    def __init__(self, directory): self.directory = directory.resolve()
    def open(self, mode):
        if mode != 'rb': raise RuntimeError('Read-only evidence handle')
        return (self.directory/'byte-manifest.json').open(mode)
    def __str__(self): return str(self.directory)

class DirectoryArchive:
    def __init__(self, handle):
        self.root = handle.directory
        if not self.root.is_dir(): raise RuntimeError('Evidence directory missing')
        self.names = []
        for p in self.root.rglob('*'):
            if p.is_symlink(): raise RuntimeError('Symlink in evidence directory')
            if p.is_file():
                if not p.resolve().is_relative_to(self.root): raise RuntimeError('Member escapes evidence directory')
                self.names.append(p.relative_to(self.root).as_posix())
    def __enter__(self): return self
    def __exit__(self, *unused): return False
    def namelist(self): return list(self.names)
    def member(self, name):
        if name not in self.names or PurePosixPath(name).is_absolute() or '..' in PurePosixPath(name).parts:
            raise RuntimeError('Unsafe or missing evidence member')
        p = self.root/name
        if not p.resolve().is_relative_to(self.root): raise RuntimeError('Member escapes evidence directory')
        return p
    def open(self, name): return self.member(name).open('rb')
    def read(self, name): return self.member(name).read_bytes()
    def getinfo(self, name): return SimpleNamespace(file_size=self.member(name).stat().st_size)

class BaseAdapter:
    def __init__(self, root, procedure_output): self.root, self.output = root, procedure_output
    def __truediv__(self, name):
        if name == 'reviews/TERMINAL-ORIGINAL-INDEPENDENT-ACCEPTED.json': return self.output
        return self.root/name

def main(directory, expected_manifest_sha, commit, run_id, output):
    criteria = HERE/'check_terminal_bindings.py'
    if hashlib.sha256(criteria.read_bytes()).hexdigest() != CRITERIA_SHA:
        raise RuntimeError('Frozen independent criteria bytes differ')
    loader = importlib.util.spec_from_file_location('frozen_terminal_criteria', criteria)
    m = importlib.util.module_from_spec(loader); loader.loader.exec_module(m)
    repo = next((p for p in HERE.parents if (p/'.git').exists()), None)
    if repo is None: raise RuntimeError('Exact calling repository unavailable')
    output = output.resolve()
    if output.is_relative_to(directory.resolve()):
        raise RuntimeError('Output must be outside immutable evidence directory')
    # Adapters preserve every existing membership/hash/type/AX/argv/parts/checker check.
    m.REPO = repo
    relative = Path('research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-terminal-gap-twohour')
    output.parent.mkdir(parents=True, exist_ok=True)
    procedure_output = output.with_name(output.name+'.procedure-pending.tmp')
    m.BASE = BaseAdapter(repo/relative, procedure_output)
    m.zipfile.ZipFile = DirectoryArchive
    with contextlib.redirect_stdout(io.StringIO()):
        m.run(EvidenceHandle(directory), expected_manifest_sha, commit, run_id)
    result_file = procedure_output
    result = json.loads(result_file.read_bytes())
    result['status'] = 'independent-procedure-passed; awaiting semantic verifier signature'
    result['evidenceDirectory'] = result.pop('archive')
    result['evidenceByteManifestSha256'] = result.pop('archiveSha256')
    result['readerMode'] = 'directory; all original ZIP membership and byte criteria retained'
    result['directoryReaderCodeSha256'] = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    result['criteriaCodeSha256'] = CRITERIA_SHA
    result['verificationExecutionLocation'] = 'controlled CI; runtime executor is not the semantic acceptor'
    result['semanticVerifierSigned'] = False
    output.parent.mkdir(parents=True, exist_ok=True)
    data = (json.dumps(result,indent=2,ensure_ascii=False)+'\n').encode('utf8')
    output.write_bytes(data)
    # The temporary procedure result is explicitly pending, never a signed accepted report.
    result_file.write_bytes(data)
    summary = {k:result[k] for k in ['status','run','fixedSourceCommit','fixedClosureSources',
                                   'evidenceByteManifestSha256','criteriaCodeSha256','directoryReaderCodeSha256',
                                   'completeOriginalIndicesIncrement','actualGapSupplyAccepted','semanticVerifierSigned']}
    summary.update(outputSha256=hashlib.sha256(data).hexdigest(), outputBytes=len(data),
                   compileReceiptCount=len(result['compileBindings']),
                   boundObjectPartCount=sum(len(b['parts']) for b in result['compileBindings']),
                   auditedRootCount=sum(len(a['roots']) for a in result['axiomAudits']),
                   finalActualAxioms=result['finalActualAxioms'], normalCheckers=result['normalCheckers'])
    print('S_DIRECTORY_PROCEDURE_JSON '+json.dumps(summary,ensure_ascii=False),flush=True)
    print('S_EXACT_TYPE_RAW_BEGIN',flush=True)
    print(result['actualLiteralOutput'],flush=True)
    print('S_EXACT_TYPE_RAW_END',flush=True)

if __name__=='__main__':
    if len(sys.argv)!=6: raise SystemExit('Usage: script evidenceDir expectedManifestSHA commit run outputJSON')
    main(Path(sys.argv[1]),sys.argv[2],sys.argv[3],sys.argv[4],Path(sys.argv[5]))
