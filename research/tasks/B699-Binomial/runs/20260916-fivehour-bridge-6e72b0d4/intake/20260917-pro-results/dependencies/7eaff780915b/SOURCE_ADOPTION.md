# 来源采用与证据分层

## 实际输入

本轮实际取用当前会话上一轮上传的 `B699-ProE-three-allocations-20260916.zip`，不是从文件名推断已经拿到其他会话最新成果。原包SHA256：

`9d40a01c80ff1da846bc0485ffc3d95d21b9f415fc0b8a52abcc7e81b99dceb8`

未刷新用户所列GitHub分支，也未继承其中仍在运行的任务或授权。前轮所记远端SHA只是历史导航，不登记为本轮再次核验。

## 原字节对应

以下每个本地源文件已实际与上一轮ZIP成员逐字节哈希对应；机器清单见 `verification/SOURCE_BYTES.json`。

|本包保存路径|原ZIP成员|SHA256|
|---|---|---|
|`sources/previous-OVERVIEW.md`|`OVERVIEW.md`|`39fafa6e1761cef8226917b1b56effe6802389746360573550ee1da297293a5b`|
|`sources/previous-PROOFS.md`|`PROOFS.md`|`7339b5375599f2f4342be38e735d6e76b3a67a6e66b2f7a1c9d375544b50461b`|
|`sources/published_E19.json`|`sources/published_E19.json`|`d12b0a05d938fa7e23f3ba53dff5aa4743cef0ef7a80bb4448b967403c92e794`|
|`sources/quotient_100000.json`|`sources/quotient_100000.json`|`96234154106913298443741d47ef4c8fa7536dd9977a6b258b38356cad0a113c`|
|`sources/squareclass-PROOFS.md`|`sources/previous-PROOFS.md`|`45844c28ad4a0d228e633e59d3cb6e04e6bc1c5d5283532e083c7f2fd54c3905`|
|`sources/two-block-PROOFS.md`|`sources/two-block-PROOFS.md`|`4082934d914858eb7c578c4e50fff0a09e06044e7502ac1e7a52c1c0fbb9a88d`|

## 真正用于本轮VG8的数学依赖

采用并在新 PROOFS.md §1 重建：`sources/two-block-PROOFS.md` §§1–2 的完整进位、孤立3、分母形状和ROW乘积恒等式；`sources/previous-PROOFS.md` §1–3 的规范H/C与补商记号。

符号映射必须注意：旧 two-block 文稿 §2 把中间块叫 C、端部积叫 H；本轮与上一轮一致，**中间块叫 H、端部积叫 C**。旧 R0 对应本轮 u，旧 U 对应本轮 z。恒等式相同，不能仅按字母替换而遗漏这次交换。

VG8不采用上轮THREE的完整缺位分类，不采用出版椭圆整数点分类，不采用旧t≤100000排空，不采用平方类全闭合。`published_E19.json`、`quotient_100000.json`和旧总览仅为背景/可接续来源保留；未重跑和升级其证据等级。

## 新建部分

新贡献是r≤8的奇部消去、完整有限系数集、37组三次方程的全指数模周期证书、e=0,1全部小端点及原题消费者VG8。代码两种实现均由本会话作者编写，不能称为独立数学同行审读。

本轮没有Lean编译、公理审计、Git提交/推送、PR或发布；没有全历史覆盖差集审计、没有文献首创性结论。一般i3和ω(t)=2仍未闭合。
