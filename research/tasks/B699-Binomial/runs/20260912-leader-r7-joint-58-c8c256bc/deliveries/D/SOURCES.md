# 来源、版本与采用范围

## 冻结输入

完整文件摘要及成员路径见 sources/INTAKE.json；本轮实际重新从原ZIP读取字节核对，结果在 evidence/source-audit.json。

### D R7 原件

- 原ZIP：B699-ProD-R7-results-20260912.zip。
- 采用／核对：REPORT、HANDOFF、PROOFS、MINIMAL_INTERFACE、FAILURES，5份。
- 数学连接：精确一次3消去、N/K投影、旧五因子前沿、平方根消费者、同素数转移及失败边界。
- 本轮新证明不继承其中的Pell／出版对数高度接口；相关旧结论继续保留。

### B 单侧任意素数幂原件

- 原ZIP：B699-ProB-R7-primepower-closure-results-20260912.zip。
- 采用／核对：REPORT、HANDOFF、PROOFS、MINIMAL_INTERFACE、FAILURES，5份。
- 该实际挂载版本已覆盖一侧aP^r、a≤21，并给n<279936a^9+2。不将旧索引中仅a≤7或“素数立方未解”的摘要替换进来。
- 本轮不重跑也不依赖其有限闭合表；用于确定不重复的研究区域及比较规范商。

### 旧标量接口的可核对来源

额外保留上述B ZIP内 sources/b-older/notes/PROOFS.md 为 sources/b-older-scalar-PROOFS.md。其P2写明 c⁴n²g<108β³，并解释原内容／判别式链。本轮只核对被替换的接口及原依赖，不重跑旧百万证书。此项使总冻结文本为11份。

## 新数学与外部检索

新定义、恒等式、常数、奇部界及消费者均由本轮正文自含证明。完整阶素性判据也在正文给出证明，不调用不透明的素性oracle。

做过定向外部检索，但没有采用新出版定理或外部软件计算结论。A的定理没有进入本轮选定的i3路线；没有重审A/i14全链，也没有将旧调度包当作实时进展。

## 验证责任

生成器、两份有限接受器和代数检查均为同一研究会话制作。它们是可重放的普通程序证据，不算第二研究者、Lean、人工同行评审或全球新颖性认证。

旧原ZIP和原文本未修改。新代码、推导、证据均在独立目录，未进行GitHub写入或部署。
