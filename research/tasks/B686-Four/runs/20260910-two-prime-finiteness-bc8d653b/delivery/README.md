# B686 两素数高度界与有限子族｜研究交付

先读 **REPORT.md**，完整关键推导在 **PROOF.md**。

本轮得到新的显式高度界和一个明确无界参数族的总体有限性；**没有证明整个 E 有限，没有找到原题见证**。

## 文件

- `REPORT.md`：结论、量词、成本和四项最终回答。
- `PROOF.md`：全部关键推导、小素数和零分支、纯整数界、子族有限性的参数闭合。
- `DEPENDENCIES.md`：固定来源、公开论文、精确实例化和有效性标签。
- `AUDIT.md`：证明风险检查与实际验证边界。
- `notes/ROUTES.md`、`notes/NEXT_CHECK.md`：已完成的路线判别与下一项具体检查。
- `code/`、`evidence/`：实际运行的独立生成器/检查器、局部数据、日志及整数高度样例。
- `sources/`：少量固定基线副本与来源哈希，不是完整 Lean 工程。
- `MANIFEST.json`：交付文件字节哈希。

## 复跑

只需要 Python 3 的标准库。在本目录执行：

```bash
python code/generate_evidence.py
python code/verify_evidence.py
```

检查器不导入生成器。复跑会重写 evidence 中的生成数据和带时间戳的验证摘要，因此原交付 MANIFEST 中相应哈希可能变化；这是复跑结果，不应冒充原始交付字节。

414个 p 进样例只是局部同余诊断，不是原题解。6个负对照都明确不满足原题条件。PASS 不代表新数学已经 Lean 化或穷举完成。

新的整数高度公式可以从 `generate_evidence.py` 的 `integer_height_bound(k,p,q,B)` 调用。
该函数的数学前提是 p,q 为不同素数、B 为删除完整素数幂后的真实余因子；任意参数数值样例不保证有原解存在。
函数输出 S<3^N 的指数 N，不实际构造天文大小的整数 3^N。
