# 专属对象缓存 dry-run 去重调查

日期：2026-09-11（Asia/Shanghai）。本次只读扫描专属副本中的 .olean，并只把本 notes 文件写入磁盘。没有删除、替换、改内容、改原包、改源码、改日志或改证据。

## 扫描范围和排除

专属 root：D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb/.tools/20260911-low-index-lean-513dc7cc。全 root 扫描到 6802 个 .olean、1180245120 bytes。
当前 running batch：huan-batch-20260911T035906026637Z；按其 state.json 及其 evidence/output 引用排除当前批次，排除已生成的接受摘要行：74,75,78,79,80,82。
结论来源只取 verification/huan-accepted/*.json 指向的成功 evidence；结束批次结论摘要 28 个，evidence compile/reuse records 871 个。
可参与扫描的 evidence 引用对象：871 个 .olean，合计 479487560 bytes；source/output SHA 核对异常：0。

## 精确重复结果

重复 hash/size 组：25。逻辑重复额外文件 675 个、243412344 bytes；其中已有硬链接造成的逻辑重复 650 个、234397072 bytes。
真实不同物理文件的额外副本：25 个，理论可回收 9015272 bytes。所有组当前都是 logical=28、physical=2：27 个路径已共享同一 st_ino，另有 1 个真实独立副本。

| SHA-256 | size | logical | physical | real reclaimable | canonical representative | target representative |
|---|---:|---:|---:|---:|---|---|
| 99445532bd7988aa7f7ab9f5c9c30af1bba7cc04bbc3959edb44c2e26d4ce49c | 873152 | 28 | 2 | 873152 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\ThreeWindowWeights.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\ThreeWindowWeights.olean |
| 95e55644935e1d3b1ce862f8ec56a58ddb435e46196831cba65c5e7974ce9edf | 735888 | 28 | 2 | 735888 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-large-prime-structure-cb4764f0\lean\PrimePowerTransfer.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-large-prime-structure-cb4764f0\lean\PrimePowerTransfer.olean |
| 3c09335314be516bf22f4c6f17bed1d44e5797ba159d64d103909997e41c0ed4 | 658448 | 28 | 2 | 658448 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\HeightCertificateData.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\HeightCertificateData.olean |
| 00a7b1bd99f07f4fc7f6fa4f19b9a3feb099a82f01a909db7b59aed84b30e7d7 | 636400 | 28 | 2 | 636400 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\FiniteCover.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\FiniteCover.olean |
| e000153c88f0f996ce79c4ed2a13b9d662c753d65e1ad4545de5002b2a62dcf4 | 594008 | 28 | 2 | 594008 | 20260911T012844915334Z\olean\research\tasks\B686-Four\formalization\UniformDistance\SmallPrime.olean | 20260911T011617157807Z\olean\research\tasks\B686-Four\formalization\UniformDistance\SmallPrime.olean |
| fabd97ac3a10c3da4b22c5279e6368e1489e22850e046a9d5626d5b35887125d | 566664 | 28 | 2 | 566664 | 20260911T012844915334Z\olean\Math\B699\CofactorCriterion.olean | 20260911T011617157807Z\olean\Math\B699\CofactorCriterion.olean |
| aa70e7edfa72cdf13e4e600ce23fedaef0be8c52e1f8b54d03e081f0956a4175 | 530248 | 28 | 2 | 530248 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\ThreeWindowSize.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\ThreeWindowSize.olean |
| b577c6c4bb96627e654decd78e138334a2b0366f121f0fed6c4e0c3ac66842a0 | 520624 | 28 | 2 | 520624 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-large-prime-structure-cb4764f0\lean\GapBridge.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-large-prime-structure-cb4764f0\lean\GapBridge.olean |
| e813b1440c3c6821c7a030c4f7dcd05a10432827ff37693fe6bb99b2e3868d70 | 432520 | 28 | 2 | 432520 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\CofactorCover.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\CofactorCover.olean |
| fcfd4af3ae6dc302ec3b75286773399b0fbe2d752fbccdcbcf80590c67281ca5 | 423920 | 28 | 2 | 423920 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\LargeDivisorWitness.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\LargeDivisorWitness.olean |
| 1b9e45dcde24ecf66f972449e0231fc9cb519e2ccd815de8586d7e4c4bfdfa7e | 413744 | 28 | 2 | 413744 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\RegisteredHeights.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\RegisteredHeights.olean |
| 5ec288cbf80db9d5a9d1819cae8671cf161e01966dab8d00f3d222d3aff49ef0 | 411880 | 28 | 2 | 411880 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\PrimePowerEnumeration.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\PrimePowerEnumeration.olean |
| e06ac7377b66e06936845202422a9dab1384fd307b072e6e10de964d83a7a9bb | 368920 | 28 | 2 | 368920 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\SmallPrimeLocalization.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\SmallPrimeLocalization.olean |
| c0f95334b064d0dbc044c7c3c2e1505f96dd11657cd0412ac8ce2e59ca5560be | 359712 | 28 | 2 | 359712 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-eees-chain-5a2e10\lean\PowerBounds.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-eees-chain-5a2e10\lean\PowerBounds.olean |
| f723f2aeb8e37b2959144f7c76aa987b66323fe2add447d2971cac2d21546921 | 244520 | 28 | 2 | 244520 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\SmallPowerIntervals.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\SmallPowerIntervals.olean |
| 730718ddbd51c422eb346e17b6b8669ff0ad2047375dfb4830b9b898130dc050 | 241600 | 28 | 2 | 241600 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\IntervalCover.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\IntervalCover.olean |
| 7dca511113a8b78757f896dc3070bb45d88a3f83e05b8f4b54a3e9f5c100e0c6 | 230736 | 28 | 2 | 230736 | 20260911T012844915334Z\olean\research\tasks\B686-Four\round8\lean\BigPrimeSupport.olean | 20260911T011617157807Z\olean\research\tasks\B686-Four\round8\lean\BigPrimeSupport.olean |
| 304419a052b3874278c128a9d2b948af0e9144a84d055511f4324c90f2c13211 | 228104 | 28 | 2 | 228104 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\HeightCertificate.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\HeightCertificate.olean |
| 119d4bed88d1238d2b2b1c9c1505dfafd422673295301a65cf2cab6bafc84799 | 208672 | 28 | 2 | 208672 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\LargeSmallPowers.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\LargeSmallPowers.olean |
| d0fb014b44d1ff863fe2a2c49b311a6bc3e06a4e079349acc2edf051a9b340ad | 154728 | 28 | 2 | 154728 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-large-prime-structure-cb4764f0\lean\SmallPartBound.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-large-prime-structure-cb4764f0\lean\SmallPartBound.olean |
| fab939e4f7ec44e4035679fa12fca8adbeecc57f3df93fa25841a9c14ae22ce8 | 68624 | 28 | 2 | 68624 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\TrialPrimeCheck.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260909-low-index-structure-b41a5a63\lean\TrialPrimeCheck.olean |
| 59407e31a9b87dba994ce2cf9e9d01bad86bc34da6f5356caee0a6a3ca844388 | 59256 | 28 | 2 | 59256 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260908-external-reductions-b3c1b7\lean\DivisorTransfer.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260908-external-reductions-b3c1b7\lean\DivisorTransfer.olean |
| 32d96de1d17e87917814ba48939b07ca0b44b366e772af7a36b3369e4d570e62 | 21216 | 28 | 2 | 21216 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\PairChunks.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\PairChunks.olean |
| ba0afa73e5d6cf11e2a63a2811d4d8493bb3eacdaf820f7e3013f27685a4afc1 | 17080 | 28 | 2 | 17080 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\LayerParts.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\LayerParts.olean |
| ca13c62a039e5bf9b2fdd1617314b24caab6e620a52a20d62563ef54f1253db0 | 14608 | 28 | 2 | 14608 | 20260911T012844915334Z\olean\research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\WitnessBridge.olean | 20260911T011617157807Z\olean\research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\WitnessBridge.olean |

## 早期复制和当前建议

25 个真实独立副本均位于最早结论 evidence 的 20260911T011617157807Z 目录；其同 SHA canonical 物理身份的 27 个逻辑引用代表位于 20260911T012844915334Z。这个模式覆盖早期 i46..48 消费复制及其后续共享对象引用。现阶段不动它们。

若主线程在所有 verifier 完全停止后批准实际去重，执行器必须重新读取当前 state/evidence 并逐项复核：

1. 只接受本 notes 扫描允许集内、且不属于 active batch 的 .olean；拒绝任何 path escape、reparse point、缺失 evidence、非零 exit、failure/timed_out 或 output_sha256 不匹配项。
2. 以 SHA-256 + size 分组，再用 os.stat 的 st_dev/st_ino 区分真实副本和已有硬链接；canonical 只能选同组已结论 evidence 引用的物理身份。
3. 对每个 target 先用唯一临时名在同一目录执行 os.link(canonical, target + temp_suffix)，立即核对临时项 SHA/size/st_ino，再用 os.replace(temp, target) 替换原位置；不使用跨目录 move、删除或覆盖 canonical。
4. 每一步写出 target/canonical/full SHA/size/old-new st_ino；任何失败停止后续项并清理仅由本次产生的临时名。
5. 全部完成后重新扫描允许集，复核每个 evidence output_sha256、SHA/size、canonical/target st_ino 和实际目录体量；原始源码、日志、evidence、plans、target-status 和原包根始终保持不变。

本次只生成这个 dry-run 报告，未执行 os.link、os.replace 或任何回收。

## 010452 evidence 的 2620 条 reuse_records 补查

之前的 871 个对象只覆盖 huan-accepted 行 evidence，遗漏了成功的统一消费者 evidence：

`verification/20260911T010452070959Z/evidence.json`

该 evidence 的 success=true、compile_records=1、reuse_records=2620。逐条检查结果：

- 2620/2620 output 路径和 reused_from_output 路径都在专属 .tools/<run> root 内并存在；
- output 路径唯一 2620 个，reused_from_output 路径唯一 2620 个；
- 两侧各 182,139,984 bytes；每条 pair 的当前 SHA-256 相同；
- 2620 条 output_sha256 与当前 output SHA 相同；对应 8 个 reused_from_evidence 的 output SHA 也全部匹配；
- same_st_ino=0，output_st_ino=2620，source_st_ino=2620，因此 2620 条都是真实独立物理副本，不是已有硬链接；
- SHA、size、evidence 字段和路径门禁异常数为 0。

若 verifier 全部停止且主线程批准，单独针对这 2620 条 pair 的理论可回收空间是 182,139,984 bytes。它们优先于前一节的 25 组小重复；前一节的 9,015,272 bytes 只是已接受 row evidence 子集，不包含本统一消费者 evidence。

这 2620 条 pair 的实际去重仍遵循同一 dry-run 门禁：重新确认 active batch 为空，逐条复核双方 SHA/size 和 st_dev/st_ino，只在专属 root 内以同目录临时名 os.link，再 os.replace output 原位置；最后重新复核 2620 条 evidence 字段、路径、SHA/size/st_ino 和磁盘体量。当前仍未执行任何链接或替换。