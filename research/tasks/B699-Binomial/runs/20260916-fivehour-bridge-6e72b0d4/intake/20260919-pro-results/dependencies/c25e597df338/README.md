# B699 Pro A · SAT48 / COVER21

入口：REPORT.md → PROOFS.md → HANDOFF.md。冻结输入与路径哈希见SOURCE_ADOPTION.md及evidence/source_manifest.json。

本轮结论：SAT48所有H首一后恰119个显式可约乘积；同一个固定G的可载点覆盖22→21；达到21时所有可载点因子必须D=2e。SAT54仅条件计账，尚未证明。

仅会话内数学/精确证书，不含Lean、GitHub修改或旧大证据。原题仍开放；21不是有限原题候选。

标准库复现：

```
python3 -B code/reproduce.py --out /absolute/path/that-does-not-exist
```

发现程序code/discover_sat48.py与接收器分开；接收器不导入发现代码。代码、全部根列、选定子式/有理解、实际日志、整数子式输出、完整预算及边界均在包内。SHA256SUMS.txt固定成员字节。

最终ZIP的干净解压回执是包外伴随JSON，包含ZIP实际SHA256、复验状态、命令和资源记录，以免制造“ZIP内嵌自身哈希”的循环记录。
