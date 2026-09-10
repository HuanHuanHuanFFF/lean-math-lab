# 固定来源、实际读取与外部义务

## 用户输入

本包保存未改字节原始任务压缩包：`inputs/task-package-original.zip`。

原名称：`B699-candidate-compression-task-20260909(1).zip`

SHA256：

```
bbf047f2d41326254cef32eb4784a615417d48e00a5a942a523e8c461a52cbca
```

实际读取 TASKS、CURRENT_STATE、READING_MAP、低指标接收审读；解开其中 `evidence/low-index-bounds.zip`，读取 REPORT/FRONTIER/SOURCES、高度证书与采用的数学推导；按地图读取三窗口、完整幂与旧覆盖结构。不是仅沿用上一条聊天回答。

对应原包重点路径：

- `context/CURRENT_STATE.md`：本轮起点的纸面与Lean层级，含主机677项固定检查点。
- `context/low-index-bounds-review.md`：旧高度与i4结果接收审读。
- `evidence/low-index-bounds.zip` 内 `REPORT.md`、`SOURCES.md`、`outputs/height_certificates_751.json`：本轮采用的七项初始高度。
- `context/prime-power-transfer.md`、`context/small-prime-part-bound.md`：实际幂定位与U界。
- `prior-source-snapshot/notes/heights/two-cutoff-theorem.md`：完整三窗口结构。
- `prior-source-snapshot/notes/heights/small-cofactor-cover.md` 及 `notes/zero-boundary/`：旧余因子覆盖的条件；本轮未假定M=64可迁移。

旧低指标包的上层来源提交为 `63a04b064d62e7e8752b1edd75c186d07dc57a20`，本次并未查询该仓实时状态。主机677项已验记录的固定提交为 `2e190f896738460c2cb23289d3b7051ce1ba3e9a`；本轮没有重跑其Lean或声称其后续状态。

原任务manifest在干净解包目录核验成功34项，实际日志 `replay/input_manifest.stdout.txt`。第一次在研究工作解包目录运行时，因为另外解出的previous-low文件不在manifest中而拒绝；随后仅对原档案的干净目录核验通过。未把第一次拒绝当成输入数学错误或伪造一次成功。`inputs/task_package_provenance.json`记录此事。

## 唯一用于本轮七项闭合的外部数论来源

Michael A. Bennett、Michael Filaseta、Ognian Trifonov，*On the factorization of consecutive integers*。

实际重新读取作者托管2007-02-26稿（35页）；URL：

```
https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf
```

本轮以 web 工具读取PDF正文，并查看PDF索引3（印刷页4）截图核对 Theorem2.1。没有仅依据搜索摘要或旧模型回答。未在本包附整篇外部版权论文。

**采用精确版本：** 对表中素数对p,q及非负整数a,b,x₁,x₂，若
\(|p^a x₁-q^b x₂|\le100\)，则或者第一窗口值≤1000、或者该无序窗口值对属于明列例外、或者

\[
\max(x₁,x₂)>\min(p^a x₁,q^b x₂)^{\lambda(p,q)}.
\]

本轮只用三对及以下精确有理数：

```
(2,7): 259/1000
(3,11): 329/1000
(5,13): 163/1000
```

全部明列例外坐标最大值1,771,561。n≥2^22且17≤i≤33时，实际窗口值都超过该值，差≤32。余因子本轮实际为正；允许零的原声明不会引入新异常。两幂同位置分支还另有互素乘积的初等证明，不把零对数当非零对数使用。

用这三对恢复的751/1000小素数部分上界与七条高度，并非本轮新发现；本轮只是重新核准原条件并重算相关整数高度证书。候选压缩本身不再增加出版定理假设。

## 没有采用为本轮新证明依赖的结果

- BEG只存在于附件i=4的旧非有效有限性；本轮七项消费者不使用它。
- Matveev仍属于旧28、31、34链；本轮没有形式化、重证或移除其依赖。
- Dusart／素数计数优化仍属于其他大指标路线；本轮候选末端直接提供有限素数见证，不要求这些无限素数估计。
- BFT Corollary2.3的未实例化C₀仍只是下一任务入口，本轮没有给出或采用该C₀数值。

CRT、两大幂定位、区间覆盖、所有终端消费者的新增证明在 `notes/PROOFS.md` 完整给出。普通程序没有重证BFT论文或无限量词推导。
