# R01 · KSAT²31 收益诊断与 post-Bellman TRACE

原报告记录：KSAT²31 条件收益对六状态删除0；post-Bellman TRACE删除4个聚合分支；第二根矩20个聚合相容。COVER9保持。

REPORT.md §2–6；PROOFS.md；certificates/ 下4份精确JSON；logs/ 下初始、检查与重放日志。

原ZIP：[B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence.zip](originals/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence.zip)  
SHA-256：`41dad9bc3424c9fd5aa1831bf6087098edb5bf07703826c51eea2cc2bc8cc5f3`  
原包成员：20；独立附件副本：2；包外侧文件：0。

以下为本轮归档的全部原始文件条目（本页本身为新建索引，不列入原件数）。

|类别|文件|字节|SHA-256|
|---|---|---:|---|
|original_zip|[originals/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence.zip](originals/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence.zip)|48682|`41dad9bc3424c9fd5aa1831bf6087098edb5bf07703826c51eea2cc2bc8cc5f3`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/SHA256SUMS.txt](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/SHA256SUMS.txt)|1679|`b8cdca870cdc6a2e93b08f83b0ee336a5249477331020bfd20a025e6acd4234b`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/SOURCE_ADOPTION.md](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/SOURCE_ADOPTION.md)|853|`d98450b5deb6f5fcfa0e7ce38aeabc196f08053eafd156e6d60fe9aa40cb1f43`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/REPLAY.md](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/REPLAY.md)|686|`d9328d116b9dfc1bf8ba18dbc0f9fa13d8ff891bf723d4f9b675694b8d7f2e62`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/summary.json](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/summary.json)|630|`e2a7ae1a728f41161dc8e8375cc39c09efa340c9d4ed09909dcd1ae0043cae26`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/conditional_ksat2_31_posttrace.json](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/conditional_ksat2_31_posttrace.json)|232450|`72969cb32ff7aebc17ff9d539076739dc088239faceccb17534c72384f07ee77`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/current_posttrace.json](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/current_posttrace.json)|232468|`3e9082f2cdca3d1502a3ee344318b586bbf0d381589e109b01344e0989b63835`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/ksat2_31_payoff.json](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/ksat2_31_payoff.json)|54640|`e731a6d85ee91b603ccae487b9656b0092e369c50937476b429955f719f7236c`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/REPORT.md](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/REPORT.md)|4811|`b67a24111c971abdada7d1308443a017aaac2907ad66ea38ee15c6712f626694`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/MANIFEST.json](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/MANIFEST.json)|1357|`8036eb5d572b831446554fff784f477ab31195a0b69d9103d6388147a736563a`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/replay.sh](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/replay.sh)|530|`d42e6eca603425f8b4f549234b4d089d485945267f752ca904916eb210834ce3`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/README.md](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/README.md)|675|`4ddc79bb30f07238505fb1e02aa537bacbb7fbea2878ee802a6a3fdb5fa75db3`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/FAILURE_BOUNDARIES.md](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/FAILURE_BOUNDARIES.md)|1133|`e1c6b464d5ad0d8c9f245d9f0187fdc4e985f1262e20529215d989474da5f7fb`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/logs/check.log](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/logs/check.log)|211|`ff9bd14b9a40576f0e1e3d9a9e1fe4cd98482fb4dc734bec23285caf8d9d1c83`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/logs/replay.log](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/logs/replay.log)|1390|`4991da75b1044a96af7f70cf108f18ca7ea434aaaa0b20cf38abddf597c21305`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/logs/initial.log](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/logs/initial.log)|1390|`4991da75b1044a96af7f70cf108f18ca7ea434aaaa0b20cf38abddf597c21305`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/code/research_round.py](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/code/research_round.py)|7624|`b44622b560af2b3826a1c577439b66180a468affdea35e313d027d4433a0554d`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/code/ledger_core.py](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/code/ledger_core.py)|5335|`e7a1d44f42864b0dd08c9c6588f79ee14a0f0db0932a47a79c20dc20eb500dc2`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/code/moment_core.py](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/code/moment_core.py)|4651|`b31ec280778b10d23e59661fdc51e093a6786c76648bbec019eed63d3a9d8dd3`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/code/check_certificate.py](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/code/check_certificate.py)|3476|`0e0bc1ebf2a6e2257daf651fe2dc37a8640ebc862339f3a9b2f9f51d0a2871e6`|
|expanded_zip_member|[payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/PROOFS.md](payload/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/PROOFS.md)|3780|`62dc9a953c2b197a96f93cf69de62c6f011b876c6280d1d53cde7c017500ab74`|
|standalone_attachment|[standalone/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/REPORT.md](standalone/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/REPORT.md)|4811|`b67a24111c971abdada7d1308443a017aaac2907ad66ea38ee15c6712f626694`|
|standalone_attachment|[standalone/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/summary.json](standalone/B699-ProA-KSAT2-31-POSTTRACE-20260922-evidence/certificates/summary.json)|630|`e2a7ae1a728f41161dc8e8375cc39c09efa340c9d4ed09909dcd1ae0043cae26`|
