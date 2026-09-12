# 通用窗口素数分量分配候选

候选给全部1≤k≤n的实际构造：用已验定位定理内部选择窗口位置，按位置聚合choose(n,k)的完整素数幂，证明块正、整除窗口值、各组互素；实际自然余项R_r≥1且∏R_r=k!；进一步得到w_r≤L时∏R_r^w_r≤(k!)^L。包含k13/L16实例，完整类型在Audit中。

5个短模块分别为Products（有限互素积辅助）、Assignment（实际support与内部定位）、Blocks（分组整除/互素/总积）、Remainders（实际自然除法与k!）、Weighted（权重及13实例）。建议映射lean/WinAssign，逐层PAudit、AAudit、BAudit、RAudit、WAudit，最后Audit。准确源/声明/接入范围见SOURCE_MAP和PROOF_PLAN。

当前只有完整证明文本与静态核对，未运行Lean。29公开根、24定理都附typed/axiom入口，无sorry、axiom、native_decide。有限回归覆盖n1..60、每个1≤k≤n共1830例；另用n2197,k13核对p=k=13、binomial指数2与定位模数13³，余项在该位置保留13。测试使用第一个合法位置而不是计算Lean的Classical.choose；它们只检查任意合法分配应满足的性质，不代替全参数源码验收。

已实际核对通用定位源在成功验收闭包中的SHA；名称含i11的收据不使其底层定理变成i11专用。k=n时prime support为空，正块1和余项积k!仍正确。自然除法和正choose取消均显式出现在源码。

写入只在本独占目录，无Lean/Git调用，不改主线或旧冻结包。若候选通过，可消除i13加权损失中的“实际分配/余项积”缺口；其它加权转移、边与有限覆盖仍独立，原题计数不增加。
