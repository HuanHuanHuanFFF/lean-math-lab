"""File-recovery regression checks; no Lean execution or mathematical acceptance."""
import importlib.util
import subprocess
import tempfile
import unittest
from pathlib import Path

REPO = Path(__file__).resolve().parents[3]
spec = importlib.util.spec_from_file_location('restore', REPO / 'scripts/restore-research-artifacts.py')
restore = importlib.util.module_from_spec(spec)
spec.loader.exec_module(restore)


class RecoveryTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.data = b'original source\r\n'
        (self.root / 'canonical.txt').write_bytes(self.data)
        def git(*args):
            return subprocess.check_output(['git', '-C', str(self.root), *args], stderr=subprocess.DEVNULL)
        git('init', '-q')
        git('add', 'canonical.txt')
        git('-c', 'user.name=Artifact test', '-c', 'user.email=test@example.invalid',
            '-c', 'commit.gpgsign=false', 'commit', '-qm', 'fixture')
        self.manifest = {'schema_version': 1, 'source_commit': git('rev-parse', 'HEAD').decode().strip(),
                         'groups': [{'git_blob': restore.blob_id(self.data), 'size': len(self.data),
                                     'canonical': 'canonical.txt', 'duplicates': ['old/a.txt', 'old/b.txt']}]}

    def test_check_restore_and_repeat(self):
        result = restore.restore(self.root, self.manifest, check=True)
        self.assertEqual(result['missing'], 2)
        self.assertFalse((self.root / 'old').exists())
        self.assertEqual(restore.restore(self.root, self.manifest)['restored'], 2)
        self.assertEqual((self.root / 'old/a.txt').read_bytes(), self.data)
        self.assertEqual(restore.restore(self.root, self.manifest)['restored'], 0)

    def test_changed_canonical_uses_fixed_git_bytes(self):
        (self.root / 'canonical.txt').write_text('changed')
        restore.restore(self.root, self.manifest, prefix='old/a.txt')
        self.assertEqual((self.root / 'old/a.txt').read_bytes(), self.data)
        self.assertFalse((self.root / 'old/b.txt').exists())

    def test_conflict_preflight_preserves_all_destinations(self):
        (self.root / 'old').mkdir()
        (self.root / 'old/b.txt').write_text('user changes')
        with self.assertRaises(ValueError):
            restore.restore(self.root, self.manifest)
        self.assertFalse((self.root / 'old/a.txt').exists())
        self.assertEqual((self.root / 'old/b.txt').read_text(), 'user changes')

    def test_path_escape_and_symlink_rejected(self):
        self.manifest['groups'][0]['duplicates'] = ['../outside']
        with self.assertRaises(ValueError):
            restore.restore(self.root, self.manifest)
        self.manifest['groups'][0]['duplicates'] = ['linked/a.txt']
        (self.root / 'linked').symlink_to(self.root, target_is_directory=True)
        with self.assertRaises(ValueError):
            restore.restore(self.root, self.manifest)

    def test_unavailable_hash_and_unknown_prefix_rejected(self):
        with self.assertRaises(ValueError):
            restore.restore(self.root, self.manifest, prefix='unknown')
        self.manifest['groups'][0]['git_blob'] = '0' * 40
        with self.assertRaises(ValueError):
            restore.restore(self.root, self.manifest)
        self.assertFalse((self.root / 'old').exists())


if __name__ == '__main__':
    unittest.main()
