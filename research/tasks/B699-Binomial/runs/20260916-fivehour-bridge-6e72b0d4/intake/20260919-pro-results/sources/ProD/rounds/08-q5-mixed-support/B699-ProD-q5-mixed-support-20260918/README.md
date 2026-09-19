# B699 Pro D · mixed q5 support evidence

主结论：原生i6的H025两尾类中，q5支持包含于{13,17,23,61}的完整整行，以及
原输入q5被Kcal·Hcal的任意正整数幂吸收的数对子域，全部闭合。
一般RES10及全近侧小质量域仍开放。

入口：REPORT.md；全部推导：PROOFS.md；下一步与准确剩余：HANDOFF.md。
来源与出版依赖：SOURCE_ADOPTION.md；失败与局部推断限制：FAILURES.md。

## 默认重放

从包根执行：

```bash
python code/verify.py --json
```

仅用Python标准库。接收器核对全部SHA256SUMS、完整有限代数义务、8张整数对偶证书、
完整有限指数恢复及6个原行末端。不联网，不执行LLL，不重跑旧支持族。
成功标记：`PASS_Q5_MIXED_FOUR_SUPPORT_FULL_ROW_CLOSURE`。

## 单个原输入的消费者

```bash
python code/consumer.py 215480 2705
```

返回原源行上的见证余因子；它可能为合数，其每个素因子都是原题共同素数。
条件不适用不代表NC6，程序明确保留这个方向。

## 可选证书重建

```bash
python code/build_evidence.py --output /absolute/path/to/new-empty-directory
```

发现向量优先使用已安装的SymPy；不可用时用随包的有理LLL候选搜索。两者都不在接收器可信基础内。
重建不会覆盖冻结证据或更新SHA256SUMS。不同候选向量可以给出不同字节但同样被独立整数判据接受。

Yu1994 §0.1的无限分析定理是明确出版输入，默认程序不声称重证它。
无Lean、无外部独立数学审读、无仓库修改或推送。
