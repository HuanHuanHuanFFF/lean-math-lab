# IntervalIntegral overlay v2

日期：2026-09-11（Asia/Shanghai）。

这是 v1 候选的独立 v2 副本，未覆盖或修改 v1。v2 只准备 future execution path，当前没有执行 Lean、源码补编、缓存下载、网络访问或 Git 写操作。

## 固定 DAG 和 build plan

主线程使用固定 Lean.Elab.ParseImportsFast 生成：

- DAG：D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/integral-import-dag.jsonl
- plan：D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/integral-build-plan.json

DAG 与 plan 都是依赖在前的 2,618 个模块。plan 的固定摘要为：

- primary object 可用：2,428；
- primary object 缺失：190；
- 缺失源字节：4,224,008；
- 已有 primary 字节：578,631,032；
- 已有 private/server/IR 等 companion 字节：1,200,809,904。

此前的 2,459/2,488/2,524 和 364/372 只保留为正则扫描的历史下界，不能替代这个按九个 package root 解析的 DAG。

plan 的 2,618 条 source 都有不同 raw SHA；v2 在执行时逐项核对新 clone/source SHA 和原 package/source SHA，并要求两侧经过 CRLF 转 LF 后完全相同。这个规则对应 pinned Cache.Hashing.hashFileContents 中 contents.crlfToLf；v2 记录 SHA-256 raw 和 normalized 两套值，不把 normalized SHA 冒充 Lean 的内部 UInt64 hash。

## v2 source gate

v2 对 manifest 全部九个 checkout 先复用固定 check_packages，核对 HEAD、manifest rev 和 clean 状态，然后对 Git tracked tree 做完整 pair audit：

- tracked path 集合必须相同；
- 文本文件只允许 raw bytes 在 CRLF/LF 上不同，且 bytes.replace(CRLF, LF) 后相同；
- 文档差异保留两侧 raw SHA 和 normalized SHA；
- NUL/非 UTF-8 文件按 binary 处理，raw bytes 必须完全相同；
- 任意其他差异、路径集差异或 normalized SHA 差异都失败；
- 每个 package 的 raw tree SHA、normalized tree SHA、文件数和字节数写入 summary，逐文件审计写入 raw source-tree-audit artifact。

两根必须仍然是相同 pinned HEAD 的 clean checkout。v2 不改行尾、不改 Git 配置、不把 source gate 降级为 read_text 相等。

## object side

v2 使用新根优先、fallback 根其次的 LEAN_PATH 选择。对 DAG 的每一个模块，计划中已有 primary object 时两根至少一侧必须找到实际 .olean；若 fallback 中已计划存在的 primary object 消失则失败。每个已选择 object 记录：

- object_source_side：NEW_PACKAGE_ROOT 或 FALLBACK_PACKAGE_ROOT；
- object path、size、raw SHA-256；
- 对应实际 source side 的 raw SHA-256 和 normalized SHA-256；
- 存在的 .olean/.olean.hash/.ilean/.trace/.private/.server/.ir/.c 等 artifact 及 SHA-256；
- 若两侧 object 共享 inode，直接失败。

项目所需 package imports 仍通过未修改的 fixed package_cache_records 分根检查和 union gate；source policy、project closure、串行 compile、公理审计和复用 evidence 门禁沿用 v1。

候选稿：[verify_huan_overlay.py](verify_huan_overlay.py)。执行时必须显式传入 import DAG 和 build plan；默认 plan-only。补编仍未执行，实际 Lean import、缺失 190 个模块的顺序、对象完整性和数学验收均待主线程另行测试。
