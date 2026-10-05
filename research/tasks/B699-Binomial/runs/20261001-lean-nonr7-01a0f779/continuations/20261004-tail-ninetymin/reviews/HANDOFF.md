# S独立核验入口

S=`/root/tail90_verification`，`gpt-6.1-sol/xhigh`，仅写本目录。不运行本机Lean，不修改A/C/Leader文件，不commit/push。start `2026-10-04T10:22:50Z`、新重CI启动上限 `11:15:50Z`、proofStop `11:32:50Z`、hardDeadline `11:52:50Z`；不延期、不补签。

## 已接受

- [5001签件](TAIL5001-INDEPENDENT-ACCEPTED.json)及[绑定](TAIL5001-INDEPENDENT-BINDING.json)：原版[程序](bind_current_archive.py)实际exit0，source `edc3d9972097a5dd7e936c1152c60517311bd228`、run `37196132408`、artifact `11301441536`，348758B原ZIP `625a1e5b147b4daa7484e857f4d42711baad6bd423cc2057fd1c6a748ae877c9`。84native普通/对象成员、两新源5根传递AX、两正常checker、实际单5001和完整 `[4883,5001]` literal，及旧29a3/217e全部member bytes、140source/object闭包、实际第一LEAN_PATH，全部独立绑定。额外数学输入空，所有合法Nat n/j，同实际prime p≥i双完整choose。完整全集从5000升至 `{1,2,11,29}∪[35,5001]`。
- [Probe正确签件](PROBE-RELATIVE-VALID-INDEPENDENT-ACCEPTED.json)及[绑定](PROBE-RELATIVE-VALID-INDEPENDENT-BINDING.json)：另版[程序](bind_next_archive.py)实际exit0，source `d077ec8278b504da5bf03ccc4ecd3662f8d19547`、run `37196421370`、artifact `11301262648`，11552533B原ZIP `e28d5ed36e1acb590bd6e23992fc2dd07269f35f7a57d9f192c2fa7bf3b04b8f`。169native成员、7fresh源109根AX、7normalchecker0、两旧完整origin/140source/parts/首import路径全绑定。接受source-aligned relative core/endpoint、固定16、相对16及相对首64候选块；原题完整范围仍至5001。第三origin可复用这些7个新编对象，不重kernel。

首probe调用给错artifact=0；两份 `PROBE-RELATIVE-INDEPENDENT-*` 原字节保留但**不可作为当前接受入口**。见[更正说明](PROBE-RELATIVE-ADMIN-CORRECTION.md)，只采用含 `VALID` 的正确入口。这是S参数错误，完整相同原包已用准确id重新byte绑定；不是数学/CI失败。

- [6000签件](TAIL6000-INDEPENDENT-ACCEPTED.json)及[绑定](TAIL6000-INDEPENDENT-BINDING.json)：[三origin程序](bind_finite_archive.py)实际exit0，source `e47faa4ff2cf11e2b125c7e0e0a890c4b990a61e`、run `37197120772`、artifact `11301805020`，79155198B原ZIP `b8af80b0086ef145e63fb9ac10966cf324614c42cfea580c621f3c4adadc8417`。273native成员、三旧origin分别1728/188/169全部bytes、147source/raw receipt/全部parts及首search path、13fresh源684根AX/13normalchecker0、单6000与完整 `[4883,6000]`实际原题types全部独立绑定。额外数学输入空、n/j全域；完整全集升至 `{1,2,11,29}∪[35,6000]`，相对5001新增999。原probe7对象没有再次编译。

原包均外置 `D:/ResearchArtifacts/b699-tail-ninetymin/`，C的普通/二进制member可恢复映射在 `runtime/ci/<run>-<stage>/RAW_INTAKE.json`。旧原包29a3/217e未重kernel；重读其raw bytes不提升旧数学证据等级。正常checker是实际固定Lean replay，不是第二独立内核实现。

- [10000签件](TAIL10000-INDEPENDENT-ACCEPTED.json)及[绑定](TAIL10000-INDEPENDENT-BINDING.json)：同fixed source/run，artifact `11302125590`，371633305B原ZIP `e906e2fb73ccb9d8a4048ca7ccd8c41cc66b17ecf40524a73424d0a1f1f957aa`；864native成员、147复用闭包及三origin全members/parts/actual首import环境、48fresh源2818根AX/48normalchecker0、单10000及完整 `[4883,10000]` actual literal全通过。额外数学输入空，所有合法Nat n/j；完整全集现 `{1,2,11,29}∪[35,10000]`，相对6000增4000，本轮相对5000累计增5000。各阶段覆盖互相包含，不能把累计数字相加。真实finiteGap已另接受，见下方Gap签件；不改变完整i上限。

## 源审与候选

[无界供应审读](UNIFORM-SUPPLY-INDEPENDENT-REVIEW.md)从实际onlyGap终端向上追溯DS、两θ有效界及ψ误差输入；供应都仍显式未消去。纸面出版输入、θ/ψ桥梁、finite链或作者PASS不升格。该缺口当前属于未形式化数学输入/完整源未供，未出现新数学复杂度失败。

[有限端点审读](FINITE-ENDPOINT-INDEPENDENT-REVIEW.md)、[55源冻结](CANDIDATES-INDEPENDENT-SOURCE-REVIEW.json)与[程序](review_candidates.py)检查2844 relative integer edges/seams、端点和准确literal源码；计算不证明primality。主6000/10000消费者独立literal已交C。主fixed source `e47faa4ff2cf11e2b125c7e0e0a890c4b990a61e` 冻结后不增加目标；待收到包，以[三origin程序](bind_finite_archive.py)绑定147旧source/3个完整原包及每个fresh proof/原题literal。6000与10000均已按上方签件正式接受；finiteGap已另正式核验接受。

[Forward有限Gap审读](FORWARD-GAP-INDEPENDENT-REVIEW.md)和[5源冻结](FORWARD-GAP-INDEPENDENT-SOURCE-REVIEW.json)：可选准确范围 `[20482069,24574447)` / `[20482069,40956329)`，strict y<p，完整整数 `4095*(p-y)≤y`；没有主链下方千万至seed的供应，更没有无界y供应。独立Gap literal已备，必须实际新编/AX/checker/binding后才接受。

另备6001/10001两个零新增prime末端候选及独立literal，仅静态准备；主运行不变。只有主success且仍在新CI启动上限内，才另冻结并附验。候选不是接受。原latestStart已于11:15:50Z结束；没有此前真实起跑收据时，本轮不再新执行这些候选。

新增计数按最终最高已接受范围计算：主10000接受后，6001属于已覆盖重用，新增0；10001相对10000才新增1。若最终只有6000，则独立6001相对6000新增1。各signature的 `newCompleteOriginalIndexCountFrom5000` 是累计相对本轮开始的范围计数，不把同一指标在不同consumer的接受重复相加。

## 最终有限Gap与恢复映射

[Gap签件](GAP-FORWARD-INDEPENDENT-ACCEPTED.json)与[绑定](GAP-FORWARD-INDEPENDENT-BINDING.json)已实际exit0，source e47/CI37197120772/artifact11302220564，371720614B ZIP `7ac606c19b9a83bf8718a0a97f0cb5ef157b7dff196aed3b9a3859ee078280cf`；937native、53累计fresh/2824AX/53normalchecker0及三旧origin/147闭包全绑定。两actual独立Gap literal均通过，最大并集为 `[20482069,40956329)`（20,474,260个Nat y），无额外数学输入；较小6000区间包含其中，不相加。这既不是全10M初段，也不是无限Gap。

[10000保留映射核对](TAIL10000-RETAINED-MEMBERS.json)与[Gap保留映射核对](GAP-FORWARD-RETAINED-MEMBERS.json)由[程序](verify_retained_member_map.py)逐actual `storedPath`流式比对原ZIP每个成员、size/SHA及Git边界；实际分别640普通+224binary、704普通+233binary全部通过。包含每个self/nested manifest，canonical复用对象映射可恢复；不重kernel。

最终机器入口是[CURRENT-SCOPE.json](CURRENT-SCOPE.json)；原5001/probe/6000/10000各签件及其程序bytes保留，阶段范围互含，最终新增只计 `[5001,10000]` 的5000个指标。四Extra文件仅source-only，不再本轮起跑。

## 拒绝式检查与剩余前沿

[AX门](check_transitive_axioms.py)从actual source的 `#print axioms` 精确库存，拒绝缺失/重/额外root与Std3之外公理；[门自检](AX-GATE-SELF-CHECK.json)实际两正例/五拒绝例通过。这只检parser行为，proof接受另需actual compiler、完整types、AX、normalchecker、固定Git/raw/object全部parts及实际首search prefix。

当前完整未知从 `i≥10001` 的低比例域继续，i/n/j仍无界；真Gap无界y、θ/ψ有效界、低23与R7均保留。之后任何有限K接受只能消去相应有限i区间、仍保完整n/j；无限供应缺口不随固定K增大而消失。新结果范围、额外数学输入与签字时窗由各正式签件决定。
