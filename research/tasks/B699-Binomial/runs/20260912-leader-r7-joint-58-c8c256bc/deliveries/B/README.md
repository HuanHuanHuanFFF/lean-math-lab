# B699 R7 · Pro B：三个规范商与9幂块排除

入口：REPORT.md → notes/PROOFS.md → HANDOFF.md。

最强原题结论：n=18P^aQ^b+2，P,Q≥5为任意素数、a,b≥0时，全部合法j的i3成立。一般原题反例不能有C₀、C₁或C₂等于9。未新增整指标闭合，R7仍为{3,4,5,6,7,8,9}。

同时提供固定K后的两投影精确恢复，以及一个**独立依赖出版定理**的固定单分配因子B有效高度。前者不等同于noCommon，后者不是整个i3的绝对高度。

## 主接受重放

只需Python标准库（建议Python≥3.11），无需联网、Lean或第三方库：

```bash
python3 -S -B verify_manifest.py
python3 -S -B code/reproduce.py --record replay/local
```

从全新临时输出目录运行7条新命令，比较7份数学输出，并核验源码／输入前后哈希。真实返回码与日志写入给定目录。三个旧数学原包只检查ZIP和成员完整性，不运行其中历史程序。

`code/normal_forms.py`中的1,045,506次小j测试只是正规式回归；无限结论由纸面证明及完整模周期证书支撑。`code/consumers.py`的展示点同理。

## 可选发现过程重跑

```bash
python3 -S -B code/replay_exploration.py --record replay/exploration-local
```

它只在临时副本改写原发现脚本的绝对路径，不改原件。默认主接受链不依赖这些选择路线的试探结果。

## 证据边界

作者纸面证明＋精确有限整数证书；没有新Lean、第二独立研究者、人类审稿或原创性认证。出版E1只服务补充高度，常数计算PASS不等于证明E1。sources/originals是采用的三个原包的原字节副本，恢复关系见SOURCE_MAP，旧原件没有被修改。
