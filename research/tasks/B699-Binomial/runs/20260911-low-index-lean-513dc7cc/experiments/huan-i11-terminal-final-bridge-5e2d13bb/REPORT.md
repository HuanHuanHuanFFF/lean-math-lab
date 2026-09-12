# 终端数值会员的低端补齐与合法域剥头

已写出三层完整候选，使数值会员表统一使用 `extendedCandidates cs=(0,23)::cs`，而终端见证检查始终只作用于旧cs。对所有原题合法 n,j，扩展会员可严格还原为旧cs会员；最终Common消费者不把会员当输入。**本轮未运行Lean**，不把候选文本或小检查记成原题验收。

只写本新目录。起点2026-09-11 21:39:20 UTC，检查点21:59:20 UTC（不是截止）。Witness、RowCell、原cs及此前冻结候选均未改，无Git、完整表或大计算。

## 任意 cs 上的逻辑接合

Extended.lean 单独依赖已验终端Cover，因此数值表可先仅导入此轻量模块。固定头区间是闭区间[0,23]，没有新增Witness构造。

对任意 `cs : List NatInterval`：

1. 旧cs会员自然也是 `(0,23)::cs` 的会员。
2. 若 `24<=n`，扩展会员只能来自尾部cs。证明取出见证区间I，对List.mem_cons分类；头项分支给n<=23，与24<=n矛盾，尾项原样返回。
3. 原 `11<j`、`j<=n/2` 内部推出24<=n，所以合法域自动满足第2步。没有假设cs有序、非空或其下端点都>=24；剥头定理支持任意cs。

同时证明

`coverCheck 24 (max M 109) (extendedCandidates cs) = coverCheck 24 (max M 109) cs`。

因为max M109>=109，检查的目标非空且起点24严格在头区间之后，旧coverCheck直接跳过该头。故此前在旧cs上检查的小n覆盖可以原样复用，不必在见证表中加入0..23。

## 实际会员入口与最终 Common

实际读取到的上一冻结接口是 `Math.B699.I11TerminalCRT.actual_i11_candidateMem`，源SHA=`98a33090722a9f5b26ef5396fe4920247c7264ec06ccaaef3190da0119818bc3`。开始时集成目录仅有RowCell，本候选因此引用上一冻结Actual源，没有猜测不存在的接口名。新包另提供 `actual_i11_terminal_membership`，把其扩展cs结论剥回旧cs。

新接口保留：

- 真实 `stageConstantsCheck H M=true`；
- 六张 `pairGridCoverCheck p q H M data.gridPQ (extendedCandidates cs)=true`，对应23、25、27、35、37、57；
- 显式小n `coverCheck 24 (max M109) (extendedCandidates cs)=true`；
- 原 `11<j`、`j<=n/2`、`noCommon`、`n<H`。

窗口、实际余因子、指数和会员都不是该入口的外部假设；它们由上一完整会员消费者内部处理。输出是 `candidateMem n cs`。

`terminal_common_of_extended_checks` 再接受 **旧cs** 上的 `candidateIntervalsCheck cs witnesses=true`，反证noCommon、取得旧cs会员并调用已验 `candidateIntervalsCheck_sound`，得到原 `Common n 11 j`。

`terminal_common_of_original_small_cover` 是便利包装：六张会员表仍使用扩展cs，小n coverCheck直接接受旧cs上的版本，通过上述等式转换。两种最终入口都没有会员假设，也都不检查人工头区间的Witness。

Common仍为 `∃p,p.Prime∧11<=p∧p∣gcd(n.choose11,n.choosej)`。prime端点包含11；j下界严格11<j，上界包含j=n/2。补齐数值检查域没有增加任何原题合法n,j。

## 真实小参数反例与跨界例

采用实际CRT参数定义的正余数代表约定（零余数映为Q），这里两个例子的余数均为1。

- P=2,Q=3,v=2,d=-1,t=0，得到A=C=1，真实 `parameterInterval` 是[3,12]。旧列表示例cs=[(24,33)]的coverCheck为false；加(0,23)后为true。Examples.lean还给出任意所有下端点>=24的旧cs都不能覆盖[3,12]的证明。
- P=2,Q=3,v=2,d=-7,t=2，得到A=C=7，区间[21,24]跨过23/24。旧示例cs不能覆盖，扩展列表由头覆盖21..23、由旧cs覆盖24，检查为true。首个合法n=24的会员仍明确留在旧cs。

这些例子只是RowCell无条件枚举参数时必须处理的数值区间。0..23没有任何满足11<j<=n/2的j，不需要也没有声明它们拥有普通终端见证。

## 本次实际检查

check.py只做小整数/区间检查，约0.022秒，没有Lean、素性或choose计算：

- 两个实际参数区间与旧/扩展cover结果按精确整数计算核对。
- 2807个列表/会员例验证旧会员进入扩展、n>=24时两者会员完全一致，包含空表、低区间、无序与空区间示例。
- 441个合法n/j例核对n>=24；0..23全部无合法j。
- 49个小n coverCheck等式核对任意列表示例和M值。
- 最终三个入口的六张会员检查均使用扩展cs；两个Common入口的Witness检查均只使用旧cs；入口没有hmember参数。
- 新源无sorry/admit/自造axiom/native_decide/ofReduceBool；所有42个读取文件在末尾重新比对字节。

有限例不是全参数Lean验收。Examples里的Lean证明同样尚未运行。

## 依赖、源码和下一步

已核对成功收据与当前完整闭包的前置：`i11-terminal-crt-row-cell`、`i11-terminal-cover-witness`、`i11-terminal-cover-consumer`；对应公开axioms都限于std3。上一完整Grid/Actual生产者按其冻结源码采用，本worker未声称它已验收。SOURCE_BINDINGS.json保留每份源/收据SHA。

| 源 | typed/axiom根 | 实际字节SHA256 |
|---|---:|---|
| Extended.lean | 6 | `29b55bcdb690b662c7ecb3d2defbe5769f64f7f675bccb01d04768c27d3576a9` |
| Final.lean | 3 | `b1013a0a3900b8b68c73cadab9b38dcc51602f6fd663cdb14064d8edd3ec63e4` |
| Examples.lean | 8 | `e9683329dcef7a3066fe52459b8c08f2997759cce3bd7d5b71bf3a29c0ca6d29` |

共有17个公有根，每层及总Audit同时给#check与#print axioms，准确源行见DECLARATIONS.json。建议数值表先使用Extended；Final在完整会员生产者可用后验收。INTEGRATION_MAP.json明确单行import转换，避免同时导入冻结与集成的同名模块。

主任务仍须给stage04 H=29294603、M=500的六张完整扩展会员表、旧cs的完整Witness/check数据和显式小n coverCheck；本包没有生成或改动这些数值文件。还需新17根及依赖生产者的真实串行验收。没有新增初始高度、完整终端数值覆盖或B原题验收，B仍0/19。
