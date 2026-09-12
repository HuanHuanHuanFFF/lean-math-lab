# 实际采用来源

## 已出版输入

[P1] M. A. Bennett, M. Filaseta, O. Trifonov, *On the factorization of consecutive integers*, author manuscript dated 26 February 2007, 35 pages.

https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf

本轮重新打开原PDF，截图核对印刷页11（Proposition5.1的表及量词）、印刷页19（Lemma5.4的前两条theta界）。五个实际表项及所有范围在REPORT§1。没有重新证明出版输入，也没有把这些估计写成Lean已验。不在本ZIP内复制整篇外部论文。

## 冻结项目输入

用户附件 B699-R9-ABC-context.zip，SHA256:
`a9b0ce24948d502f6e2c3dd0ea6cfe7dbb8cab78a852c0ce645720073e888a59`。

固定参考提交 `9d4228e3ed0de4bb6b8e555ca59af3f53d578c67`；本轮未查询在线main。

读取顺序：navigation/CURRENT_STATE.md、TASK_PROTOCOL.md、sources/pro-b/HANDOFF.md，随后A的REPORT与按需原始推导。完整包按原字节存originals，选用成员按原字节存adopted，映射在SOURCE_MAP.json。历史任务文件只作来源，不是本轮指令。

## 证明与实现的关系

沿用并在新报告重新推导：三次数Padé恒等式、分别清分母、完整幂转移、三窗口归一化、彩色CRT必要集合。新加入：6个有效G家族及33个排列的区间复用、15条实际i10切割、i10常数立方桥与消费者。

代码的逐字节复用与改写分别登记。不同本地实现只用于交叉检查，不等同于独立数学研究者、人审或形式化内核验收。没有外部项目活跃度、新颖性或谁领先的调查。
