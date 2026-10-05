"""Run frozen independent criteria with an exactly mapped legacy-module literal.

Only the reader and output location change. Never imports a runtime driver or runs Lean.
The verifier still has to inspect this fixed code and its actual execution evidence.
"""
import contextlib, hashlib, importlib.util, io, json, sys, zipfile
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
    expected_run = None
    real_zip = zipfile.ZipFile
    def __init__(self, handle): self.zip = self.real_zip(handle)
    def __enter__(self): return self
    def __exit__(self, *unused): self.zip.close(); return False
    def namelist(self): return self.zip.namelist()
    def open(self, name): return self.zip.open(name)
    def getinfo(self, name): return self.zip.getinfo(name)
    def read(self, name):
        raw = self.zip.read(name)
        if name != 'byte-manifest.json': return raw
        obj=json.loads(raw.decode('utf-8-sig'))
        if str(obj.get('runId')) != str(self.expected_run): raise RuntimeError('Actual runId differs')
        if 'run' in obj and str(obj['run']) != str(self.expected_run): raise RuntimeError('Actual run alias differs')
        obj['run']=str(obj['runId'])
        return json.dumps(obj,ensure_ascii=False).encode('utf8')

class CanonicalControlPath:
    def __init__(self,path): self.path=path
    def read_bytes(self): return self.path.read_bytes().replace(b'\r\n',b'\n')

class BaseAdapter:
    def __init__(self, root, procedure_output): self.root, self.output = root, procedure_output
    def __truediv__(self, name):
        if name == 'reviews/TERMINAL-ORIGINAL-INDEPENDENT-ACCEPTED.json': return self.output
        routes = {
            'runtime/cold-stage.py': 'runtime/cold-stage-v2.py',
            'runtime/cold-stage-spec.json': 'runtime/cold-stage-v2-spec.json',
            'runtime/terminal-stage.py': 'runtime/terminal-stage-v2.py',
            'runtime/terminal-stage-spec.json': 'runtime/terminal-stage-v2-spec.json',
            'runtime/linux-runner.py': 'runtime/linux-runner-v2.py',
            'runtime/linux-source-manifest.json': 'runtime/linux-source-manifest-v2.json',
        }
        if name in routes:
            path=self.root/routes[name]
            if name in {'runtime/cold-stage-spec.json'}: return CanonicalControlPath(path)
            return path
        return self.root/name

def main(directory, expected_manifest_sha, commit, run_id, output):
    criteria = HERE.parents[1]/'20261002-terminal-gap-twohour/reviews/check_terminal_bindings.py'
    if hashlib.sha256(criteria.read_bytes()).hexdigest() != CRITERIA_SHA:
        raise RuntimeError('Frozen independent criteria bytes differ')
    loader = importlib.util.spec_from_file_location('frozen_terminal_criteria', criteria)
    m = importlib.util.module_from_spec(loader); loader.loader.exec_module(m)
    m.DEADLINE = m.datetime.fromisoformat('2026-10-02T17:38:54+00:00')
    repo = next((p for p in HERE.parents if (p/'.git').exists()), None)
    if repo is None: raise RuntimeError('Exact calling repository unavailable')
    output = output.resolve()
    if output.is_relative_to(directory.resolve()):
        raise RuntimeError('Output must be outside immutable evidence directory')
    # Adapters preserve every existing membership/hash/type/AX/argv/parts/checker check.
    m.REPO = repo
    relative = Path('research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261003-terminal-fortymin')
    adopted_relative = Path('research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-terminal-gap-twohour')
    output.parent.mkdir(parents=True, exist_ok=True)
    procedure_output = output.with_name(output.name+'.procedure-pending.tmp')
    m.BASE = BaseAdapter(repo/relative, procedure_output)
    # The module ABI port preserves the old two original targets byte for byte.
    old_typed = repo/'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-full-onehour/semantic/FinalConsumersTyped.lean'
    old_consumer = repo/'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-full-onehour/finite/FiniteConsumer.lean'
    new_typed = repo/adopted_relative/'reviews/FinalConsumersTypedLegacy.lean'
    new_consumer = repo/adopted_relative/'terminal/FiniteConsumerLegacy.lean'
    def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
    if sha(old_typed) != '59b9029527c1f40eb7494aab684e65ae1f992c82a79cf6ef3678e5b210a3ca87' or sha(old_consumer) != 'de8e1b79d354dbfb5130c8a6af80edeb418b411005af970ec351986d3760041d':
        raise RuntimeError('Frozen original consumer/literal source changed')
    typed_expected = old_typed.read_bytes().decode().removeprefix('module\n').replace('public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-full-onehour».finite.FiniteConsumer','import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy').replace('@[expose] public section\n','').encode()
    consumer_expected = old_consumer.read_bytes().decode().removeprefix('module\n').replace('public import ','import ').replace('@[expose] public section\n','').encode()
    if new_typed.read_bytes() != typed_expected or new_consumer.read_bytes() != consumer_expected:
        raise RuntimeError('Legacy module adapter changes mathematical body or literal')
    if sha(new_typed) != '48c76374bba94662e07cc4d80c2c37eb683c79d3df42bd6f91f0446cd7c32f07' or sha(new_consumer) != '4638d82f1abf9c2ceedfbf3134d2e752bdca21f140fba22829f36848fb81fa1e':
        raise RuntimeError('Fixed legacy consumer/literal SHA differs')
    m.TYPED_SHA = '48c76374bba94662e07cc4d80c2c37eb683c79d3df42bd6f91f0446cd7c32f07'
    DirectoryArchive.expected_run = run_id
    m.zipfile.ZipFile = DirectoryArchive
    with contextlib.redirect_stdout(io.StringIO()):
        m.run(directory, expected_manifest_sha, commit, run_id)
    result_file = procedure_output
    result = json.loads(result_file.read_bytes())
    result['status'] = 'independent-procedure-passed; awaiting semantic verifier signature'
    result['originalZipPath'] = result.pop('archive')
    result['originalZipSha256'] = result.pop('archiveSha256')
    result['readerMode'] = 'original ZIP stream; strict runId alias; all original ZIP SHA/member/source/parts/raw/type/AX/checker criteria retained'
    result['directoryReaderCodeSha256'] = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    result['criteriaCodeSha256'] = CRITERIA_SHA
    result['verificationExecutionLocation'] = 'controlled CI; runtime executor is not the semantic acceptor'
    result['semanticVerifierSigned'] = False
    result['runtimeAliasBinding'] = 'evidence cold-stage.py/spec.json are exact v2 bytes, source reader routes old runtime names to v2 source files'
    result['legacyLiteralSourceMap'] = {'oldLiteralSha256': '59b9029527c1f40eb7494aab684e65ae1f992c82a79cf6ef3678e5b210a3ca87', 'newLiteralSha256': m.TYPED_SHA, 'oldConsumerSha256': sha(old_consumer), 'newConsumerSha256': sha(new_consumer), 'onlyModuleHeaderAndImportVisibilityChanged': True, 'literalStatementsAndProofBodiesUnchanged': True}
    output.parent.mkdir(parents=True, exist_ok=True)
    data = (json.dumps(result,indent=2,ensure_ascii=False)+'\n').encode('utf8')
    output.write_bytes(data)
    # The temporary procedure result is explicitly pending, never a signed accepted report.
    result_file.write_bytes(data)
    summary = {k:result[k] for k in ['status','run','fixedSourceCommit','fixedClosureSources',
                                   'originalZipSha256','criteriaCodeSha256','directoryReaderCodeSha256',
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
