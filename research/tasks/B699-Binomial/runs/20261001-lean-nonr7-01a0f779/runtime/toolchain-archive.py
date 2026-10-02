import argparse, hashlib, json, pathlib, struct, zipfile

p=argparse.ArgumentParser()
p.add_argument('mode', choices=['metadata','extract'])
p.add_argument('archive')
p.add_argument('--dest')
p.add_argument('--receipt', required=True)
a=p.parse_args()
archive=pathlib.Path(a.archive)

def keep(name):
    relative='/'.join(name.split('/')[1:])
    return (relative.startswith('bin/') and not relative.endswith('/')) or (
        relative.startswith('lib/lean/') and (
            relative.endswith(('.olean','.olean.private','.olean.server','.ir','.ir.sig','.dll')))) or (
        relative.startswith('lib/') and relative.endswith('.dll'))

if a.mode=='metadata':
    data=archive.read_bytes()
    pos=0; members=[]
    while True:
        pos=data.find(b'PK\x01\x02',pos)
        if pos<0: break
        values=struct.unpack_from('<4s6H3I5H2I',data,pos)
        name_len,extra_len,comment_len=values[10:13]
        name=data[pos+46:pos+46+name_len].decode('utf-8')
        members.append({'name':name,'compressed':values[8],'uncompressed':values[9]})
        pos+=46+name_len+extra_len+comment_len
    selected=[m for m in members if keep(m['name'])]
    result={'archiveTotalBytes':842456015,'members':len(members),'selectedMembers':len(selected),
        'allUncompressedBytes':sum(m['uncompressed'] for m in members),
        'selectedUncompressedBytes':sum(m['uncompressed'] for m in selected),
        'selection':'bin/*; lib/lean/* .olean/.olean.private/.olean.server/.ir/.ir.sig/.dll; lib/*.dll',
        'sampleNames':[m['name'] for m in selected[:6]]}
else:
    expected='c39360867edfff6b090f20c16e18581c969ce839b71e813d76022ec04ec73e4d'
    h=hashlib.file_digest(archive.open('rb'),'sha256').hexdigest()
    if h!=expected: raise RuntimeError('official toolchain archive sha256 mismatch')
    dest=pathlib.Path(a.dest).resolve(); count=total=0
    with zipfile.ZipFile(archive) as z:
        for info in z.infolist():
            if not keep(info.filename): continue
            rel=pathlib.PurePosixPath('/'.join(info.filename.split('/')[1:]))
            if rel.is_absolute() or '..' in rel.parts: raise RuntimeError('unsafe member')
            target=dest.joinpath(*rel.parts);target.parent.mkdir(parents=True,exist_ok=True)
            if not target.exists():
                with z.open(info) as source,target.open('wb') as out:
                    while chunk:=source.read(1048576):out.write(chunk)
            count+=1;total+=info.file_size
    result={'archiveSha256':h,'selectedMembers':count,'selectedUncompressedBytes':total,'destination':str(dest)}
pathlib.Path(a.receipt).write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result))
