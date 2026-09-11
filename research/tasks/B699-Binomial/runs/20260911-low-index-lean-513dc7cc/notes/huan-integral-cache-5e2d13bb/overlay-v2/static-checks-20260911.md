# Overlay v2 static checks

日期：2026-09-11（Asia/Shanghai）。

v2 是独立副本，路径为 overlay-v2/verify_huan_overlay.py；overlay/verify_huan_overlay.py v1 未覆盖。

## 固定输入和独立 CRLF 核验

只读加载了 pinned Cache/Hashing.lean 的规则：hashFileContents 先对 String 做 crlfToLf，再计算内部 hash。v2 的 byte audit 对 UTF-8 文本使用 bytes.replace(b"\r\n", b"\n")，binary/非 UTF-8 文件保持 raw bytes，不把 SHA-256 normalized 值称为 Lean 内部 UInt64 hash。

独立逐项读取 integral-build-plan.json 指定的 2,618 个 package source 文件，比较新 clone D:/CodingProject/Math/.tools/pi5e2d 与原 package D:/CodingProject/Math/.lake/packages：

- raw SHA 不同：2,618/2,618；
- bytes.replace(CRLF, LF) 后不同：0/2,618；
- plan 中 new raw SHA 不匹配：0；
- plan 中 original raw SHA 不匹配：0；
- 新 clone CRLF 对数：0；原 package CRLF 对数：838,761；
- 新 clone raw bytes：34,443,959；原 package raw bytes：35,282,720；
- 两侧 normalized bytes：均为 34,443,959；
- 其他差异样本：无。

这次结果确认差异是精确行尾变化；没有因此修改任何源码或 Git 配置。

## v2 结构检查

- AST parse 和 Python compile 通过：1,358 行，54,770 bytes。
- v2 的 DAG/plan loader 只读调用通过：2,618 modules；摘要为 2,428 available、190 missing、4,224,008 missing source bytes、578,631,032 primary bytes、1,200,809,904 companion bytes。
- 默认 plan-only 运行通过，退出码 0；没有加载固定 verifier、创建输出、运行 Lean 或 cache。
- 禁用扫描未发现 Git push/commit、dispatch、上传、cache get/download、Lake build 或 os.link 调用。
- v2 逐 package tracked-tree audit 保留 raw tree SHA、normalized tree SHA、每文件 raw/normalized SHA 和错误清单；只允许 normalized 相同的文本 CRLF/LF 差异。
- DAG 中已有 primary object 的模块要求至少一侧实际 object；每个选中 object 记录 object_source_side、source raw/normalized SHA、object SHA 和实际 companion artifact。

## 尚待实际执行

补编、Lean import、公理审计、固定 cache gate 和数学验收均未执行。主线程实际测试时仍须复核 9 个 package 的 HEAD/clean、两侧 tracked-tree audit、190 缺失对象、D 盘余量和每个选中 object 的 sourceSide/hash。

完整 9-package tracked-tree audit 的结果如下；9 个 package 都 normalized_tree_equal=true、disallowed_differences=0、errors=0，raw_tree_equal 均为 false：

| package | tracked files | line-ending-only files |
|---|---:|---:|
| mathlib | 9,032 | 9,030 |
| plausible | 35 | 35 |
| LeanSearchClient | 15 | 15 |
| importGraph | 56 | 54 |
| proofwidgets | 111 | 90 |
| aesop | 258 | 258 |
| Qq | 35 | 35 |
| batteries | 290 | 289 |
| Cli | 12 | 11 |

所有差异均通过逐文件 raw/normalized SHA 检查；没有发现文档内容、binary 或路径集合的非行尾差异。

两根九个 package 的只读 rev-parse/status 检查也全部通过：每个 new/fallback HEAD 相同且 status_clean=true。mathlib HEAD 为 0df444a360eaa60ab8c11dca51a86af692955474，其余八个 pin 与 integral-package-overlay.json 一致。

最终候选文件 SHA-256：v1 53B2375F4A3A78D6F0EDF9B74504EBE892580D4E668D1E1F193EC288308F869D（37,845 bytes），v2 25C1629E574A17673B93D5E9FCBB388D8D0463EF7C94BCE20C2B1A201BC6431E（54,770 bytes）；v1 未被覆盖。
