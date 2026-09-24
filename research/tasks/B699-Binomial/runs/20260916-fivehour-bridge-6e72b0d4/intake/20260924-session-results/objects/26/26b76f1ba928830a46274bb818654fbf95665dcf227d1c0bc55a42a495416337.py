#!/usr/bin/env python3
"""Archive this session's existing outputs only; never execute research code."""
from __future__ import annotations
import collections
import difflib
import hashlib
import io
import json
import os
from pathlib import Path, PurePosixPath
import re
import shutil
import sys
import zipfile

BASE = Path('/mnt/data')
NAME = 'C-B699-ALL-SESSION-OUTPUTS-2026-09-24'
ROOT = BASE / NAME
ZIP_OUT = BASE / (NAME + '.zip')
WORK = BASE / '_session_archive_work'
assert not ROOT.exists(), 'Refuse to overwrite an existing archive tree.'
ROOT.mkdir()

def sha(b: bytes) -> str:
    return hashlib.sha256(b).hexdigest()

def js(data) -> bytes:
    return (json.dumps(data, ensure_ascii=False, indent=2, sort_keys=True) + '\n').encode('utf-8')

def write_new(path: str, text: str | bytes):
    p = ROOT / path
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_bytes(text if isinstance(text, bytes) else text.encode('utf-8'))

# Names, boundaries and summaries identify the saved reports; no new mathematical claims.
SPECS = [
 ('C07-preliminary','B699-newC-q4-uniform-factor7-20260922.zip','8552d7d38317347d3f5ce89b7f68739b500720e20f5a686b24d34a27b893e320','file_000000003538820bba83caa3690020b9','2026-09-22T03:48:36.206045+00:00','首轮早期交付：q4 三落点、统一粗因子与前沿压缩；保留其原始状态。'),
 ('C07','B699-C7-q4-character-center-20260922-evidence.zip','ec7b656136aa1ad32e4215e00e568c32a8dcd3c23818461357d3fd2a5cf25eb4','file_0000000034c881f596297cdada8b3f8e','2026-09-22T04:06:59.746572+00:00','q4 奇指数落点压缩、CENTER-SF 及 q5 的 p 进路线停止边界。'),
 ('C08','B699-C8-res10-spart-finiteness-20260922-evidence.zip','66c42ad2794ce548a8a8a4c626f09d80ae779cc83f443e8c8f620e4543f5c6a1','file_00000000de3c8211b7ce6dec09362035','2026-09-22T04:53:29.374322+00:00','UF7、RGAP7-SF 与固定 S-part 的非有效有限性；按原报告保留非有效边界。'),
 ('C09','B699-C9-bft-full-near-closure-20260922-evidence.zip','90441a9b0d33af375883fdd9ee27f250aa599a35fa2a1a6372975089291ea08f','file_0000000057d482089cc33afe57178166','2026-09-22T05:23:12.574188+00:00','BFT 与 D25 组合：B/RES10 第5源全近侧子域的交付。'),
 ('C10','B699-C10-central-dominance-20260922-evidence.zip','68bd6a98cf44d3f5c71a192b1758ebe11f86ed0699506aabd09d048963c95533','file_0000000001988211b896754b5736b311','2026-09-22T06:35:42.439455+00:00','GLR-SF、CENTRAL32、第5源无中央分配及中央支配边界。'),
 ('C11','B699-C11-res10-k16-closure-20260922-evidence.zip','00d5581aac160e59af6b61d8ef10908063cd5f00c5f325d15cbad84be692e63f','file_00000000160082308f84f5c7f00f60e9','2026-09-22T07:36:31.819759+00:00','正十六次核 K16、Taylor 阶与 B/RES10 子域交付。'),
 ('C12','B699-C12-h025-effective-finiteness-20260922-evidence.zip','13f30a972219b1b6c5b2c42070230eeae213d09e0deb8d5e9abd9f33d713c1ae','file_0000000075d481fd9a9e7599f4bddca6','2026-09-22T08:21:36.522168+00:00','两个 H025 尾类的六模板有效高度；当轮有限末端尚未完成。'),
 ('C13','B699-C13-worst-shell-closure-20260922-evidence.zip','92cf5deb7b1484685e05bd3776969c960b3ee01ccfb82e72db96fb2928d907ef','file_00000000868c81f781f1ebcd72a9ac88','2026-09-22T09:31:21.007593+00:00','正二十次核 K20、互补恒等式、96+24 原行与最坏源壳的有限末端。'),
 ('C14','B699-C14-all-pure-source-shells-20260922-evidence.zip','b12038661847cc649b40c9e851e889be75566a53bafb904ed296925f194c8847','file_000000007fec81f8a4964b62271d36c0','2026-09-22T10:18:56.086739+00:00','EC/EN/EE/CC/CN/CE 六纯位置源壳、候选表和 CRT 回执。'),
 ('C15-earlier','B699-C15-no-central-q5-closure-20260922-evidence.zip','0d350c195f49727f680c981f6d3a6f3bafdb3841e6c21ac478ac0e4410b22e28','file_000000004b3082119754d4f81a884211','2026-09-24T04:33:56.938317+00:00','C15 已发布早版；同名后版覆盖前的原始 ZIP。'),
 ('C15','B699-C15-no-central-q5-closure-20260922-evidence.zip','c766b2db847e647ff6a872b7ea595be998ee51cae621356e6b22132493efe2ea','file_00000000875c82078b3702717a8bac22','2026-09-24T04:33:56.938317+00:00','Q52=1 的统一交付；K16、SAT 与 400+855 指数对证书。'),
 ('C16','B699-C16-h025-two-tail-closure-20260924-evidence.zip','8d4c61c8386602c393676d6478cf414290f830cce73933f8ee2ba26132c3f272','file_00000000416082089f2a23177415afa2','2026-09-24T05:11:32.115609+00:00','两个完整幂唯一恢复原行；1280/1530 模类、1429 原行及对应 QIG 证书。'),
 ('C17','B699-C17-high3-position5-closure-20260924-evidence.zip','2eca9432ed884db226ef25a690f31b8156771ad8e0993ac41c4d9c48334932fd','file_000000006a408207ab87883b82dde5ad','2026-09-24T05:58:08.627379+00:00','50/752 模类、三边 BFT 约束、4332 原行和五个原题终端的交付。'),
]

original_entries=[]
archive_registry=[]
source_inventory=[]
member_data={}
loose_matched=0

# Snapshot only the session artifacts mounted before this archival task.
for p in sorted(BASE.iterdir()):
    if p.name.startswith('B699-C') or p.name.startswith('B699-newC') or p.name=='B699_C13_____.csv':
        for f in ([p] if p.is_file() else sorted(x for x in p.rglob('*') if x.is_file())):
            source_inventory.append({'path':str(f),'bytes':f.stat().st_size,'sha256':sha(f.read_bytes()),'kind':'mounted_session_artifact'})


def add_original(dest: str, data: bytes, provenance: dict):
    if (ROOT/dest).exists():
        assert (ROOT/dest).read_bytes()==data
        return
    write_new(dest,data)
    original_entries.append({'path':dest,'bytes':len(data),'sha256':sha(data),'provenance':provenance})

for label, filename, expected, fid, exported, summary in SPECS:
    src = BASE / filename
    if label=='C15-earlier':
        src=BASE/'_archive_recovery/C15_earlier'/filename
        source_inventory.append({'path':str(src),'bytes':src.stat().st_size,'sha256':sha(src.read_bytes()),'kind':'recovered_exact_earlier_export','file_id':fid})
    raw=src.read_bytes()
    assert sha(raw)==expected,(label,'source ZIP digest mismatch')
    zip_dest=f'ORIGINAL_ZIPS/{label}/{filename}'
    add_original(zip_dest,raw,{'kind':'original_evidence_zip','round':label,'source_path':str(src),'file_id':fid,'byte_preserved':True})
    reg={'round':label,'original_name':filename,'file_id':fid,'exported_at_utc':exported,'scope_from_saved_report':summary,'sha256':expected,'bytes':len(raw),'archived_zip':zip_dest}
    with zipfile.ZipFile(io.BytesIO(raw)) as z:
        assert z.testzip() is None
        infos=z.infolist()
        file_infos=[i for i in infos if not i.is_dir()]
        roots={PurePosixPath(i.filename).parts[0] for i in infos}
        assert len(roots)==1
        root=next(iter(roots))
        reg.update({'zip_entries':len(infos),'files':len(file_infos),'directories':len(infos)-len(file_infos),'uncompressed_file_bytes':sum(i.file_size for i in file_infos),'zip_crc':'PASS','extracted_root':f'ROUNDS/{label}/{root}'})
        mm={}
        for i in infos:
            parts=PurePosixPath(i.filename).parts
            assert not PurePosixPath(i.filename).is_absolute() and '..' not in parts and '\\' not in i.filename
            dest=f'ROUNDS/{label}/{i.filename}'
            if i.is_dir():
                (ROOT/dest).mkdir(parents=True,exist_ok=True)
                continue
            assert i.filename not in mm
            data=z.read(i)
            mm[i.filename]=data
            provenance={'kind':'verbatim_zip_member','round':label,'source_zip':zip_dest,'source_zip_sha256':expected,'zip_member':i.filename,'zip_crc32':f'{i.CRC:08x}','zip_timestamp':list(i.date_time),'byte_preserved':True}
            loose=BASE/i.filename
            if label!='C15-earlier' and loose.is_file():
                assert loose.read_bytes()==data,('standalone version differs',str(loose))
                provenance['identical_mounted_aliases']=[str(loose)]
                loose_matched+=1
            add_original(dest,data,provenance)
        member_data[label]=mm
        # Verify original internal SHA lists as data. Never import or execute package code.
        hash_checks=[]
        for sf in mm:
            if PurePosixPath(sf).name not in ('SHA256SUMS','MANIFEST.sha256'):
                continue
            parent=str(PurePosixPath(sf).parent)
            checks=[]
            for line in mm[sf].decode('utf-8').splitlines():
                if not line.strip():continue
                m=re.match(r'^([a-fA-F0-9]{64})\s+\*?(.+?)\s*$',line)
                assert m,('malformed original SHA list',label,line)
                path=m[2].removeprefix('./')
                target=parent+'/'+path
                actual=sha(mm[target]) if target in mm else None
                checks.append({'member':target,'expected_sha256':m[1].lower(),'actual_sha256':actual,'matches':actual==m[1].lower()})
            hash_checks.append({'hash_list':sf,'checks':checks,'pass':all(c['matches'] for c in checks)})
        reg['internal_hash_lists']=hash_checks
        assert all(c['pass'] for c in hash_checks),(label,'original internal hashes fail')
        reg['manifest_audit']=[]
        for mf in mm:
            if PurePosixPath(mf).name!='MANIFEST.json':continue
            m=json.loads(mm[mf])
            parent=str(PurePosixPath(mf).parent)
            audit={'member':mf,'sha256_checks':0,'file_presence_checks':0,'pass':True}
            for e in m.get('entries',[]):
                destname=parent+'/'+e['path'].removeprefix('./')
                exists=destname in mm
                audit['file_presence_checks']+=1
                audit['pass'] &= exists
                if exists and 'sha256' in e:
                    audit['sha256_checks']+=1
                    audit['pass'] &= sha(mm[destname])==e['sha256']
                if exists and 'bytes' in e:
                    audit['pass'] &= len(mm[destname])==e['bytes']
            for f in m.get('files',[]):
                if isinstance(f,str):
                    audit['file_presence_checks']+=1
                    audit['pass'] &= (parent+'/'+f.removeprefix('./')) in mm
            reg['manifest_audit'].append(audit)
            assert audit['pass'],('original manifest mismatch',label)
    if label not in ('C07-preliminary','C15-earlier'):
        validation_name=filename.removesuffix('-evidence.zip')+'-validation.json'
        vp=BASE/validation_name
        vd=f'VALIDATION_RECEIPTS/{label}/{validation_name}'
        add_original(vd,vp.read_bytes(),{'kind':'original_external_validation_receipt','round':label,'source_path':str(vp),'byte_preserved':True})
        vr=json.loads(vp.read_bytes())
        digest=vr.get('zip_sha256')
        reg['validation_receipt']=vd
        reg['receipt_hash_matches']=digest==expected
        reg['receipt_member_count']=vr.get('archive_members')
        reg['receipt_member_count_matches_zip_entries']=vr.get('archive_members')==reg['zip_entries']
        assert reg['receipt_hash_matches']
        assert reg['receipt_member_count_matches_zip_entries']
    archive_registry.append(reg)

# Preserve the actual table export, not the truncated conversational display.
csvp=BASE/'B699_C13_____.csv'
add_original('EXTRAS/C13/B699_C13_____.csv',csvp.read_bytes(),{'kind':'original_session_generated_csv','round':'C13','file_id':'file_00000000f5f48230ab3df969ec1c5874','source_path':str(csvp),'byte_preserved':True})

# Exact archived C15 revisions and a mechanical text diff, without interpreting proof changes.
old=member_data['C15-earlier'];new=member_data['C15']
changes=[];diff_parts=[]
for k in sorted(set(old)|set(new)):
    if old.get(k)!=new.get(k):
        changes.append({'member':k,'earlier_sha256':sha(old[k]) if k in old else None,'final_sha256':sha(new[k]) if k in new else None})
        if k.endswith(('.md','.json','SHA256SUMS')):
            diff_parts.extend(difflib.unified_diff(old.get(k,b'').decode('utf8').splitlines(True),new.get(k,b'').decode('utf8').splitlines(True),fromfile='earlier/'+k,tofile='final/'+k))
write_new('ARCHIVE_METADATA/C15_VERSION_DIFF.patch',''.join(diff_parts))

# Limited visible execution outputs are preserved as clearly marked transcriptions,
# NOT as claimed recovered raw stdout or validation file bytes.
write_new('RECOVERED_CONSOLE_EXCERPTS/README.md', '''# 可见执行输出摘录（归档时转录）

本目录只转录当前对话中可见的少量执行输出，用于保留失败与版本脉络。
它们不是取回的原始 stdout 文件，也不声称逐字节恢复完整 Notebook、全部调用或完整聊天导出。
研究包中本来存在的 replay.stdout.*、证书和 validation.json 均另外原样保留。
这些摘录本次没有重新执行。
''')
write_new('RECOVERED_CONSOLE_EXCERPTS/C13_PACKAGING_FAILURE.txt', '''[归档转录：C13 可见打包调用的错误尾部；不是完整原始 stderr]
FileNotFoundError: /mnt/data/B699-C12-h025-effective-finiteness-20260922/sources/H025_CONTRACT_EXTRACT.md

该次错误不替代随后发布并已取回的 C13 最终证据 ZIP。
''')
write_new('RECOVERED_CONSOLE_EXCERPTS/C15_GENERATOR_FAILURE.txt', '''[归档转录：C15 首次可见生成器调用；不是完整原始 stderr]
exec(open("/mnt/data/.c15_generator.py", "r", encoding="utf-8").read())
File <string>:201
AssertionError:

该生成器原文件当前未取回；随后导出的 C15 早版与最终版 ZIP 均已原样归档。
''')
write_new('RECOVERED_CONSOLE_EXCERPTS/C15_EARLIER_VALIDATION_CONSOLE.json',js({
 'archival_origin':'transcribed_from_visible_tool_output_not_recovered_original_validation_bytes',
 'visible_output':{
  'A_pairs':400,'B_pairs':855,'archive_members':22,'closed_domain':'Q52=1 in both old H025 tails',
  'extracted_replay':'PASS','finite_terminals_remaining':0,'replay_status':'PASS_C15_NO_CENTRAL_Q5_CLOSURE',
  'repository_modified':False,'status':'PASS','zip_bytes':46135,
  'zip_path':'/mnt/data/B699-C15-no-central-q5-closure-20260922-evidence.zip',
  'zip_sha256':'0d350c195f49727f680c981f6d3a6f3bafdb3841e6c21ac478ac0e4410b22e28','zip_test':'PASS'
 }}))

# All mounted originals have either a verbatim original copy or a byte-identical
# member alias. This catches omissions without running any mathematical code.
represented=set()
for e in original_entries:
    p=e['provenance']
    if 'source_path' in p:represented.add(p['source_path'])
    represented.update(p.get('identical_mounted_aliases',[]))
assert all(e['path'] in represented for e in source_inventory),[e['path'] for e in source_inventory if e['path'] not in represented]

missing=[
 {'item':'各正式轮次最终证据包及外部验证回执','status':'recovered','detail':'C7–C17 的 11 个最终原 ZIP 和 11 个包外 validation.json 均已取回；不存在整轮最终交付缺失。'},
 {'item':'首轮早期交付 B699-newC-q4-uniform-factor7-20260922.zip','status':'recovered','detail':'已由当前会话生成文件列表确认归属，原包和 8 个文件均保留；不将其重新命名为 C1–C6 或额外正式轮次。'},
 {'item':'C15 已发布早版 ZIP','status':'recovered','detail':'依据旧 file_id 取回 46135 字节早版，SHA-256 0d350c...；与最终 c766b2... 版本分别保留。'},
 {'item':'C15 早版包外 validation.json 的原始字节','status':'not_recovered','detail':'当前挂载回执为最终版；旧版原始回执未取回。可见工具输出中相应字段已单独转录并清楚标记，不冒充原文件。'},
 {'item':'临时生成脚本 /mnt/data/.c14_generator.py、/mnt/data/.c15_generator.py','status':'not_recovered','detail':'可见对话调用过这些本地脚本；当前容器和会话已导出文件目录未见其原始字节。各最终证据包的 code/ 研究重放脚本均已保留。'},
 {'item':'临时 /mnt/data/_k20_factors_tmp.json','status':'not_recovered','detail':'C13 可见代码曾引用；原临时文件未取回。已发布 kernel20.json 等结果照原包保留，不声称等同于该临时文件的原始字节。'},
 {'item':'未导出的生成器、失败调用完整 stdout/stderr、Notebook 完整历史和中间工作树','status':'not_recovered','detail':'没有可验证的完整导出。归档仅保留已取回原件及少量明确标注的可见输出摘录，不重建、重跑或虚构遗漏材料。'},
 {'item':'逐轮独立 FRONTIER.md / ERRATA.md 或额外勘误文件','status':'not_observed_as_separate_exports','detail':'已取回包未见这些独立文件；相关 frontier / 边界内容按原 REPORT、PROOFS、FAILURES、HANDOFF 保留。本次 VERSION_NOTES.md 仅为归档版本说明，不冒充历史勘误。'},
 {'item':'首轮早期包的独立 HANDOFF / SOURCE_ADOPTION / validation 及 C8 MANIFEST.json','status':'not_observed_in_original_archives','detail':'早期包使用 MANIFEST.sha256，C8 使用 SHA256SUMS；原包未见这些另外的文件，无法确认曾生成，不伪造补件。'},
 {'item':'其他会话 C1–C6、Pro A/B/D/E 的交付或完整仓库','status':'out_of_scope','detail':'本会话编号继承既有研究，首次最终交付为 C7。没有独立纳入其他会话产物、项目输入或仓库；原证据 ZIP 本来内嵌的 sources/ 依赖快照随原包保留，并明确不计为本会话新研究。'},
]
write_new('ARCHIVE_METADATA/MISSING_RECORDS.json',js(missing))
write_new('ARCHIVE_METADATA/ORIGINAL_ARCHIVES.json',js(archive_registry))
write_new('ARCHIVE_METADATA/SOURCE_INVENTORY.json',js({'scope':'this conversation only; source snapshots before archival assembly','items':source_inventory,'mounted_loose_aliases_matched_to_zip_members':loose_matched}))
write_new('ARCHIVE_METADATA/C15_VERSION_CHANGES.json',js(changes))

stats={
 'formal_rounds':list(range(7,18)), 'formal_round_count':11,
 'original_evidence_zip_count':len(archive_registry),
 'verbatim_extracted_file_count':sum(a['files'] for a in archive_registry),
 'original_external_validation_count':11,
 'original_extra_csv_count':1,
 'verbatim_original_payload_file_count':len(original_entries),
 'recovered_source_file_count':len(source_inventory),
 'source_loose_aliases_not_duplicated':loose_matched,
 'internal_original_sha_list_checks':sum(len(h['checks']) for a in archive_registry for h in a['internal_hash_lists']),
 'all_original_zip_crc_passed':True,
 'all_original_sha_lists_passed':True,
 'all_original_manifests_checks_passed':True,
 'all_final_original_validation_zip_hashes_matched':True,
 'all_final_original_validation_member_counts_matched':True,
 'research_scripts_executed_this_task':False,
 'research_replay_performed_this_task':False,
 'new_math_research_performed':False,
 'repository_access_or_writes_this_task':False,
 'proof_validity_audited_this_task':False,
}
assert stats['original_evidence_zip_count']==13
assert stats['verbatim_extracted_file_count']==227
assert stats['verbatim_original_payload_file_count']==252
write_new('ARCHIVE_METADATA/ARCHIVE_INTEGRITY.json',js(stats))

# Archival notes: factual byte/container distinctions, not new proof reconciliation.
notes='''# VERSION_NOTES — 原件版本与计数口径

## 1. 日期、编号与归属

归档日期为 2026-09-24。正式轮次是 C7–C17，共 11 轮。首个用户轮还发布过
`B699-newC-q4-uniform-factor7-20260922.zip`，已按 `C07-preliminary` 独立保留；
它与 C7/C8 内容有重叠，但本次不删除、合并或判断其数学先后关系。
各文件名和内文的原日期不更改；文件标识和导出时间见 ORIGINAL_ARCHIVES.json。

## 2. C15 的两个原始版本

早版（46135 字节）：
`0d350c195f49727f680c981f6d3a6f3bafdb3841e6c21ac478ac0e4410b22e28`

最终版（46136 字节）：
`c766b2db847e647ff6a872b7ea595be998ee51cae621356e6b22132493efe2ea`

两个 ZIP 均逐字节保留，未将早版重压缩冒充原件。二者差异文件为：
'''
for c in changes:notes+='- `'+c['member'].split('/',1)[1]+'`\n'
notes+='''
机械文本差异另存 `ARCHIVE_METADATA/C15_VERSION_DIFF.patch`。
`PROOFS.md`、重放程序和机器输出的两版字节相同；这里只记录版本差异，不判断证明有效性。
早版包外回执未取回原始字节，只有单独标注的可见控制台字段转录。

## 3. C8 的 18 个成员不等于 18 个文件

C8 原 ZIP 共有 18 个 ZIP 条目，其中 14 个文件、4 个目录项。
原 validation.json 的 `archive_members=18` 与 ZIP 完全一致；并没有发现缺失四个文件。
首轮早期包同样为 11 个条目，其中 8 个文件、3 个目录项。
本总归档公布的文件数统一不计目录项；原 ZIP 则保留原有目录条目。

## 4. 原包依赖与独立材料的边界

本次不另行收集其他会话的报告、证据 ZIP 或仓库目录。
本会话原证据 ZIP 已内嵌的 `sources/`（包括 Overview、冻结合同、旧轮次快照）
是原交付字节的一部分，不能在宣称保留原 ZIP 的同时删去；因此原样保留，
但不计作本会话新增研究。松散挂载的 Overview 输入及其重复件不另外打包。

## 5. 原样保留，不改写历史

各轮报告所述的“前沿、闭合、有限化、未完成”按当时原文保留，
不因后续轮次进展而修改。C16 原包中的 `code/__pycache__/...pyc` 也保留原字节。
所有研究程序均未在本次运行；原日志里的 PASS 是历史记录。
本次只检查 ZIP CRC、逐文件字节、原有哈希清单及归档自身完整性。
'''
write_new('VERSION_NOTES.md',notes)

missing_md='''# MISSING — 恢复范围与真实缺项

**没有缺失任何正式轮次的最终证据 ZIP：C7–C17 全部 11 轮已取回。**
另已收首轮早期包、C15 已发布早版 ZIP、11 份最终包外回执和 C13 表格 CSV。
“完整归档”在此指全部已识别、可取回的本会话文件，不表示所有临时内存、工作树或平台聊天导出均可恢复。

'''
for x in missing:
    missing_md+=f"## {x['item']}\n\n状态：`{x['status']}`。{x['detail']}\n\n"
missing_md+='''## 检索与恢复依据

核对了当前会话生成文件目录、当前容器全部可见产物、各轮原证据 ZIP 成员和其原始哈希表；
针对 C15 旧版使用确切旧 file_id 取回原始 ZIP。未访问或修改 GitHub 仓库，未进行网络文献检索。
同名散件与对应原 ZIP 成员逐字节比较后合并引用，不丢失版本；C15 早/最终版本分目录保存。

本次未执行数学重放、因数分解、扫描或新证明；因此本次完整性 PASS 只表示文件归档通过，
不表示数学结论已被重新审查或得到 Lean/外审认可。
'''
write_new('MISSING.md',missing_md)

# Archive-only verifier, deliberately no imports of stored research modules.
verify='''#!/usr/bin/env python3
"""Verify archived bytes only. Does NOT execute the research scripts."""
from pathlib import Path
import hashlib,json,sys,zipfile

def digest(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()

def main():
    root=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else Path(__file__).resolve().parents[1]
    failures=[];checked=0
    for line in (root/'SHA256SUMS').read_text(encoding='utf-8').splitlines():
        expected,rel=line.split('  ',1)
        p=root/rel
        if not p.is_file() or digest(p)!=expected:failures.append(rel)
        checked+=1
    zip_count=0
    for p in sorted((root/'ORIGINAL_ZIPS').rglob('*.zip')):
        with zipfile.ZipFile(p) as z:
            bad=z.testzip()
            if bad:failures.append(str(p)+':'+bad)
        zip_count+=1
    result={'status':'PASS_ARCHIVE_BYTES_ONLY' if not failures else 'FAIL',
            'files_hashed':checked,'original_zips_crc_checked':zip_count,
            'research_code_executed':False,'mathematical_replay_performed':False,'failures':failures}
    print(json.dumps(result,ensure_ascii=False,indent=2))
    return int(bool(failures))
if __name__=='__main__':raise SystemExit(main())
'''
write_new('ARCHIVE_TOOLS/verify_archive.py',verify)
# Preserve archival assembly code as new archival tooling, not as historical research.
write_new('ARCHIVE_TOOLS/build_archive.py',Path(__file__).read_bytes())

# Create per-round browse index, enumerating all extracted files (not just names).
index='''# C-B699 — 本会话全部可恢复交付总归档

归档日期：2026-09-24。只做文件归档，没有开展新数学研究、研究重放或仓库操作。

## 范围与阅读入口

覆盖 **C7–C17 全部 11 个正式轮次**，另收首轮早期交付和 C15 已发布早版。
历史原证据 ZIP 共 **13 个**，包内文件均有便于浏览的逐字节展开副本。
包外验证回执 11 份、C13 CSV 1 份均保留。缺项和无法确认形成过的文件见 [MISSING.md](MISSING.md)。

本目录下所有轮次摘要只描述各原报告的交付范围，不构成本次重新证明或验收。
不同阶段的旧结论与失败边界不被后续进展覆盖改写。原件版本说明见 [VERSION_NOTES.md](VERSION_NOTES.md)。

### 目录

- `ORIGINAL_ZIPS/`：各轮历史证据 ZIP 原始字节；C15 早版/最终版独立保存。
- `ROUNDS/`：对应 ZIP 的全部文件展开副本，保持原相对结构。
- `VALIDATION_RECEIPTS/`：历史包外验证回执，不是本次重跑结果。
- `EXTRAS/C13/`：本会话生成的表格 CSV 原件。
- `RECOVERED_CONSOLE_EXCERPTS/`：少量可见执行输出的明确标注转录，不冒充原始日志。
- `ARCHIVE_METADATA/`：原 ZIP 注册表、来源路径、缺项记录、版本差异和文件完整性结果。
- `ARCHIVE_TOOLS/`：本次新增的组包/字节核验工具；不会自动运行研究脚本。
- `MANIFEST.json`、`SHA256SUMS`：总归档逐文件清单与哈希。

## 按轮次导航

|轮次/版本|原包文件数（不计目录）|交付范围（沿用原报告）|原始 ZIP|可读报告|
|---|---:|---|---|---|
'''
for a in archive_registry:
    report=a['extracted_root']+'/REPORT.md'
    index+=f"|{a['round']}|{a['files']}|{a['scope_from_saved_report']}|[ZIP]({a['archived_zip']})|[REPORT]({report})|\n"
index+='''
C7 以前的 C1–C6 属于继承基线，不是本会话新增轮次，未作为独立交付纳入。
原包自带 `sources/` 依赖快照随原件保留；没有额外导入其他会话文件。

## 原 ZIP 的 SHA-256

'''
for a in archive_registry:
    index+=f"### {a['round']}\n\n`{a['original_name']}`\n\n```text\n{a['sha256']}\n```\n\n"
index+='## 逐轮完整文件目录\n\n以下每个链接指向原 ZIP 成员的字节一致副本。\n\n'
for a in archive_registry:
    index+=f"### {a['round']} — {a['original_name']}\n\n"
    index+=f"原包：{a['bytes']:,} 字节；{a['zip_entries']} 个 ZIP 条目 = {a['files']} 文件 + {a['directories']} 目录项。\n\n"
    if 'validation_receipt' in a:index+=f"包外回执：[validation.json]({a['validation_receipt']})。\n\n"
    ebase=a['extracted_root']; pre=ebase+'/'
    entries=[e for e in original_entries if e['path'].startswith(pre)]
    index+='|相对文件|字节|说明|\n|---|---:|---|\n'
    for e in sorted(entries,key=lambda e:e['path']):
        rel=e['path'][len(pre):]
        if rel.startswith('sources/'):
            description='原包内嵌依赖/来源快照（非另行引入的新研究）'
        elif rel.startswith('code/') or rel.endswith('.py'):
            description='原研究脚本/缓存；本次未执行'
        elif rel.startswith('outputs/') or 'replay-output' in rel:
            description='原机器输出/证书/日志'
        elif 'MANIFEST' in rel or 'SHA256' in rel:
            description='原清单/哈希'
        else:description='原文档'
        index+=f"|[{rel}]({e['path']})|{e['bytes']:,}|{description}|\n"
    index+='\n'
index+='''## 文件计数与验证方式

原始证据 ZIP 13 个 + 展开原文件 227 个 + 包外回执 11 个 + CSV 1 个 = **252 个原件保真文件条目**。
这包含原 ZIP 与展开副本的有意双重保存，也包含不同轮次封存的依赖快照，不是去重后的内容数量。
总文件数另包含本次新增的索引、缺项说明、来源清单、版本差异、摘录与归档工具，见 ARCHIVE_METADATA/ARCHIVE_INTEGRITY.json 和最终包外回执。

只检查文件完整性：

```bash
python3 ARCHIVE_TOOLS/verify_archive.py
```

该工具不运行各轮 `replay.py` / `certify.py`，也不验证任何数学结论。
原报告中已有的重放指令仍保持原文，但本次没有执行。

## 证据等级

原有纸面证明、必要条件、有限证书、出版定理输入与作者级验证等级均按原文保留。
本次 ZIP/哈希通过只意味着字节归档一致，不是 Lean、独立外审或完整 B699 闭合。
'''
write_new('INDEX.md',index)

# Final archival manifest: hashes every original/new file except manifest and checksum self-reference.
original_by_path={e['path']:e for e in original_entries}
manifest_entries=[]
for p in sorted(x for x in ROOT.rglob('*') if x.is_file()):
    rel=p.relative_to(ROOT).as_posix()
    if rel in ('MANIFEST.json','SHA256SUMS'):continue
    e={'path':rel,'bytes':p.stat().st_size,'sha256':sha(p.read_bytes())}
    if rel in original_by_path:e.update({'preservation':'original_bytes','provenance':original_by_path[rel]['provenance']})
    else:e.update({'preservation':'new_archival_document_or_marked_transcription','research_result':False})
    manifest_entries.append(e)
manifest={
 'schema':'C-B699-session-archive-2026-09-24-v1','archive_date':'2026-09-24',
 'formal_rounds':'C7-C17','formal_round_count':11,'original_evidence_zip_count':13,
 'verbatim_original_payload_file_count':len(original_entries),
 'mathematical_replay_performed':False,'new_research_performed':False,
 'repository_operations':'none',
 'hash_exclusions':['MANIFEST.json (self-reference)','SHA256SUMS (self-reference)'],
 'entries':manifest_entries,
}
write_new('MANIFEST.json',js(manifest))
all_files=sorted(x for x in ROOT.rglob('*') if x.is_file())
write_new('SHA256SUMS',''.join(f"{sha(p.read_bytes())}  {p.relative_to(ROOT).as_posix()}\n" for p in all_files if p.name!='__DO_NOTHING__' and p.relative_to(ROOT).as_posix()!='SHA256SUMS'))

# Preserve original ZIPs as stored data; compress readable members.
with zipfile.ZipFile(ZIP_OUT,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9,allowZip64=True) as z:
    for p in sorted(x for x in ROOT.rglob('*') if x.is_file()):
        rel=p.relative_to(ROOT).as_posix()
        compress=zipfile.ZIP_STORED if rel.startswith('ORIGINAL_ZIPS/') else zipfile.ZIP_DEFLATED
        z.write(p,arcname=NAME+'/'+rel,compress_type=compress,compresslevel=None if compress==zipfile.ZIP_STORED else 9)

# Verify the OUTER ZIP plus every actual archived file; no research script runs.
with zipfile.ZipFile(ZIP_OUT) as z:
    assert z.testzip() is None
    for p in sorted(x for x in ROOT.rglob('*') if x.is_file()):
        rel=p.relative_to(ROOT).as_posix()
        assert sha(z.read(NAME+'/'+rel))==sha(p.read_bytes())
    for a in archive_registry:
        assert sha(z.read(NAME+'/'+a['archived_zip']))==a['sha256']
    outer_files=len([i for i in z.infolist() if not i.is_dir()])
    outer_uncompressed=sum(i.file_size for i in z.infolist())

receipt={**stats,
 'status':'PASS_ARCHIVE_BYTES_ONLY',
 'archive_path':str(ZIP_OUT),'archive_name':ZIP_OUT.name,
 'archive_sha256':sha(ZIP_OUT.read_bytes()),'archive_bytes':ZIP_OUT.stat().st_size,
 'archive_uncompressed_bytes':outer_uncompressed,
 'outer_zip_file_count':outer_files,
 'new_archival_file_count':outer_files-len(original_entries),
 'outer_zip_crc':'PASS','all_archived_file_bytes_checked':outer_files,
 'original_zip_byte_equality_checked':13,
 'original_research_claims_reverified':False,
 'missing_final_rounds':[],
 'known_limitations':['C15 earlier external validation raw bytes unavailable; console fields transcribed separately','unexported temporary generators and full execution history unavailable'],
}
# Supply the archive digest outside the ZIP to avoid self-referential hashes.
(BASE/(NAME+'-validation.json')).write_bytes(js(receipt))
(BASE/(NAME+'.zip.sha256')).write_text(receipt['archive_sha256']+'  '+ZIP_OUT.name+'\n',encoding='utf-8')
print(json.dumps(receipt,ensure_ascii=False,indent=2,sort_keys=True))
