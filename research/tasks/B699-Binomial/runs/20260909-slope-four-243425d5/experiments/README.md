# 精确实验与有限证书

所有脚本已在本轮实际运行，结果均为任意精度整数/有理数计算，无浮点对数用于结论。Python 3.11+，仅标准库；**不要使用 `python -O`**，因为检查器使用 `assert`。

## 最短核查

从研究包根目录运行：

```bash
python experiments/check_certificate.py
```

它检查保存的有限证书，不重新研究数学，也不验证 Dusart 定理或无限段的纸面推导。成功输出写到 `independent-check.json`，其输入 SHA256 与证书绑定。

## 重新生成与复核

```bash
python experiments/diagnostics.py
python experiments/height_certificate.py
python experiments/finite_closure.py
python experiments/check_certificate.py
python experiments/boundary_audit.py
python checkpoint.py
```

`finite_closure.py` 会在原题剩余见证生成前先调用 `checkpoint.py` 保存可恢复 ZIP；最后一条命令更新完整包。它只写本研究目录及其父目录的同名 ZIP，不访问远程仓库。

## 参数、原始输出及范围

| 脚本 | 参数范围与工作 | 原始结果 |
|---|---|---|
| `diagnostics.py` | 抽象支撑 `i=3..120`；原输入 `3≤i<j≤180`；完整幂与两个错误断言的反例 | `diagnostics.json` |
| `height_certificate.py` | `i=3..1023`；试除枚举素数到 3069；精确 H4 截止和固定有理数比较；不测试原 B699 对 | `height-certificate.json` |
| `finite_closure.py` | 仅在已证明的 `n≤528980` 内建立素数覆盖，交替 H4 压缩，再对 2848 个剩余原输入给见证 | `finite-cover.json`、`witnesses.json` |
| `check_certificate.py` | 不导入生成器；重新验证全部高度、覆盖、遗漏与两个实际二项式的整除；用不同的进位算法核对赋值 | `independent-check.json` |
| `boundary_audit.py` | 仅检查 3 个 `p=i` 已有见证；确认不应声称它们只有等号见证 | `boundary-audit.json` |

诊断原输入 15,753 对、非平凡 D 15,128 个；抽象单元 295,236 个。这些有限诊断不是无限证明。

最终证书完全覆盖 50,593 个派生候选对：47,745 对由素数区间直接覆盖，2,848 对有显式公共素数见证。第二检查器实际计算了 1,035 个不同的大二项式 `C(4j,j)`，缓存后用于全部 2,848 对；不存在仅抽检部分见证的情况。

## 独立实现的边界

高度生成器用试除获得小素数；第二检查器用新的小筛重建。覆盖生成器用筛；检查器只用试除验证所选素数及区间链，不依赖筛的完整性。见证生成器对第二二项式用 Legendre 赋值；检查器计算实际整数二项式并另行做逐位进位。

这是**同一执行会话中的不同程序实现**。不声称另一个研究者、模型或证明内核完成了审查。

有限证书能支持整体结论的前提是 `derivation.md` 的 T4、H4、LIN4、FINITE4 全部正确，并且接受 `sources.md` 的三项论文输入。脚本输出 `PASS` 本身不能替代这些数学依赖。
