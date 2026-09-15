# 来源绑定、重复覆盖与出版依赖

## 1. 实际输入

实际主输入为B699-ProD-position-descent-20260915.zip；原字节ZIP、REPORT、HANDOFF、SOURCE_ADOPTION、失败记录及完整证明在sources/position与sources/archives。读取次序符合本轮接续；没有取得此前指定B699-ABD-next-round-20260915-v1.zip，没有假定读到最新A/B。上一轮缺失指定v3的事实保持原样。

为审计本轮的新颖边界，另从实际挂载的B699-ProD-quartic-gap-shifted-smooth-20260914.zip恢复冻结B699-ProD-R7-transfer-verified-results-20260913.zip及相应原文。父包哈希、内部成员、保存路径逐一写在sources/SOURCE_MAP.json。父包未重跑；恢复的旧ZIP也不在新接收程序中执行。

TW、quartic、even-gap的实际挂载证明文本另以原字节保存，只用于核对已命名旧消费者的范围和有限差集。正向LCM定理不以它们的接受为前提。

## 2. 准确采用关系

|来源|采用内容|本轮等级及用途|
|---|---|---|
|旧D-transfer §1—3|α整除目标、完整幂无进位、自由位置FP、固定α有限化|原理继承；本文重证所需初等部分，不能计为新发明|
|旧D-transfer §4、§7|α≤9、目标ROW9/ROW-H|范围与重复覆盖审计；未重放旧证书；不是新LCM正向依赖|
|上一轮position|H125/H134等八类高度、已闭合位置并集、失败模型|准确前沿；本轮两项新增、两项恢复旧覆盖|
|TW／quartic／even-gap原文|目标阈值、完整幂端点及旧整行标量|仅有限比较，不借用它们证明新定理|
|本轮|剥低素数后的共同NORM、LCM全域排空、保留高幂必要条件|新作者纸面＋确定性完备证书|

H123、H124不是本轮新增数学：它们已分别迫使α|6、α|4，直接落在旧A9。H125、H134的α|10、α|12需本轮新增域补齐。新LCM域与旧α≤9不包含，尤其i8的α9需继续保留旧证书。

## 3. 出版与外部检索

新正向链只用阶乘估值、完整素数幂、整数互素消去、抽屉原理、有限除子枚举。所有这些所需论证在notes/PROOFS中重写；没有调用BEG、BFT、Dusart、Padé或NC3专用结论。

mathlib官方文档Mathlib.Data.Nat.Choose.Factorization中Legendre/Kummer条目用于核对背景公式：
https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Factorization.html

这不是本轮Lean验收，不形成新定理的出版黑箱。首批宽泛公开搜索未找到可直接采用的新增结果，没有将那些搜索摘要作为输入。未分析新PDF，也没有编造PDF原字节或哈希。

## 4. 接受与未接受

本轮实际运行生成器、不同实现的主接收器、不同完整归约的全位置检查器、真实二项式回归和35类损坏测试。不同程序来自同一会话作者，不等于外部独立数学审读。有限域完整性由本文证明；有限程序不代替无限推导。

旧ZIP复制保存并核对哈希，不表示旧全链重新接受。未Lean、未公理审计、未人工审稿。未读取、提交、推送、合并或发布工作仓库；未启动其他会话。全部新文件在/mnt/data独立研究目录生成。
