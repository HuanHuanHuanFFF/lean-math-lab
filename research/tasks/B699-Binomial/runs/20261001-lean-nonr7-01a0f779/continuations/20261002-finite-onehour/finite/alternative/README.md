# Primorial/GCD 备选小块

Owner finite_supply_sol，复杂既定目标，gpt-6.1-sol/xhigh；原预算09:25:29–10:25:29 UTC，10:19停止新路线，10:21冻源，不延长。Root于约10:07授权准备本方法的最小既有数学移植，不改变冻结NormNum pilot。

全部是候选，未运行Lean、未生成全4k链。准确27源顺序/字节hash见 `source-closure.json`，数学源在10:08交runtime_recovery_sol与semantic_verify_sol后冻结。21辅助/核心源加5旧gap源与原题消费者，总71801B。入口是GcdPilotConsumer，32数字与固定NormNum Pilot32完全相同，覆盖只为19662301≤n<19811023、i≥4883、全部合法i<j≤n/2的同一个actualPrime p≥i整除完整两choose。

`port-source-map.json`保存18旧源body片段/哈希和模块、namespace、类型替换。旧PrimeBasisCoverage不需要SmallPrimeCount的计数消费者；TrialComplete只摘该文件已有trialPrimeCheck_complete原body。旧PrimePrimorial只需实际小素数基底及List.dvd_prod，再把既有链sound接口接到冻结ChainCore+旧原式chainEnd；没有引入新的数学理由。所有numeric literal basis/P不改。`historical-source-binding.json`逐项显示18旧source当前SHA均命中固定20260909T145049Z的source hash、exit0及successful旧包，但新import/namespace/type必须重新接受，不能继承旧object状态。

可否证检查：实际恢复BasisComplete4473与basis4473_prod_eq，再kernel检查这32个给定数字的gcd条件并供Nat.Prime与小区间原题消费者。记录每阶段真实argv/exit、时间、峰值、产物/日志hash、拒绝式公理审计和checker。固定旧228大块的每节点历史成本约0.023秒仅帮助选择这条测试，不证明本轮成本线性、资源适足或全有限可完成。

只有32真实成本通过后，才判断同预算是否适合小批扩大。全有限供应仍需覆盖2到20000093全部相邻端点、严格n<p+4883，以及实际消费者接线；全尾部还须真正无限Gap(4095,10^7)，所有y≥10^7无上界。单32小块、有限检查、历史接受、源级对应或CI状态都不增加完整原题指标。Root负责行政登记/发布，技术接受分别由runtime_recovery_sol与semantic_verify_sol交付。
