"""Bounded adversarial checks for the independent complete AX parser."""
import json
from pathlib import Path
from bind_local_power_archive import axiom_gate

HERE = Path(__file__).resolve().parent
source = b'#print axioms Scope.first\n#print axioms Scope.second\n'
expected = ['Scope.first', 'Scope.second']
first = "'Scope.first' depends on axioms: [propext, Classical.choice, Quot.sound]\n"
second = "'Scope.second' does not depend on any axioms\n"
valid = (first + second).encode()
axiom_gate(source, valid, expected)
bad = {
    'missing-root': first.encode(),
    'extra-root': (first + second + "'Scope.extra' does not depend on any axioms\n").encode(),
    'duplicate-root': (first + second + first).encode(),
    'unjustified-axiom': (first.replace('Quot.sound', 'sorryAx') + second).encode(),
    'duplicate-axiom': (first.replace('Quot.sound', 'propext') + second).encode(),
}
for label, stdout in bad.items():
    try:
        axiom_gate(source, stdout, expected)
    except ValueError:
        continue
    raise AssertionError('Failed to reject ' + label)
result = {'validCompleteRootSetAccepted': True, 'rejectedAdversarialCases': list(bad), 'checks': 6,
          'scope': 'AX parser gate only; no mathematical proof or compilation'}
(HERE / 'AX-GATE-SELFCHECK.json').write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
print('AX gate: one valid case accepted and five adversarial cases rejected')
