# CI6：A151实际编译诊断后的源码修复

当前候选：[A151Packed.lean](A151Packed.lean)。固定源、root、完整双choose literal、旧CI6输入SHA、表示对照与新政策结果在 [FREEZE.json](FREEZE.json)。旧V2候选和CI6原日志不改；新源仍等待标准Lean编译、Std3传递公理及独立对应核验。

CI6对旧源 `1d57cb5a740f71644b3055459b0a909c239d2079d44ffa19ffd5e4cda8a46958` 实际报出两个前端问题：

1. `HeightCertificateDatum`的四个原字段只有i/r/s/n0Power10；`n0`是原源中的计算getter `10^datum.n0Power10`。词法切片没有从`row.n0`推断这个真实依赖，把getter省掉，后续HeightRowValid/Decidable/Bool定义无效；line802的reduction stuck是下游诊断，不能当证书数值false。
2. generated checker新增TrialPrimeCheck import后沿用旧模块顺序，trial/check-sound定义出现在fast checker用途后。现在根据当前import DAG重新排序，内容不变。

修复只恢复真实getter与正确依赖顺序。151个完整指标 `{29}∪[35,184]`、37,313个goods、3,919个layers、原source映射、所有编码字符串逐项与V2相同。每个根仍覆盖全部合法Nat n/j、同一实际Prime p≥i整除完整两choose；整个交付目标S保持。

新源444,775B、115个所选声明，SHA `b24753cd36ceb3a69ddd35dbf09a855b39d3317728cb2e0df709f5845a73d841`；[固定官方source-only实跑](analysis/source-policy.json) error0/review2。有限10,000,000 heartbeats及显式标准Omega导入仍须人审。未调用native Lean。

实际CI6还在约917秒以exit137被超时终止。修复后的判定成本尚未测，不能把这次前端修复说成性能问题已解决。下一轮Linux应先确认上述字段/顺序错误消失，再依据实际阶段日志调整有限证书检查组织；不能删检查、换sorry、使用native_decide或减少范围。

审计入口：父目录 `audit_ci6_a151_repair.py`核对新SHA、getter/试除定义在用途前、原记录数与source-policy绑定；`freeze_ci6_a151_repair.py`保留旧源和实际CI6日志的哈希并逐字比较编码数据；`compress_a151.py`内部逐字段roundtrip仍执行。它们都是源码/表示审计，不能替代标准内核。
