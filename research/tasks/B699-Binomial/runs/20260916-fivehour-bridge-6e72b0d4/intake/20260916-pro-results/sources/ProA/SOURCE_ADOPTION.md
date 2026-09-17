# 实际输入、采用与证据等级

Run `A-I9-H013-RESULTANT-20260916`。本轮用户新上传 `OVERVIEW202-9-16-02.md`；沿用本页已挂载的最新 A 圆分/相邻因子 ZIP。没有等待 B/D 新结果，没有启动其他会话，没有写入或发布仓库。

## 1. 原件与恢复

* 原始总览：`sources/OVERVIEW-input.md`，保留原字节；更新稿另存 `OVERVIEW.md`。
* A 原 ZIP：`inputs/A-cyclotomic-adjacent-original.zip`，原名 `B699-ProA-i9-cyclotomic-adjacent-evidence-20260915.zip`，56,073,054字节，SHA256 `52ef6d7d66e1395cd1413a34169fc9aa6be9d820dc5d75ff6b44c92857a71235`。按原字节只存一次。
* `sources/ADOPTED_MEMBERS.json` 记录9个选读成员在该原ZIP中的精确路径、大小与哈希。证明、报告、HANDOFF、SESSION_STATE及失败边界均已实际读取。原件没有改写。

通过GitHub只读连接查看固定提交 `a7468a887224e35906d8486bd18d21d0e8368393` 的 H023 PROOFS 与 experiments/h023 目录。其“形式核存在、合法零点仍缺”用于比较路线；没有采用i7的H023高度或证书，没有把NC7输入跨成NC9。未建立本地仓库工作树，未取用该目录的巨大原子池，未写仓库。

## 2. 依赖分层

| 新结论 | 实际数学依赖 |
|---|---|
| H：NC9且H013 ⇒ n<2^6400000 | 本轮自包含完整粗幂整除、整数Taylor矩阵、两个整数左关系、非零模素数子式、伴随矩阵与Sylvester整数恒等式。无历史finite、cubic、PC或content前置 |
| C：H013的全部合法j闭合 | H＋冻结A9-FINITE＋A9-SCALAR＋A14-CUBIC-BLOCKS局部整数契约。一般H013允许互补的六对小素数；双高幂应用只需3/7这一对 |
| D：删除整个α=3·2^a5^b族，58→57 | C＋冻结T2的族/位置分类。分类继承原PC/content等等级；不称为本轮独立接受 |
| 所有1200倍数的整行 | C＋最新A对所有400倍数的四位置R接口。该额外推论继承PC/P/QX依赖，不与C的较短链混同 |

冻结契约的明确来源：

1. `sources/QUADRATIC_PROOFS.md` §1.1–1.2：A9-FINITE、A9-SCALAR及A14-CUBIC-BLOCKS精确量词；开头T2是双高幂的剩余位置。
2. `sources/previous_sources_A9_FINITE.md`：有限末端的原作者推导。只采用全体合法n<2^4096，无本轮重放。
3. `sources/previous_notes_PROOFS.md` §§2–3：标量/立方入口；只需其中明确契约。
4. `sources/A_previous_notes_PROOFS.md` §4.1：所有400倍数NC9的四位置，不只是带α前提的子族。

局部立方契约并不包含NC14：不同p,q∈{2,3,5,7,11,13}，0≤h,k≤13，n−h=p^aA、n−k=q^bB、A³≤216(n−h)、B³≤216(n−k)时，n<2^14000001推出n<2^169。没有由“i14已闭合”直接推出i9。

## 3. 外部背景与执行边界

仅重新查看Granville作者页面对Kummer逐素数进位的陈述：
`https://www.cecm.sfu.ca/organics/papers/granville/paper/binomial/html/node2.html`。
核心所需的完全素数幂余数条件在PROOFS §1重新证明，不增加深层出版假设。本轮没有读取/分析PDF，没有新的PDF归档主张。

没有重跑旧content、A14局部大整数块、C31或A9有限末端。输入/成员哈希检验只是来源检查，不是数学独立审读。没有Lean验收，没有外部独立全篇数学接受。

新接收器用Python整数及NumPy的有界int64模运算，不用浮点数学判定。发现器和接收器是同一作者的分开实现；额外直接U,V展开只是第二实现复核，不冒称另一研究者审读。
