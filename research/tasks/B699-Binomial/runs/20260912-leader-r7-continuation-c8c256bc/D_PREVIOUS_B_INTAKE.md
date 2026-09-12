# D 上一轮误接 B 任务：补交接收与归属修正

用户明确说明：本包是 **D 上一轮收到错误的 B 任务后完成的成果**，不是 D 当前轮的任务；当前 D 仍为 D，研究职责不变。文件名、报告标题和包内 Pro B 标签按原字节保留，不能据此把实际产出改记为当前 Pro B。实际产出者按用户确认为 Pro D，旧任务标签为 Pro B。

原件见 [REPORT](deliveries/d-prior-b-primepower/REPORT.md)、[HANDOFF](deliveries/d-prior-b-primepower/HANDOFF.md)、[PROOFS](deliveries/d-prior-b-primepower/notes/PROOFS.md)、[最小接口](deliveries/d-prior-b-primepower/notes/MINIMAL_INTERFACE.md)、[失败边界](deliveries/d-prior-b-primepower/notes/FAILURES.md)。来源身份、ZIP哈希与逐文件字节映射见 ARCHIVES.json 的 D-previous-B 和 SOURCE_MAP.json。本记录修正调度与署名，不修改作者原件。

## 作者报告的新增覆盖

对 i3，g=gcd(n,j)、β=j/g、γ=(n−j)/g。任一侧 ζ=β 或 γ 若为 aP^r，其中P为任意素数、r≥1、1≤a≤21，则所有合法n,j闭合。n不必平方，另一侧不限形状，不要求gcd(a,P)=1，P不保证是最终共同素数。一般非平方素数立方以及任意单侧纯素数幂已经包含，撤销本批此前把它们列为待研究的任务。

对任意a≥1，作者给出 noCommon⇒n<279936a^9+2；a固定才是有效有限化，a一般仍无界。因此 R7={3,4,5,6,7,8,9} 不变，没有整个i3绝对高度，也没有新Lean验收。剩余反例两侧规范余因子 min(P|ζ) ζ/P^{v_P(ζ)} 均至少23。

新规范商保留完整λ、μ及共享幂：C=gcd(K,ζ)、w=λμC、x=n−gζ，有 w x(x−1)=h(n−1)(n−2)、1≤h<w、g|2h；γ侧4h<w。令d=gcd(ζ,n−1)、e=ζ/d，则e|(w−h)n+2h、gcd(d,e)|w+h。ζ=aP^r且P|n−1时，C|a并有d|a(w+h)或e|a(w+h)。准确前提以作者证明为准；商整性只等价于两个投影，不能替代完整noCommon。

## 依赖、核验与输入限制

作者给出纯素数幂的初等短链及a≤21的精确完备证书；这条新消费者不调用旧百万β基例、判别式content、Padé、BEG／对数下界或Pell。它不意味着D一般五因子非空证明的深依赖已全部消去。纯素数幂也可从此前D五因子定理直接推出，原报告明确保留该跨交付来源。

作者记录：352个(d,A)、25337个正除子实例→13条记录→0；131451个整数幂检查→118条整数平方根记录→0；16类坏证书拒绝。两实现出自同一会话，不是第二研究者。Leader未执行数学脚本、未审读完整符号链、未核验外部定理或Lean；新接受义务为 V-R7-D-PRIOR-B-QUOTIENT（待派发）。

该旧任务作者实际读到最新B REPORT/PROOFS及D最新完整包，没有取到最新A/B原ZIP或最新B HANDOFF；本次统一包补齐了这些输入，不倒填作者当时的阅读记录。作者称所用前置已在新PROOFS重建。SESSION_STATE提到的外部release-verification JSON未单独随本次附件提供；本批只登记实际在包内的核验记录。最初打包遗漏嵌套同名MANIFEST的失败记录原样保留。

## 当前任务修订

- A：继续i9的84族无界指数，目标不变；按需读补交结果，不能把i3前提直接套到i9。
- B：先核对要采用的新商和共享幂接口，停止把q³列为主攻；转向两侧规范余因子均≥23的混合素因子区域，争取消去一般a、F或其他真正无界量词。无需按顺序提高a的固定截止。
- D：仍为原Pro D；保留五因子、整行／跨指标与自由探索方向。上一轮误派任务已完成归档，不再把它当作当前任务。

本次三份修订任务为待用户投递；其他会话当前执行状态没有据此改写。旧任务版本保留在父提交71ff0824e9b6f9ac3e549b54eb1f480da9c93554，新任务统一使用v2附件。
