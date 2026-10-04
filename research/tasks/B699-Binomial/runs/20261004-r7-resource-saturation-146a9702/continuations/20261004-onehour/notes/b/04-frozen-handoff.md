# B 冻结交接与可复算入口

冻结目标：16:30 UTC 前将上述01/02/03候选及完整证书交独立审读；原deadline仍为16:56:50 UTC。本分路未请求延长。

## 实际改变与尚未改变

- 已完成全复基点的精确九维关系模，r存在量词及原rDNK饱和等价于一个明确的二变量9×45/46矩阵秩条件；源、全部关系列与门算子均已实际实现。
- 复核并利用旧R4的P5不恒零命题，将逐纤维门幂从9收缩为5；没有新增未知分母/分支，未把5解释为全局colon指数。
- 三类精确基点代数已闭环，含四个旧K=0基点的全部r纤维；它们不是合法终端，不作36,855减四。
- 原h²的一个明列有限乘子空间严格不含目标；明确非零2451阶子式为29924 mod32003。这个否定限于给出的空间，不提升为h²全局非成员或所有幂失败。
- 仍无全域h^m成员/UNIT，无完整允许规范点表，无新的原(n,j)净删域认证。R7及全部原无界参数不变。

## 只读优先的核验方式

在本纸面worktree根目录执行：

    python -B research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b/verify_frozen.py

该入口不写文件，只用Python标准库，重新读取六个原件并核hash，核全局系数身份、96个完整次数界下的整数Sylvester值、两个一元Bézout身份、三个基点代数的全部45关系列及九次门迭代，并检查五次/九次饱和秩及完整纤维乘子。对h²它只重建并绑定完整整数输入和求秩程序源码，不伪称已经在Python里重跑大矩阵。

h²的明确子式可另复算：先执行 experiments/b/generate_membership_input.py 在 D:/Temp/b699-r7-onehour-20261004 重新产生输入，再把 experiments/b/verify_minor.cpp 编译到同一 D: 临时目录，给程序传入输入文件与 experiments/b/h2-nonzero-minor.json。它重新生成2451×2451方阵并直接计算模行列式，预期29924和exit0。生成器不写本仓冻结数据；C++输入严格为整数且检查读取结束。

exact_fiber.py、nine_module.py、p5_nonzero_fiber.py、five_power_module.py 是发现/生成入口，重跑会改其输出的动态秒数；独立核验请优先只读入口或在自己的证据目录另存回执，避免覆盖本冻结字节。

## 作者核验与一次工具诊断

最终回执在 experiments/b/author-final-checks.json；源和交付字节清单在 experiments/b/FROZEN_MANIFEST.json。它们是作者执行与固定字节证据，不能替代独立数学接受。

第一次只读核验的数学检查均已通过，但在重建h²输入SHA时错误使用LF，原Windows文本为CRLF，导致最后字节比较失败。后续明确使用原CRLF重新构造，完整核验PASS。首次失败日志与修复日志分别保留在 D: 临时目录 b-readonly-verification.log、b-readonly-verification-fixed.log；这是字节重建诊断，不是数学失败。

## 下一项真正的工作

优先对已实例化的二变量秩判据选取少量可控子式/饱和支分解，目标是证明所有U基点上秩不增加，或精确列出秩增加的全部基点；后者可直接送入已实现的精确纤维终端并保留原恢复门。此步骤仍未完成，不能把矩阵定义本身改称全域排空，也不应再重复旧平衡尺度/直接高次消项失败。
