# 阶段A统一验收完成

固定集合 `{29} ∪ {35,…,184}` 的151个完整原题现在已一起通过本机Lean。每项保留全部自然数n,j，以及 `1≤i<j≤n/2` 时存在素数p≥i同时整除两项二项式系数的原始结论；包含p=i边界。

实际入口：[HuanAllA.lean](../lean/HuanAllA.lean)。151个公开包装声明全部做了传递公理检查，依赖仅在 `propext`、`Classical.choice`、`Quot.sound` 范围内。没有借助占位证明、额外公理或外部原生判定。

- 本次1个新编译入口、3690个已核验模块复用；入口编译38.821秒，整棵进程树峰值约1483.570MiB。
- 当前12个历史原题与139个本轮新增原题统一消费；历史29/35/36/37本机对象包均已完整收口。本次统一验证不重复新增计功。
- Lean4.33.1及九个固定依赖的版本和清洁状态已核对；mathlib固定为0df444a360eaa60ab8c11dca51a86af692955474。
- [统一收据](../verification/huan-all-a-plan/acceptance.json)；[严格证据](../verification/20260911T153556686407Z/evidence.json)。生成时的input-manifest是输入快照，当前接受状态以收据和target-status的unified_phase_a为准。

入口源码SHA256：`ec40c37154ae65aa56c393585fdf10aef6e20d0251eaa6aa51dcbb576607d03d`。
证据SHA256：`4ff6ec2f2bdbe29689c4cac18376750b12758a94afb49be7053c4db1ba5e53e6`。
对象SHA256：`ae248b9d95cefdcd591d9f1650fd73b48ed2920ce5d70c5972de2e0a237fdc3e`。

阶段B仍为0/19，未因A统一验收而变化。实际i11立方桥和通用指数块真实样本已经接受；六对完整数值覆盖、初始高度和CRT末端等仍需继续。这里属于已有数学/有限证书的形式化验收，不是整个B699的解决或原创性声明。

成果当前在本机独立工作分支。已有commit和push的自动审批拒绝仍未解除，未发生新的提交、推送或CI触发。
