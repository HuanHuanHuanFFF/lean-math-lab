# 来源和依赖入口

## 固定输入

`input/originals/B699-R13-Pro-context-af3006e0.zip`：SHA-256
`7afcc3b3d51c45fa0ae44030bdb2dd0932d0f9b5b2975f12de09734237e7aa1f`，26,176,196字节。

该包内 `originals/i13-evidence.zip` 与 `originals/pade-three-evidence.zip` 均原字节保留，分别含位置加权/i13链和三项指数块/CRT链。新状态以外层CURRENT_STATE与本轮REPORT为准，不采用旧报告里的旧R集合。

在线启动核对仅PR#8元数据：merged=true，head af3006e0，merge aafecac7，2026-09-10 16:44:36 UTC合并。没有声称fetch或核对整个最新main树。记录：`outputs/startup.json`。原包清单的旧观测标志false不是本轮在线核对结果，未为此修改原包字节。

## 出版输入

Bennett–Filaseta–Trifonov, *On the factorization of consecutive integers*, 2007-02-26作者稿：
https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf

- Lemma4.1（印刷页10）：两种δ的Padé绝对值界；实际常数形式见REPORT §5.3。
- Proposition5.1（页11）：仅(5,4),(5,3),(25,17)三行直接用于本轮高度，其余七条切割采用本轮新G界。
- (5.14)（页17）与(5.15)（页18）：完整公因子素数区间公式；本轮取更弱共同端点，包含j=c等号分支。
- Lemma5.4（页19）：θ误差的两个重叠范围，供无限尾部使用。

上述原页已通过网页PDF页面图像核对；不把原论文本身或其外部θ验证当成已经Lean化。本包不再分发该PDF副本，版本由作者稿日期、URL、定理/页码定位。

## 接受链文件

|数学节点|输入/证明|证书|检查器|
|---|---|---|---|
|三条新G界|REPORT §4；notes/CONTENT_PROOF.md|content_tail_certificates.json、content_finite_*.json|check_content_bounds.py|
|十条非对称约束|input/i18_cut_inputs.json；REPORT §5|i18_pair_certificate.json、i18_pairs_independent.json|certify_i18_pairs.py、check_i18_pairs_independent.py|
|全部位置与碰撞；绝对高度；7/10桥|input/i18_target.json；REPORT §3、6、7.1|i18_height_certificate.json|check_i18_height.py|
|完整指数覆盖|REPORT §7|outputs/blocks/；block_summary_18.json|check_blocks.cpp、run_blocks.py --python|
|CRT归约与全体候选|REPORT §8|crt_stages_18.json、terminal_certificate_18.json|reverse_crt.py、check_i18_terminal.py|
|全部j的末端消费者|REPORT §9|terminal_certificate_18.json|check_i18_terminal.py|

表中简写证书名均在 `outputs/`。`PROOF_MAP.json` 给出机器可读范围与依赖关系。

## 采用与派生

`sources/adopted_sources.json` 包含8份原字节采用文件、3份派生源码的精确ZIP成员名及SHA。`check_sources.py` 实际核对这些成员、9条外层清单、两份直接原ZIP的CRC与更早共享ZIP的哈希。派生文件不是原字节副本，改动理由单独列明。

`input/frozen_next_condition.json` 是旧17条已接受约束与“未证11/17附加边”的条件试验原件，只用于初始选路和末端诊断。最终18的高度不使用那条未证边，也不使用旧条件试验的PASS标签。

## 验收与探索分离

`replay/clean/reproduction.json`：真实空缓存重生成，17条命令、33份数学数据比较。
`outputs/adversarial_checks.json`：24种坏证书的真实拒绝。
`outputs/content_formula_regression.json`：18个小参数的系数gcd回归，不代替全部m的证明。
`outputs/*probe*.json`、`outputs/next_frontier_check.json`：有限/浮点/限制池诊断，不扩大已证明覆盖。

一次工具超时和安装失败被明确保留在logs；截断或非零退出并未计入成功链。没有读取其他并行会话的进行中成果。
