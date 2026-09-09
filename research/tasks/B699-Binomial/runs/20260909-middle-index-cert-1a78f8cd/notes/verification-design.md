# 最终验收与复用边界

本批最终验收器以原题消费者为根，解析实际项目 import 闭包，按依赖顺序处理全部项目源。每次创建新的 D 盘输出目录；固定依赖包缓存可复用。已在本轮源编译成功的项目对象，只有当前源码、对象、实际日志和递归项目依赖均通过一致性检查才复制到新目录。失败模块不会进入复用候选。最终记录区分本次新编和经核对复用，不把复用记成零成本编译，也不声称所有模块在最后一次调用重编。

普通 proof object 的接受由固定 Lean 4.33.1 内核完成。数据真假采用 decide +kernel；未使用 native_decide。Elab.async=false 仅关闭异步 elaboration 调度，-j1 保持单线程，二者均不绕过内核。每个最终消费者的实际 #print axioms 必须只出现 propext、Classical.choice、Quot.sound；没有 #print 的旧辅助文件不能因此被称作零公理，最终消费者的实际传递公理输出覆盖它所采用的依赖。

每个源的编译记录保存前后源码 SHA、对象 SHA、公开实际日志 SHA、命令、退出状态。新时间戳还保存源码原字节快照；失败快照与成功记录分开保留。公开日志只去除机器定位元数据，证明源码不因发布而改写。runner 的当前版本及运行起止哈希分别记录，运行中改动 runner 会使最终根失败。

[final_integrity.py](../verification/final_integrity.py) 在最终根完成后复核当前源码、对象、日志、源码快照、manifest、版本日志、运行器哈希及复用来源链。它允许来自历史失败根中独立成功的前置模块，但会检查该模块本身确实成功及源/对象/日志一致；失败根整体不会被当作成功消费者。该脚本是保存证据的完整性审计，不是第二个 Lean 内核，也不替代数学审查。

性能记录中的峰值工作集来自 Windows GetProcessMemoryInfo；sampled_peak_private_bytes 是采样私有提交量。peak_pagefile_bytes 是 Windows 峰值提交字段，不能解释为实际换页读写量。缓存复用模块的 seconds=null 保持为未重编，不与本次模块耗时混合计算。

最终根 verification/20260909T145049Z 已于15:37:02 UTC完整成功，815项真实原题声明与实际公理均通过。final-integrity-815.json已复核404份源、对象、日志及复用来源链，全部匹配。evidence.partial.json仅保留逐模块恢复进度；成功判据是完整evidence.json，不能用partial替代。
