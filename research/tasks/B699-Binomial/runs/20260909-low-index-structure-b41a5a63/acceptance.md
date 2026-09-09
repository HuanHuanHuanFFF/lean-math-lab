# 本轮验收状态（分层）

## 已接受的新Lean根

ThreeWindowWeights.lean，成功新输出[20260909T065147Z/evidence.json](verification/20260909T065147Z/evidence.json)，完成UTC2026-09-09 06:52:38。

- Lean4.33.1，mathlib0df444a360eaa60ab8c11dca51a86af692955474及9项manifest pins/清洁状态核对。
- 新根与5个实际导入的旧源共6模块全部在新的本轮对象目录编译，只复用固定包缓存。
- 源码policy通过；实际27项公理输出仅propext、Classical.choice、Quot.sound。
- 7项本批声明的实际打印覆盖完整幂三位置、逐素数权重、实际D、noCommon V、两个原题逆否消费者和数值必要条件。
- 无出版定理参数、无占位证明、新公理或native_decide；没有运行独立第二内核。

最后接受消费者：`B699LowIndex.common_of_three_window_comparison`。准确前提为2≤i、i<j、j≤n/2、s<i，及
n^(smallPrimeCount(i)*(2s−r))*threeWindowProduct(n,i,j,r,s)<C(n,i)^(2s−r)。
结论是完整原题∃p.Prime,p≥i,p|gcd(C(n,i),C(n,j))。r为任意自然数；非退化高度应用另取0≤r<i、2s−r>0。

## 纸面与有限证据

i=29及35≤i≤184的全合法n,j结论已由完整纸面链、独立三阶段精确checker与fresh数学审查支持。它不属于上面的完整Lean接受范围。见notes/heights/HANDOFF.md、experiments/two-colour-check/README.md和reviews/independent-math/review.md。

F1参数边界已补强并重放；F2执行记录说明占位问题保留原始证据并补真实replay记录，不能把说明行当实际命令。

## 正在接续，未冒充验收

ThreeWindowSize.lean开发检查已通过。HeightCertificate.lean的第一次完整验证在隐式r推断处失败；正在修复。SmallPrimeLocalization.lean单独新闭包正在执行。双幂覆盖桥、有限覆盖数据的Lean证书和最终151指标装配尚未完整验收。

所有失败与成功时间戳目录分开；开发缓存检查不是最终全新闭包验收。下一次成功将在新的时间戳目录记录，不覆盖历史。
