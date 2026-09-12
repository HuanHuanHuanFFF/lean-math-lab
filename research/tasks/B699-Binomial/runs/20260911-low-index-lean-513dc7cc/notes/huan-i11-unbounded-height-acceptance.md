# i=11：无界反例范围已压至 n<2¹⁰⁹

已在本机完成Lean验收：对任意自然数n、j，若11<j≤n/2且不存在共同素因子p≥11，则n<2¹⁰⁹。这里保留p=11，没有额外初始高度、增长树、组件乘积或数值证书假设。等价地，i=11在n≥2¹⁰⁹的全部合法j上已排除反例。

最终声明为Math.B699.I11InitialHeight.actual_i11_below_109，源见 [Compression.lean](../lean/I11InitialHeight/Compression.lean)。五条实际组件边先导出实际small-prime-part乘积界，再与noCommon下界矛盾，得到n<2¹⁵³⁶⁰；已有387个指数块、8127个位移检查和实际立方桥随后给出n<2¹⁰⁹。初始高度由证明内部提供。

这是真正的范围缩减：i=11的未知参数n由无界变成n<2¹⁰⁹，所有原题允许的j仍保留。完整B原题计数仍为0/19；其余18个B指标未因此解决，整个B699也未解决。A的151项和统一入口此前已验收。

完整组合审计打印19个明确声明，传递依赖只有propext、Classical.choice、Quot.sound。最终闭包为1个新审计模块加283个源/对象哈希绑定复用模块。各接受记录、命令、逐模块日志及SHA见 [机器记录](huan-i11-unbounded-height-acceptance.json) 和下表。Lean源码中的UNCOMPILED注释保留其初稿出处，当前验收状态以这些新记录为准。

| 环节 | 成功证据 |
|---|---|
| 实际乘积界 | [i11-initial-product](../verification/20260912T014940042314Z/evidence.json) |
| 初始n<2¹⁵³⁶⁰ | [i11-initial-15360](../verification/20260912T015038242178Z/evidence.json) |
| 压缩至n<2¹⁰⁹ | [i11-initial-109](../verification/20260912T015135594042Z/evidence.json) |
| 完整19根审计 | [i11-initial-full-audit](../verification/20260912T015234282081Z/evidence.json) |

后续要完成24张有限下降数表、四级下降消费者、六张终端会员表及1055区间/4042见证的完整覆盖，最后验收原题入口，才能把11计入B。第一张完整Stage00 pair23表已经通过，第二张表的新双行布局首块已通过；其余数值接受仍在进行。

本轮两个实际E初值通过分离符号求值、整数系数和有理数求和完成；失败诊断见 [初值分层记录](huan-staged-initial-e-route.md)。组合计划补齐了五组既有成功对象的复用，先前被主动停止的重复编译没有作为证明证据复用。新颖性尚未评估；成果仍在本地，未重试提交或推送。
