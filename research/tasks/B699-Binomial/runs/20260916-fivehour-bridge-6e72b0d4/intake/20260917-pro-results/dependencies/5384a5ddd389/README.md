# B699 Pro D — paired midpoint square precision

先读 REPORT.md、PROOFS.md、SOURCE_ADOPTION.md、HANDOFF.md。本轮是完整平方精度与配对整数商，不是两底t全闭合。R7不变。

## 复算新证据

从本目录执行：

```sh
python3 code/replay.py --regenerate
```

`--regenerate`需要SymPy，只用于重新展开证书。其余新接受、有限回归和消费者均用Python标准库。

不加该选项时验证固定整数证书及新有限诊断：

```sh
python3 code/replay.py
```

父包的历史大表、出版高度和Lean链不会运行。有限诊断不证明无限量词；无限论证在PROOFS.md。

## 条件消费者

```sh
python3 code/consumer.py 2034 5 856
```

默认不打印巨大内部整数；`--details`显示精确内部字段。程序不分解任意大数，只剥离固定小素数和做整数gcd。`not_covered`不是反例。i4不在本轮程序支持范围。第一个参数n、第二个i、第三个j必须合法。

最终外置核验收据绑定本ZIP与MANIFEST.json。来源原件和各自SHA-256在sources/SOURCE_MAP.json；新数学输出不含随机性或运行时间，便于逐字节比较。
