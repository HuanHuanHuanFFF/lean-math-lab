# FiveSeven: 固定实际 G 下界候选

完整候选目标是 `Math.B699.I11DivisorFiveSeven.qContent_lower`：对所有自然数 delta,m，只有 `delta=0 OR delta=1` 和 `m>=149` 两个数学前提，推出

`(1303943/1000000:Q)^(7m) < qContent(7m-delta, 4m+delta-1, 7m-delta)`。

另给出两行单独入口和实际 `bftContent 11 7 m delta` 的相同下界。源码尚未编译，不能记为实际 G 新验收或 B 原题结果。

采用 FINAL_PLAN row04 和 reuse-data 同行，Lt=1303943/1000000，Lm=661613/500000，K=29，loss=11，block=10，固定门槛 `29+10*(11+1)=149`。没有优化参数。

Actual 从已有真实 rationalDivisor 定义证明

`D0(m)=(9m-1)!*(2m-1)! / ((7m)!*(4m-1)!)`，m>=1，D0(1)=4/3。

四个阶乘的实际步长分别 9,2,7,4；所有步长均同时出现在前项改写和 factorial_add_cast 调用中。N/T 的每一因子从源码解析后与原 rough 文件对比，再重新展开。原 rough/middle 证书共25个严格正系数；完整多项式身份成立，源中不是直接假定 step。

共用 Common.sequence_lower 把归一化 F(m)=D0(m)/(Lt^7)^m 的粗步望远镜、固定二进制底部和中段增长接到门槛。该通用工具有显示的步长/底部前提；本组 Threshold 使用 Actual/Bounds/有限有理证书全部内部供给，最终 qContent theorem 不保留这些前提。代码不计算门槛阶乘或巨大 block power 来冒充全 m 证明。

δ1取 u=7m、r=2m-1，调用上一包的精确 Adjacent API，得到 `D1=(7m/2)*D0>=D0`，再分别调用实际 qContent>=D。**不声称 G1>=G0**；u=2,r=0 时两 D 都是1，而 G0=3,G1=1 已构成反例。

独立检查：m=1..6 及 K-1,K,m0-1,m0,m0+1 的实际阶乘比与相邻 D；m=1..4 和 m0 两δ共2231个实际 q_h/D 正整数、G/D 正整数检查；m0 的两行都直接核对 Lt^(7m)<D<=G。m0+1的 D 指数下界也检查过。有限结果不能代替全 m 的 Lean 验收。

按 Actual -> Certificates -> Bounds -> Threshold 分层核验；也可先单独编译共同 Common。每层有 *Audit.lean；本组 Audit.lean 打印37个本组公开根和5个共用根。前置 Adjacent 是上一包冻结候选，未在本任务运行 Lean；准确 SHA 在总 SOURCE_MAP。集成文件映射见 ../INTEGRATION_MAP.json。

| 源 | 实际文件字节 SHA256 |
|---|---|
| Actual.lean | `514b30de185ba874f3bf81264032d4cd0823a441b5b03b8446024d3c1d2c1b8e` |
| Certificates.lean | `fd313d50034509225a1dba987b03869e5de79ecdc8c8b6b58dc5d187f0c9a1b9` |
| Bounds.lean | `d2fbc059792a82d195bf1413cd10fe80516e365b3c307d950f41a51e10051b34` |
| Threshold.lean | `7d1d99d86ac0fd3013476e8ec2137fc3e380ff27aa50a0b2f19199044f4d3e57` |
