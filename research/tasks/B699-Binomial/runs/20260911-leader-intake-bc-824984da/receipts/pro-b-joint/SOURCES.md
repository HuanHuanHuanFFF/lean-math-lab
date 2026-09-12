# 来源、采用闭包与状态

## A. 本轮固定来源

原始用户附件 `input/originals/B699-R12-dispatch-context.zip` 按原字节保留：

- 字节数：39610422。
- SHA-256：ff40cf6a2e5487819afa55ddc2616ac3fc106455a75ea8ae147244faa1d73262。
- 固定Leader来源：9d4228e3ed0de4bb6b8e555ca59af3f53d578c67。
- 入口：navigation/CURRENT_STATE.md、TASK_PROTOCOL.md、SOURCE_MAP.md。

已真实运行原包 prepare_context.py，在独立的 restored 目录恢复395个成员、111260779字节、3个嵌套成员；没有执行恢复出的历史数学代码。命令输出在 evidence/context-restore.json。本轮直接采用允许的冻结来源，没有查询在线Git状态，没有等待PR或huan。

输入包内 i18、r13、r12 外层的原始ZIP采用共享成员恢复机制；本轮不声称自行重新压出的ZIP会等同那些外层原字节，而是保存用户实际交付的整个dispatch原ZIP，并使用其PACKET_SOURCES.json逐成员映射。

## B. 数学输入的具体采用

1. r12 的 notes/RATIONAL_TUBES.md 与 r13 的 notes/QUOTIENT_PROOF.md：用于明确i3几何覆盖检查对象及弱整除投影。新密度证明本身初等，不调用超越定理。
2. r12 的 input/previous/input/frozen_cuts.json：保留完整字节，筛出max(p,q)<15的55行，其中17条等价子集用于最终i15模型。
3. 仅用于依赖删减对照：r13 的 FREE_DEGREE_PROOF.md：3/2的三分支余因子约束，Y≥2^65536。
4. 仅用于依赖删减对照：r12 的 NEW_PAIR_PROOF.md 及 new_pair_cuts.json：2/11的两条三分支约束，Y≥2^131072。
5. 冻结 i13 PROOFS：旧完整赋值与三窗口接口；本轮另把i15所需的完整定位/阶乘残余证明写出。

check_sources.py 另外从嵌套原包重建55行的出处：asymmetric-Pade 的七组 accepted refined_profiles 加 i13 的接受cut文件；最终矩形输入的共同阈值是2^65535，覆盖i13的2^8191；对照55+3模型才需要2^131072。没有把旧报告“剩余17/13项”等局部前沿当成实时前沿。

13份原件/导航平铺字节的映射在 input/SOURCE_BINDINGS.json；此外两个较早asymmetric原件通过嵌套读取比较。整份历史依赖仍可以从原dispatch恢复，未重新运行其全部验收。

## C. 唯一相关外部出版输入

M. A. Bennett, M. Filaseta, O. Trifonov,
*On the factorization of consecutive integers*, 作者稿2007-02-26。

原始URL：
`https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf`

本轮在网页真实打开全文，并截图读取零基页9、10（印刷页10、11）的 Lemma 4.1 和 Proposition 5.1。它们是冻结Padé不等式的原始近似大小界/公因子下界来源；本轮没有重新证明其全文，也没有新增出版参数。

本轮生成器不计算这些分析常数：已接受的旧纸面+精确证书作为输入保留。新正结果的有限部分全为整数/有理算术。

对原URL的容器下载实际失败；没有把网页能读冒称本地已保存PDF，没有伪造PDF。原始链接和适用位置清楚列出。使用者复核出版依赖时仍需原论文。

## D. 证据等级

- 外部定理：上述BFT；未重证、未Lean化。
- 冻结论文应用：最终17条等价矩形Padé不等式（另有55+3条对照），按其固定报告和证书采用。
- 本轮新纸面：完整分支有限化声音性、极值面/打包、i15全部碰撞消去及条件高度、i3全参数覆盖障碍。
- 本轮精确计算：9份新输出，最终629个案例/1296个点，对照3468个案例/9764个点，3279条仿射线、13类坏证书测试；实际记录见replay。
- 发现性计算：有限LP/圆锥池与对偶恢复，使用SciPy/SymPy；不进入接受链，正式打包另用纯有理检查。
- Lean、人审、第二独立研究会话审读：均未执行。
- 新颖性：相对固定输入的新连接；没有外部首创认证或领先判断。
