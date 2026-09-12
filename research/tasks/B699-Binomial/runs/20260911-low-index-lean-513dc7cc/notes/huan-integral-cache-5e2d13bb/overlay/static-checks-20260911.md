# Overlay candidate static checks

日期：2026-09-11（Asia/Shanghai）。

本次只准备 overlay/verify_huan_overlay.py，没有执行 --execute，没有运行 Lean、Lake、cache.exe、网络下载、Git 写操作、CI 或 hardlink。

## 已检查

- 读取固定 verify_huan.py、旧 run 的 verify_repo_relative.py/verify.py 和 huan_resources.py 的实际 API。
- 候选稿 AST parse 和 Python compile 通过：952 行，37,845 bytes。
- 固定支持文件 SHA、manifest SHA、Lean 4.33.1 声明、source closure SHA、9-pin clean/HEAD 和两根 tracked source tree SHA 门禁均在候选稿中显式保留。
- LEAN_PATH 顺序为新对象、独立新 package cache、原 package cache；选中 package .olean 时记录 source module/tree SHA、object SHA、存在的 required/optional companion artifact，并拒绝新旧同 inode。
- reuse 证据限制在本 run，逐项核对 source/import/log/object SHA，落盘只使用普通 byte copy；源码、原 package root 和固定 runner 不作为写入目标。
- 静态禁用扫描未发现 git push、git commit、dispatch、上传、cache get/download、Lake build、os.link 或其他 hardlink 调用。候选稿中的 hardlink 文字只用于拒绝/说明。
- --execute 是显式开关；缺省路径只打印 plan，不创建输出目录。

## 待实际核验

候选稿的执行结果仍未知。主线程未来决定执行时，必须使用实际存在且已复核的两个 package root，确认全部 9 个 pin/source SHA、D 盘至少 1 GiB 余量、固定 cache/import gate、每个选中对象的路径与 SHA、Lean import、公理审计和编译日志。official cache 的 optional private/server/IR 文件也必须按实际存在情况归档，不能由 .olean 计划推断为可丢弃。
- 默认 plan-only 分支以不存在的测试路径运行，退出码为 0，只输出执行提示，没有创建测试路径或 run 输出目录。
