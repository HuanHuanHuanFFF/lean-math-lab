# 采用版本、边界与环境

2026-09-08 17:41:44 UTC 开始。读取本地 AGENTS.md、docs/STRUCTURE.md、Lean research skill 及 open-problem workflow；从题目入口读取三份指定批次的 README、frontier、完整主报告及验收；外部原报告采用 §5、附录 E/F 的 B699 全部数学边界。

采用来源：
- ../20260908-external-reductions-b3c1b7/：实际 primePart 完整指数、threshold≤p、两项目模块及六项公理守卫已接受。其源数学恒等式为 Nat.choose_mul。
- ../20260908-binomial-cofactors-f0a6539/：完整历史报告、constraints、主线程比例笔记、探索交接及独立审查；有严格素数假设的条件判据，不是全题覆盖。
- ../20260908-formalization-92c221/：report.md 与 frontier，直接采用既有复验，不重跑。
- 外部原文 research/external-results/20260908-erdos-686-677-699-b3c1b7/original/Erdos-686-677-699-report.md：EEES1978 DOI 10.1017/S1446788700011770，原题范围 n≥2i≥2，U 含 p<i、V 含 p≥i，十二对：
  (8,3),(9,4),(10,5),(12,5),(21,7),(21,8),(30,7),(33,13),(33,14),(36,13),(36,17),(56,13)。
  对应顶端素数 7,7,7,11,19,19,29,31,31,31,31,53；(9,4),(10,5) 没有合法 j，其余全部合法 j 由顶端素数引理处理。历史 41 例有限核对不重跑。
- EEES 的完整原证明分析/历史计算未在本轮重证；采用已核对出版定理作纸面依赖。平方必要条件与 Vandermonde 纸面归约准确保留。
- 比例界历史已指出 p=i 的取消边界；不重新推销已有局部结果。旧结构扫描和无反例结果不扩充。

环境异常与恢复：
普通 exec 与 Node 进程因 helper setup refresh 在启动前失败。获准的沙箱外命令可正常运行；这是执行环境问题，不推断仓库损坏。
第一次独立 worktree 检出因远端历史长日志路径失败并由 Git 自动回滚；检查实际 worktree 不存在后，使用进程局部 core.longpaths=true 完成创建。未修改全局 Git 设置。原 main 状态与未跟踪 B686 文件目录保留。
新工作树从指定 37e42ac 创建，没有合并 main；fetch 及 PR 元数据确认已交付分支 head 相同。
