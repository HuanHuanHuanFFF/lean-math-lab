from pathlib import Path
import zipfile,hashlib,io,json,argparse

def check(root):
 m=json.loads((root/'sources/SOURCE_MAP.json').read_text());a=root/m['archive']
 assert a.stat().st_size==m['bytes'] and hashlib.sha256(a.read_bytes()).hexdigest()==m['sha256']
 z=zipfile.ZipFile(a);assert z.testzip() is None;zs={None:z}
 for row in m['mapped_members']:
  nested=row['nested']
  if nested not in zs:zs[nested]=zipfile.ZipFile(io.BytesIO(z.read(nested)))
  data=zs[nested].read(row['member']);f=root/row['path']
  assert data==f.read_bytes() and hashlib.sha256(data).hexdigest()==row['sha256']
 return {'original_zip_sha256':m['sha256'],'original_bytes':m['bytes'],'byte_mapped_members':len(m['mapped_members']),'status':'PASS'}
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('output');a=ap.parse_args();root=Path(__file__).resolve().parents[1]
 out=check(root);Path(a.output).write_text(json.dumps(out,indent=2)+'\n');print('PASS original ZIP and 7 byte-mapped members')
