# i11 当前集成闭包：只读接口审查

结论：在本次限定的源语句与前提传播范围内，没有发现未消除的额外假设、定义错位或低n遗漏。当前original_i11与已验HuanAllA全部151个入口在固定指标替换为11后的类型逐项一致。此结论不是fresh full audit；没有运行Lean、重算CRT/见证数值表或修改主线，B原题新增仍为0。

最终准确类型为：

```lean
∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
  ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧
    p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j
```

n、j没有额外上界；1≤11恒真，是A入口原有形式。内部common_i11只接11<j和j≤n/2。p≥11保留等号，包含p=11。Common来自B699LargePrimeStructure.GapBridge的实际定义，是同一p整除实际两个choose的gcd；Final第37-39行通过gcd_dvd_left/right给两个整除。

| 检查层 | 当前源与行 | 前提如何处理 |
|---|---|---|
| 最终原题 | I11OriginalFinal/Final:14-39；HuanAllA全部151头部 | 局部by_contra引入hno，最后用同一n,j的Common反驳；hno未进入最终类型 |
| 初始高度 | I11InitialHeight/Product:18-51；Height:12-20；Compression:12-16 | 五条实际组件边仅要求n≥2^15360；Height在反证分支内部提供该条件。Compression内部供给n<2^15360，最终只需原hij/hjn/hno |
| 实际对象 | I11SmallPrimes/Components:16-26；旧SmallPartBound:13-15 | primeComponent n p等于p的choose(n,11)实际factorization幂；smallPrimePart只收p<11。U与四分量通过实际等式连接，没有假定乘积替代 |
| 四级下降 | I11CRTConsumers/AllStages:19-49,115-131 | n<2^109来自上一层；四级各保留同一hij/hjn/hno，nextHeight严格等于下一H，未把n≤upper误作n<upper |
| 固定六表 | I11OriginalFinal/Membership:22-61；六个PairXY/Composer公共根 | 实际pairData与对应pair_check逐一绑定，H/M/列表/小n检查内部供给，未把表正确性作为最终参数 |
| 低n | I11TerminalCrt/Actual:25-41 | hij/hjn先推出n≥24；n≤M或n<110走coverCheck，只有剩余分支调用M<n、110≤n的有界余因子桥 |
| padding | I11TerminalFinal/Extended:10-33；Final:12-26 | 会员表使用(0,23)::旧表；合法n≥24排除头项，得到旧originalCandidates会员 |
| 全j见证 | I11TerminalCandidateCoverage/Generic:11-15；Assembly:403-430 | IntervalSound量化区间内所有合法n,j。Assembly内部供给旧1055区间的完整sound性，公共接口只剩会员/hij/hjn；会员已由上一层产生 |

四级数值端点是2^109→1458309064184540964→304531636235→207734386→29294603，全部通过upper+1衔接。最终stage04为H29294603、M500，small_cover正好覆盖[24,500]；最后区间[29294601,29294602]包含H-1。n<24没有合法j，第一个合法对为24,12；奇数n的j≤n/2保持Nat除法语义。原位置可以相同，没有新增r≠s条件。

六表完整指数范围分别为23:24×15、25:24×10、27:24×8、35:15×10、37:15×8、57:10×8，均从1开始。Block定义使用完整range'与实际heightCap；RowCell保留所有shifts及完整t范围。Dispatch第29-69行的12有序pair，6正向与6swap调用顺序已核对；没有以旧最大上界消费者代替会员消费者。此处检查的是覆盖接口与范围，不是各数值leaf是否已被内核接受。

采纳当前集成Assembly SHA5c95a762f6cab37f52b57882b85ecd8d9a58a114e244215b63a4bb7545162915；与作者冻结Assembly去除import行后的正文完全一致。采纳修正后AllStages SHAa5cf8d266c854ec02f40fc38111f1f42975ed83bb3c902d60d64cc4c2e6cff7e，先前5处元数据命名及4处max顺序问题已不在当前版本。Membership/Final与本工作者此前冻结源保持相同字节。

验收边界：回执快照检索到19条相关通用层或局部数据记录，但没有初始高度终点、四级终点、六个pair_check、完整旧表Common消费者及original_i11这10个终点的成功回执。它们全部按未验收处理。已验Data/首行/pilot和通用接口不能提升为完整六表。v19已结束，相同fast E源在3072MiB仍kernel excessive memory（evidence20260911T235437694706Z）；v20正在由主任务运行delta0闭合求值诊断，本审查未运行或干预队列。

48个采用源的完整SHA、208个公开声明头部及回执快照分别在SOURCE_BINDINGS.json、INTERFACES.json、RECEIPT_STATUS.json。静态检查在checks.json。所有被审字节在冻结前再次匹配。本次没有发现需要修改的接口；后续仍应对最终实际源闭包进行fresh编译和全部typed/传递axiom审计后，才可更新原题计数。

本次开始2026-09-11 23:55:35 UTC。仅本新审查目录写入。审阅者此前编写过部分包装，本记录是当前集成源的接口复核，不冒充独立第三方完整证明审计。
