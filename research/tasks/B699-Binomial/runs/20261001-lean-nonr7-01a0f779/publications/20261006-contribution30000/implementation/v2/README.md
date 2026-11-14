# V2：待官方环境独立编译的四件候选

唯一选取入口是 [FIRST-COMPILE-SNAPSHOT.json](FIRST-COMPILE-SNAPSHOT.json)，仅其四叶进入第一轮编译。完整声明的 `#check` 与 `#print axioms` 已直接嵌入每件，仍没有新编译或公理接受。

| 文件 | 范围 | 字节 |
|---|---|---:|
| `candidates/SmallIndices.lean` | i=1、2，全部合法 Nat n/j | 2022 |
| `candidates/I11AboveFinalCandidate.lean` | i=11、2^15360≤n，全部合法 Nat j | 823277 |
| `candidates/I11BelowFinalCandidate.lean` | i=11、n<2^15360，全部合法 Nat j | 613924 |
| `candidates/A151Packed.lean` | i=29或35≤i≤184，全部合法 Nat n/j | 444707 |

合计1,883,930 B。两份i11按同一阈值完整二分覆盖全部n，结论均为同一实际Prime p≥11整除完整两choose。其他三件范围的来源及技术说明沿用[第一次编译交接](../FIRST-COMPILE-HANDOFF.md)；整份贡献仍要求 S={1,2,11,29}∪[35,30000]，其余185..30000由`range-tail/`承担。

[固定官方source-only检查](analysis/frozen-four-policy.json)新跑：error=0、review=6；四件各小于1MiB、声明数均小于200、不重复声明、无项目/sibling import。review来自有限10,000,000 heartbeats及显式标准`Lean.Elab.Tactic.Omega`导入，仍须人工审读；没有身份/奖励/签名、完整`contrib check`或平台认可。

V1的[冻结快照](../FIRST-COMPILE-SNAPSHOT.json)保持原有pending标签。静态复查发现它的i11局部证明打包留下已删namespace的`open`，并遗漏注册同一行`@[simp] theorem`，因此由本版修复：真实登记/保留/限定所有相关simp声明，移除不存在的项目namespace打开命令。这个修正来自源码预检，不冒称V1曾实际编译失败。

可重建生成器在父目录。对scratch执行时设置进程变量 `B699_CONTRIBUTION_OUT` 后，按 `extract.py --root i11`、`compress_i11.py`、`pack_i11_growth.py`、`pack_consumer.py --part above/below`、`extract.py --root a151`、`compress_a151.py` 的顺序生成候选，再由`prepare_v2.py`选取并嵌入完整审计命令。pickle、所有超限中间稿和宽库存留在忽略的`.tools/`，不是贡献材料。

首CI固定前另规范了A151布尔spec的`and_assoc`及right-nested投影；[修复记录](analysis/a151-conjunction-repair.json)确认其他三叶与所有encoded data strings不变。这是通用布尔证明转写修复，没有改变数据、数学范围或literal root。

编译反馈前冻结本版四叶。下一步为固定官方production环境下逐文件标准Lean编译，记录实际资源/900s结果，拒绝式核对传递公理仅为标准三公理的子集；随后由独立核验者做声明/数据完备性审查。
