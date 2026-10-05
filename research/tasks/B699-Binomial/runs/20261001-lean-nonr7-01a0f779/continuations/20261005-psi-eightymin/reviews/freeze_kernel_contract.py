"""Freeze accurate kernel/literal targets and qualified producer transport provenance."""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())
OLD = HERE.parent.parent / '20261005-local-power-ninetymin'

if __name__ == '__main__':
    sources = []
    for producer, literal, scope in [
        (HERE.parent / 'supply/EtaSeries.lean', HERE / 'EtaSeriesLiteral.lean', 'Actual full tsum q^n/(n!)^2 on q in[0,81]: term positivity, exp81 majorant, summability, >=1, continuousOn; successful producer reused, old failed raw not accepted'),
        (HERE.parent / 'supply/EtaKernel.lean', HERE / 'EtaKernelLiteral.lean', 'Actual R2 c18 eps1/16384 positive series and original scale; strict open support, endpoints0, nonnegative/positive iff support, even and integrable; no eta mass or Fourier identity'),
        (HERE.parent / 'supply/EtaWeight.lean', HERE / 'EtaWeightLiteral.lean', 'Actual exp(-s/2)*eta; true integral lambda positive; normalized real weight nonnegative/integrable/mass1; actual psi bounds and inward difference with no weight assumptions. No eta mass1, lambda>=1, Fourier closed identity or psi budget'),
        (OLD / 'supply/LocalPowerOriginalLegacy.lean', OLD / 'reviews/LocalPowerOriginalLegacyLiteral.lean', 'Conditional full legal original tail i>=4883, same Prime p>=i divides both full choose values; true F0 discharges I0. Budget plus finite psi[T0,C] or Nat middleGap[T0,B) remain')]:
        p = producer.relative_to(ROOT).as_posix()
        for file in [producer, literal]:
            raw = file.read_bytes()
            roots = re.findall(r'^#print axioms (\S+)\s*$', raw.decode('utf-8-sig'), re.M)
            if not roots or len(roots) != len(set(roots)):
                raise ValueError('Missing or duplicate independently reviewed roots')
            row = {'path': file.relative_to(ROOT).as_posix(), 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest(),
                   'roots': roots, 'scope': scope}
            if file == literal:
                row['literalFor'] = p
            sources.append(row)
    sigpath = HERE / 'PSI-SMOOTHING-INDEPENDENT-ACCEPTED.json'
    sig = json.loads(sigpath.read_bytes())
    technical = HERE / 'ETA-PRODUCER-TRANSPORT-BINDING.json'
    techraw = technical.read_bytes()
    tech = json.loads(techraw)
    result = {'verifier': '/root/local_power_verification', 'reviewedUtc': datetime.now(timezone.utc).isoformat(),
              'runtimeSpecPath': HERE.parent.relative_to(ROOT).as_posix() + '/runtime/kernel-stage-spec.json',
              'sources': sources, 'acceptedOrigins': {
                  sig['archiveSha256']: {'signaturePath': sigpath.relative_to(ROOT).as_posix()},
                  tech['archiveSha256']: {'technicalProducerBindingPath': technical.relative_to(ROOT).as_posix(),
                                         'technicalProducerBindingSha256': hashlib.sha256(techraw).hexdigest()}},
              'mathematicalSource': 'R2 PROOF sections2.1-2.2 exact c18 eps1/16384 eta; lambda uses real integral right side of2.6 only',
              'failedLiteralPreserved': 'diagnostics/etaseries-first-literal/EtaSeriesLiteral.lean',
              'unconditionalCompleteOriginalIndexIncrement': 0, 'genuineInfiniteGapSupplied': False}
    out = HERE / 'KERNEL-REVIEW-CONTRACT.json'
    if out.exists():
        raise ValueError('Refuse replacing frozen kernel contract')
    out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'contract': str(out), 'sourceCount': len(sources), 'rootCounts': [len(r['roots']) for r in sources]}))
