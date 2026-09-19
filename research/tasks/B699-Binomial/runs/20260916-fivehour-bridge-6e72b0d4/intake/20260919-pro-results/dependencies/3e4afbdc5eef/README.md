# B699 Pro A / source-line peeling / COVER16

从REPORT.md进入，完整论证见PROOFS.md，继续任务见HANDOFF.md；失败与不能推广之处见FAILURE_BOUNDARIES.md。目录中的sat60是本轮初始任务名，最终新几何推进到SAT78，同一个原G的覆盖19→16。

## 接收

Python标准库即可，不需要Lean、SymPy、numpy或网络：

```sh
python3 -B code/reproduce.py --out /absolute/new-empty-output
```

仅重跑本轮新增几何与预算，不读取或重跑旧大证据。源证书只读；所有新输出写到指定的新绝对目录。最终应为PASS_NEW_UNIFORM_SAT78_COVER16。

证书中的每个满增广子式模经验证素数非零，证明对应整数行列式非零。不要把这一正向证据误读为利用模秩下降来判断有理秩。

## 可选重做发现

```sh
python3 code/discover_all.py --scratch /absolute/new-empty-scratch --max-e 13
```

发现会生成可重生的大根门中间文件；这些不是接收输入，不放入交付。ZIP中的compact证书包含全部残余根列与子式行号；接收会自行重新生成并比较完整根集，因此不依赖省略的中间件。发现和接受属于同作者的两套实现，不是外部独立数学审稿。

## 内容

- REPORT / PROOFS / HANDOFF / FAILURE_BOUNDARIES / SESSION_STATE：结论与续接。
- evidence/sat_e*_compact.json：全部新残余子式证书。
- evidence/source_manifest.json：旧来源路径、字节哈希和采用范围。
- code：新发现与最终接收源码。
- verification/acceptance_final：实际新接收输出。
- logs：实际发现、接收和中断日志。
- SHA256SUMS：交付成员完整性。

没有未知G的系数、实际不可约分量清单或有限原题候选表。旧压缩包不重复纳入。
