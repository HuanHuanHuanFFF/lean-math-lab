# 来源与采用边界

本轮按Pro D继续，不接管NC3。没有把历史Pro B误派任务授权恢复为当前权限。

## 实际取得的原件

从本会话挂载文件读取：

1. B699-ProD-center-residual-cubic-20260916.zip及对应REPORT/PROOFS/SOURCE/HANDOFF。
2. B699-ProD-residual-splitting-20260916.zip及对应文本。

两包原ZIP和8份文本按原字节保存于sources；大小和SHA256见sources/SOURCE_MAP.json。本轮只核对这些字节，没有执行旧replay或重放其数学全链。

## 数学采用分层

- **新四次式、格点、原点g³、严格上界、新R线性整除和放大不等式：** 本轮自含初等重证，不调用旧单位窗口、NC3、LCM或出版高度。
- **i5无近侧组的g≤2尾部：** center-residual-cubic/PROOFS.md §5的两种纯幂行完整闭合；它继承正确目标5的QIG原文，并由上一轮LTE、指数停止和41行/12CRT末端完成。其作者纸面＋确定性证书等级不升级。
- **q4至少三个底数：** 另外采用residual-splitting的e4>1和center-residual-cubic的M4>1；原生i6采用后者§6自己的端点/中心结论。近侧非空是本轮新增，另外两组不是。
- **两底t ⇒ q2全居中心：** 采用residual-splitting §5.1及center-residual-cubic §6.2、§7按各目标的完整来源规则。
- **可选去掉q2>1：** 本轮通过GitHub连接器只读复核固定提交67b494c841d41a70b7e209940be417637a59a235的reviews/main/05-unit-window-acceptance.md。GitHub返回blob SHA为187bf8c33319aa0284a29fcf00a5fddad5d2d504。原单位窗口使用Bugeaud两对数、LTE、整数格和完备有限末端；本轮未重新阅读并验收其全部下游文件。该项为已有接收合同的合并，不标为本轮自含结果。sources/UNIT_WINDOW_CONTRACT.json是派生合同，不是假称原字节文件。

没有取得或假定采用本轮A/B的新结果。没有自动把i5、i7、i8之间的NC假设替换。

## 外部基础核对

只读核对mathlib官方文档的Legendre/Kummer公式：
https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Factorization.html

本轮在证明中从阶乘计数重写所需公式。这只是基础核对，不是Lean验收。未下载或分析PDF；未新增出版定理输入。只有上一段可选单位窗口合同保留原有较深出版依赖。

## 执行与验证

生成器使用环境已有SymPy；独立新检查器仅用Python标准库，不导入生成器。回归和损坏测试只检验各自有限域，不能冒充无限论证的内核验收。两套程序均为同作者代码，没有外部人工审稿。

新包包含本轮全部推导、代数证书、生成/检查/消费代码、回归和坏证据记录、原字节父包。旧单位窗口完整仓库链没有打包或重跑；仅可选合同对此依赖，主N5/N6/THREE正向链的父包均已包含。

无git写入、推送、合并、Lean运行或其他会话启动。新工作文件与证据位于/mnt/data的独立目录，不修改本机仓库。
