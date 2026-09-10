# 本轮报告：EC 未完成 Lean 验收，保留完整候选

本轮**没有交付已验收的 EC 定理**，也没有任何新引理可以计入 Lean 已证明覆盖。已写出覆盖原始目标的完整证明候选，完成有限算术和多项式恒等式诊断，并实际执行验收入口；验收在编译前因缺少可运行工具链和依赖停止。

目标始终是：
```lean
∀ x : ℝ, 128 ≤ x →
  (Nat.primeCounting (Nat.floor x) : ℝ) ≤
    Real.log 4 * x / (Real.log x - (3 : ℝ) / 2)
```
没有缩小实数范围、改为自然数 x，或添加 EC／Dusart／RS／PNT 等前提。

## 已留下的可恢复内容

[ElementaryCount.lean](lean/ElementaryCount.lean) 包含对数界、分母正性、有限基例、G 的导数、积分比较、Abel 拼接、最终目标和一个独立写出的精确量词消费者。文件头与主声明均明确标为未编译候选。源码没有占位证明或自定义公理，但这**不等于**编译和传递公理验收已经通过。

源 SHA256：`be0aa12258e65bee7cf29c396fbb253207782c482d64f603d95164e305a8b8c3`。
Git blob：`d22a2fec4cfafa55e0f70d596a48f967b2cc85f3`。

沿用报告的 G(x)=(3/2)log4·x/[log x(log x−3/2)]。实际核对固定 mathlib 中的：
- Chebyshev.theta_le_log4_mul_x；
- Chebyshev.primeCounting_eq_theta_div_log_add_integral；
- Chebyshev.integrableOn_theta_div_id_mul_log_sq；
- Real.log_two_gt_d9 / Real.log_two_lt_d9；
- 区间积分单调性、拼接与微积分基本定理接口。

上述是**源接口核对**，不是本轮重新内核验收。8份源的固定 Git blob 与 SHA256 见 [upstream-source-map.json](verification/upstream-source-map.json)。

基例作了允许的简化：候选中实际使用 `2^145 ≤ Nat.primorial 128` 和 `theta_eq_log_primorial`，从而得到 θ(128)≥145log2；无需在 Lean 内处理每个素数的二进制对数权重和。31个素数的完整集合等式、计数31及 primorial 整数比较均写为 `by decide`，待真实编译核验，未用外部 PASS 作前提。

## 实际执行与结果

[精确诊断](verification/check_arithmetic.py) 仅使用 Python 标准库，完整试除 2..128，并用 Fraction 和带有 D(log x)=1/x 规则的稀疏 Laurent 多项式检查算术。真实结果见 [arithmetic-diagnostic.json](verification/arithmetic-diagnostic.json)：
- π(128)=31，floor(log₂p) 之和145；
- primorial(128)=4014476939333036189094441199026045136645885247730，大于2^145；
- 31−145/7=72/7；
- G(128)>13824/847>72/7，后一比较的余量为5112/847；
- G 的导数表达式、导数差非负式的恒等变换与最后合并式均通过精确代数诊断。

这些诊断不验证 Lean 语法、库 API、积分可积性、类型转换或传递公理，不能升级成 EC 的 Lean 证明。诊断最初尝试的 SymPy 在两个 Python 入口中均不可用，随后改为标准库精确多项式；没有安装额外包。

[验收脚本](verification/verify.py) 已真实运行。最终源对应根为 [20260909T181803.256284Z](verification/20260909T181803.256284Z/evidence.json)：
- 状态 `blocked_before_compilation`；
- 脚本退出2；
- 实际尝试 `lake env lean --version`，操作系统返回找不到 lake；
- `lean_compilation_ran=false`，`accepted_declarations=[]`；
- 真实传递公理集合：**未得到**。脚本内的三公理集合只是允许列表，不是验收结果。

## 环境阻塞与已尝试恢复

资源足够开展一次受控检查：初始约20 GiB可用内存、约28 GiB可用磁盘，cgroup上限20 GiB。问题是没有 lean/lake/elan，固定依赖和实际 .olean 缓存不存在；旧缓存目录内的条目指向已删除工作区，是失效符号链接。

普通 Git fetch 返回无法读取 GitHub 用户名。已通过用户选择的 GitHub 插件读取固定提交、完整树与任务输入；本地逐个重新计算 tree/commit 的 Git SHA并匹配，建立固定基线的稀疏分支。**没有把普通 Git 协议 fetch 失败写成成功。**

官方 Lean 4.33.1 直连下载的网络审批被取消，未取得许可；没有强行修改或绕过网络规则。官方已完成构建的 Linux artifact 可查到，但下载工具明确拒绝：1,456,550,059字节超过536,870,912字节上限。没有可复用的已保存工具链包。mathlib固定缓存artifact的元数据可读，因没有运行它所需的Lean而未额外下载约428 MiB。

详细环境和固定输入证据见 [environment-and-base.json](verification/environment-and-base.json)。没有启动 Lean 源构建、整库构建、研究子线程或其他任务消费者，也未等待 CI。

## 剩余义务和前沿

剩余义务是**整份候选的首次真实 Lean 编译及公理审计**。不能把其中纸面正确或静态接口已对照的片段称为已验引理，也不能只说“剩最后验收一步”来暗示候选一定可编译。首次 Lean 报错、证明工程成本、所需缓存闭包和峰值内存目前都未知。

恢复后先运行验收入口，必要时先恢复这三个数学根及所用 tactic 模块的固定缓存。只在现有候选上修复实际报错；每个可恢复的已验片段应重新记录、commit、push。最终须取得完整 EC 主声明的实际 `#print axioms`，仅允许 propext、Classical.choice、Quot.sound。

本轮不改变 B699 剩余数学区域。EC 即使后续完成，也仍只是原大指标路线的一项独立基础依赖，不包含归一化、Gap 或原题消费者。

## 时间与发布

开始18:00:05 UTC，原90分钟截止19:30:05 UTC，绝对上限20:00:05 UTC。未申请或使用延期。硬环境阻塞已确认后提前交接，没有为耗满预算反复重建或下载。最终实际结束与总耗时由本批发布记录绑定。

仅发布 `GPT-work/b699-elementary-count-20260910-bbbfe15e`。GitHub API commit/ref发布替代当前不可用的命令行Git传输；不合并main、不创建PR、不联系外部人员，不读取huan本轮成果。


已推送源码检查点：`bcd31c5cc9d5d91c7155b807aa3dd8eb806ba0d0`，已重新读取远端ref核对。发布与耗时见 [publication-checkpoint.json](verification/publication-checkpoint.json)；本记录后续提交仅补充交接元数据。
