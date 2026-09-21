# 来源与采用边界

## 1. 当前冻结前置

本轮接续 `B699-ProA-TRACE-B28-H127-20260921-evidence.zip`，SHA-256：
`239b293e2de9b9b762acaa32b8c1966b1886f6be533c82f94944bb0e996825fa`。
读取原 REPORT、PROOFS、HANDOFF、来源清单、枚举器、代数工具和账本。本包只保留最终接收必需的小型输入，
不复制旧大证据；原始成员路径、字节长度与实际 SHA-256 见 SOURCE_MANIFEST.json。

采用但没有在本轮重放整条历史证明链：同一个 K152 G、完整原题回传和 n≥2^14000001；低次/z14消费者；
SAT≤24；S3/S4/S5、q13..15 LOC；B22完整分类及其特殊成员原题消费者；GAMMA5、TAIL567；FULL-EDGE10的正E分支≤9。
它们仍是冻结作者纸面/证书前置，不自动成为独立全链数学核验。

本轮重新生成全部2035个状态，用真实B22/S/L缺重和特化余根重算TRACE，加入新几何定理并排空1540个E0十分量状态。
`sources/prior_h127_states.json`只服务发现阶段的比较，不是最终程序的状态预筛。
继承的仓库固定提交、SHA元数据用于定位旧来源；本轮没有新读写仓库或推送。

## 2. 本轮新增与复用代码

`algebra.py`源自上一包；`source_model.py`从旧账本隔离原源状态及特殊签名/TRACE/便宜上界接口。
`triple.cpp`复用旧完整普通重数枚举框架，改为q4/5、三缺重、前四行饱和与三处κ全0。
第二素数/行顺序重放属于同会话交叉测试；Fraction重新构造全部相容空间。

高次发现器按M2筛根、全局单项式构造jet并记录主元；最终接收按E2筛根、局部卷积重建选定子式、逆向选择主元。
账本第二递推保留全部440原始签名，而主递推保留118个支配极小签名；67个主排除查询全部相符。
这些是不同公式/顺序的实现交叉检查，不是外部独立作者、同行评审或Lean。

## 3. 出版输入

Cogolludo-Agustín、Martín-Morales、Ortigas-Galindo，
*Local invariants on quotient singularities and a genus formula for weighted plane curves*，arXiv:1206.1889v1。
采用引言公式(1)、定义5.1、定理5.6。定位：`https://arxiv.org/abs/1206.1889`。
本轮读取web返回的PDF解析正文。截图工具后端报错；下载原字节亦未成功，故没有PDF哈希或成功截图。
论文没有整份装入证据包。新的对角吹起应用及绝对不可约归约在PROOFS §2独立展开。

## 4. 运行与字节口径

`verification/author/receipt.json`保留第一轮完整主接收原件；随后新增显式九分量边界验证，
补充收据为`final_author_receipt.json`，没有篡改原收据使其看似包含当时未执行的检查。
最终干净解压重放统一执行几何、账本、九分量边界与负面测试；包外CLEAN_REPLAY_RECEIPT记录实际退出码和输出一致性。
发现阶段冗余根门/主元文件及编译二进制不重复入包；映射和哈希见OMITTED_REBUILDABLES.json。
