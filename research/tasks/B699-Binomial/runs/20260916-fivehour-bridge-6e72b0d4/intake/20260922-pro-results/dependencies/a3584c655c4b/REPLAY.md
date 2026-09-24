# REPLAY

在解压后的包根目录执行：

```bash
python3 src/replay.py --output-dir /tmp/b699-r7-check-new
sha256sum -c SHA256SUMS
```

只需Python标准库。输出目录必须尚不存在，避免覆盖冻结输出或先前工作。

分别运行两检查器：

```bash
python3 src/check_a.py certificates/round7.json
python3 src/check_b.py certificates/round7.json
```

重新生成证书（额外需要SymPy）：

```bash
python3 src/replay.py --output-dir /tmp/b699-r7-regen-new --regenerate
```

生成过程不联网，不写仓库，不运行Lean。重生成证书必须与冻结字节完全一致。

SHA256SUMS覆盖全部包成员文件，唯独不包含它自身；MANIFEST.json同样明确排除自身和SHA256SUMS，避免自引用哈希。

研究结论的阅读入口是REPORT.md和PROOFS.md。检查器核对精确证书与应用，不是对所有原n,j作机械枚举，也不替代外部独立数学审读。

src/quartic_probe.py、quartic_reduced_probe.py、ode_probe.py、ode_templates.py为探索记录，不属于默认重放；其中直接Groebner尝试没有完成，不是证明依赖。
