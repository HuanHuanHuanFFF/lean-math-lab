# 控制中心交接：B699 i=13 已完成全域纸面＋精确证书闭合

## 最先更新的前沿

新增定理：`∀ n j : ℕ, 14≤j≤n/2 → ∃ p prime, 13≤p ∧ p∣C(n,13) ∧ p∣C(n,j)`。

从启动R中移除13，新R为 `{3,…,12,14,15,16,18,20,21}`，16项。旧11/16/21只有绝对高度，本轮未闭合；没有读取它们本轮新成果。旧Lean185..4882共4698项维持原等级。

**新链没有Lean验收。** 外部数学输入仍为BFT Lemma4.1与Proposition5.1。原件既有相同Padé框架，但本轮11条约束的具体方向／权重／共同阈值及i13消费者是新交付，不应当作已Lean定理。

## 可采用的完整链

1. `input/i13_cuts.json`：11个非对称余因子约束，Y≥2^8191，差≤24；两个精确常数检查器均通过。
2. 2048种方向：位置加权最小12183，阈值12000；全部碰撞对的统一标量值1309。完整推导得到noCommon⇒n<2^8192。
3. 旧3/4大幂阈值在13处净指数0。本轮7/10消费者给n≥2^67的两个cube-small余因子，不能跳过这一步直接套旧指数块。
4. 10对、562块、14050条余数比较完整压到n<2^134。
5. 8个CRT阶段后，完整29747个候选n。24401顶端素数、5345大除子、1行n126余数覆盖，最终0残余。
6. n126的12段证书覆盖全部50个合法j，并额外逐j用Legendre核验。除这50项外，其余行证书一次覆盖全部j。

证明入口：[notes/PROOFS.md](notes/PROOFS.md)。报告：[REPORT.md](REPORT.md)。数学输出映射：[EVIDENCE_MAP.json](EVIDENCE_MAP.json)。

## 已运行验证，不扩大声称

`python3 code/reproduce.py --record replay/acceptance`：10条命令exit0，11份数学输出逐字节一致，源码／输入前后SHA一致；20.675秒、子进程峰值130044 KiB。14类坏证书拒绝通过，p=i=13且e=2的真实输入通过。不同实现全部由同一会话编写，不是独立人工或另一AI审稿。

PR7已合并；fixed main `784ec1d26f33fbb303ab0b0c14ac35919f03d902`。CLI fetch因DNS失败，连接器只读核准固定树；完整五delivery树由原件重算匹配。两个Work报告源blob匹配，完整Work子树采用Leader旧整合验收，没有重跑Lean。

## 归档方式

独立新run，不覆盖旧七项、四项或Padé原件。原字节共享包保留为 `input/B699-research-context-20260910.zip`，SHA256=`84d2b35b41ce151bde0d0dbdd44cb49104d026aacfa69f7138ea39d99f0826c5`。其内所有历史ZIP保持原字节；不用重新复制进Git。

运行 `python3 verify_manifest.py` 后，执行 `python3 code/reproduce.py`（默认创建新的replay/latest，不覆盖历史验收）。默认接受链只需Linux/Unix上的Python标准库，不需联网或展开旧输入。逐字节来源映射见sources/adopted_code.json。

可选设计脚本需先运行 `python3 code/restore_exploration_inputs.py` 恢复固定旧输入；圆锥探索需NumPy/SciPy。它们不是接受链，不应据其浮点输出修改前沿。

## 后续一个明确检查

尝试11/17素数对的余因子下界指数129/1000，必须给明确数值共同阈值和所有差≤17的量词。已完成有限图敏感性检查：18号不同位置分支24008>24000；128/1000不足。它仍是条件接口，未实例化碰撞与阈值，不能记录为18号有效界。

大指标Work方案不变。本轮无Git写入、无Lean、无其他会话通信。
