# 采用来源、复用关系与未采用检索

## 输入冻结与字节来源

本轮输入为用户上传的`B699-R9-ABC-context.zip`，147594839字节，SHA-256：

    a9b0ce24948d502f6e2c3dd0ea6cfe7dbb8cab78a852c0ce645720073e888a59

`input/`是有选择的小文本/程序/元数据提取，不是完整原包。275个提取成员已逐项与原ZIP字节核对一致；路径、大小、哈希和恢复定位全部写入`SOURCE_MANIFEST.json`。没有重新执行原包的大型历史证书，也没有据它们的PASS文字升级Lean状态。未提取内容仍可从上述原ZIP恢复。

优先读取了：

- `input/navigation/CURRENT_STATE.md`：R9、A的新12/15/20待独立审读状态、形式化缺口。
- `input/navigation/GLOBAL_PROOF_MAP.md`：整体路线及原始推导定位。
- `input/navigation/TASK_PROTOCOL.md`：本轮执行、证据和交接边界。

## 实际用于比较/接续的数学原件

下列仓库材料全部固定于`HuanHuanHuanFFF/lean-math-lab`的提交

    9d4228e3ed0de4bb6b8e555ca59af3f53d578c67。

原包的`input/GLOBAL_SOURCES.json`记录仓库路径、blob SHA及文件SHA-256。此处路径以`input/global/repository/research/tasks/B699-Binomial/runs/`为公共前缀。

| 材料 | 本轮使用方式 |
|---|---|
| `20260909-large-prime-structure-cb4764f0/notes/rational/slope-three.md` | 采用/重导零格点与非零行列式机制；核对旧n=3j路线明确列出的EEES与Dusart依赖；本轮低指标消费者改用精确阶乘消去 |
| `20260909-slope-four-243425d5/derivation.md` | 比较n=4j路线，不把已交付整数比例重新计为新整指标成果 |
| `20260909-low-index-structure-b41a5a63/notes/heights/two-cutoff-theorem.md`及`report.md` | 完整大素数幂、窗口整除与旧三窗口框架背景；新证明在正文中重新给出所需逐层模判据 |
| `20260909-low-index-bounds-a5b51cea/delivery/REPORT.md` | 既有局部高度、内容/不变量方向与非有效有限性的边界；避免重复弱化成果 |
| `20260909-middle-index-b96965a8/delivery/REPORT.md` | 整体纸面拼接范围的背景，不作为本轮新子族证明的假设 |
| `20260909-prime-input-d2f7a636/derivation.md`与`20260909-prime-optimization-a81baaab/delivery/REPORT.md` | 解析输入替代探索与现有依赖缺口；未在主定理中调用它们的解析结论 |
| `input/sources/pro-a/REPORT.md`、`HANDOFF.md` | 新三项结果及分别清分母背景；仅按交付声明读取，不冒充独立核验 |
| `input/sources/pro-b/REPORT.md`、`notes/PROOFS.md`、`notes/I3_COVERAGE_OBSTRUCTION.md` | 旧联合接口和i=3覆盖障碍；仅约束其明确方法类，不当作全体新方法不可能证明 |

本轮的“新”指本次相对于输入完成的结构化推导、消费者与证据，不代表已核实数学史上的首创。

## 一次仓库只读补充

通过GitHub插件实际读取了固定提交中的

    research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/notes/low-index/reduced-slope-structure.md

其blob SHA为

    2c19e7b2fbcc9d2226bcab82d2ed93e18b787833。

该文已经证明i=3、4的所有j|n输入，并给出固定既约分子的相对高度。因此本轮不将这些旧整数比例或首项移位整除条件计为新覆盖。该补充只读通过，没有更改分支、提交或PR；本包留下精确恢复标识，没有声称附有它的原始字节快照。

## 新证明采用的基础事实

只使用二项式阶乘恒等式、Vandermonde、Bézout、素数赋值与有限集计数。逐层阶乘赋值/余数判据在证明中说明；新的不等式、非零行列式与有限化均由正文推导。

没有向新证明接入EEES、Dusart、BFT、Matveev、BEG定性S-part定理或未声明的出版定理。旧报告提到这些名字不等于本轮已经采用或重新核对了其全部结论。

## 查阅但未采用的外部路线

查阅了Aoki–Higa–Sugawara的原始论文HTML：

    https://arxiv.org/html/2503.06069v3

题目为关于区间[15x,16x]素数存在的完全初等证明。尝试把这种素数供应与三窗口精确二项式熵估计拼接；浮点诊断没有给出所需严格阈值，所以未成为证明前置。记录在`code/entropy_probe.py`和`logs/entropy-probe.log`中，明确不是证书。

另检索了“binomial coefficients common prime 699”“hypergeometric denominator prime divisor”等关键词；没有从这些搜索中采用可直接补全剩余区域的定理。对仅打开或搜索命中的PDF/网页，不登记成已核对数学结论；本轮核心不依赖它们。
