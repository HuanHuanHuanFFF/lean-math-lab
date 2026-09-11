# Historical controller v6 handoff

候选 runner：

- verification/runner/verify_huan_historical_v6.py
- SHA-256：e344687bd3b36f93611b3cb310407e91141b56f92d9f7780d0969ce5047975d5
- 228 行，其中 196 行非空；活动 verify_huan.py 当前 SHA 为
  f1471316e6391eee75ed72b5dfc6df2e694e557bd2b0dde68a1bf22d29f4a783。
- 本轮只做 AST、CLI、计划/evidence/object/log 静态检查，没有运行 v6、Lean 或真实 verifier。

执行顺序与资源：

- 顺序固定为 35、36、37、29。
- 35/36/37 的尝试块为 J32、J16、J8、J4，均传 --memory-mb 2048。
- 29 固定使用 Row029J2、--memory-mb 2048 和
  research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/notes/huan-historical-memory-plan/memory-profile.json；
  profile 默认 2048，仅 Block008 使用 2560，等待与 512 MiB 门禁由正式 verifier 执行。
- 真实出现 memory_exception 或 excessive memory consumption 才进入下一个更小块。
  Insufficient available memory、disk/Lean/package gate 失败会把该行留在
  pending_resource，不换小块，并继续其他独立行。sorryAx、普通编译失败和 axiom
  审计失败保持 unresolved，不写 receipt。

每次尝试的 state 会记录实际 verifier command、bundle command、root、exit code、证据路径和
SHA、runner SHA、最后一个去除 process 列表的资源 snapshot、profile 摘要和失败文字。每行
失败或资源异常都会从 running 改为关闭状态；最终所有四行是 accepted 或
skipped_existing_receipt 才 exit 0，存在资源 gate/异常未完为 exit 2，其他未完成为 exit 1。

复用门禁：

- 先核验 shared26-reference 的 evidence SHA、9 个 package clean/head_matches、每条
  source before/after SHA、object/log SHA、exit/timed_out/failure 和 unexpected axiom。
- 已存在的 verification/huan-historical-accepted/rowNNN.json 只有在 evidence 成功、
  exact root、当前 source/output/log SHA 和 common_iNNN std3 audit 全部通过后才跳过；
  失败 overall evidence 或其部分对象永远不进入 reuse。
- 当前静态检查发现旧 Row035/Row037 成功 evidence 的 root .olean 已不存在，虽然日志仍在，
  所以两者均被标为不可复用，v6 会重新验证，不把旧成功字段当作现行 receipt。

receipt 门禁：

- 成功 evidence 必须有 exact root record、完整原题字面、#print axioms common_iNNN、
  source/output/log SHA 和仅允许 propext、Classical.choice、Quot.sound 的 std3 audit。
- 通过后才写原位置 verification/huan-historical-accepted/rowNNN.json，字段包含
  full_original_statement、literal_original_statement、evidence/output/log SHA 和
  new_original_results: 0，并打印 HISTORICAL_COMPLETE 摘要。
- runner 不读写 target-status，不提交、不推送、不修改已有 evidence/index。

静态结果详见 historical-v6-static-checks.json。四个 v3 plan 的当前 SHA 与 source count
分别为 29/49、35/1018、36/38、37/344；Row029J2 manifest 已核验为 block size 2，
其余 J32/J16/J8/J4 目录仅在未来实际运行时按对应 v3 plan 生成。
