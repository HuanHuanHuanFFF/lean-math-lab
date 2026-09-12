# 冻结来源与恢复映射

## 本轮输入

| 来源 | SHA256 | 大小 |
|---|---|---:|
| A原包 B699-R12-to-R9-three-index-closure-evidence-20260911(1).zip | 60c22dc77ed5d59251c39461a75d9a1467aa357f27fba009d82ccf0b6271cfab | 147102843 |
| B原包 B699-R12-ProB-joint-interface-evidence(1).zip | 7b3a8607543ab3ca315590579a6784d58475ce7cd7ef97bd62e888a79f59b094 | 39880340 |
| 两包共同采用的R12上下文 | ff40cf6a2e5487819afa55ddc2616ac3fc106455a75ea8ae147244faa1d73262 | 39610422 |

原A外层目录B699-R12-to-R9-three-index-closure-20260911被移除一层，成员在sources/pro-a；B原根成员在sources/pro-b。两包嵌套的同一历史ZIP存为shared/B699-R12-dispatch-context.zip；prepare_context.py可在新的目的目录补回各自原相对位置。各成员保持原字节，映射和哈希在PACKET_SOURCES.json；此文件是数据索引，不必全量输出到会话。

用户上传的两个原外层ZIP未被改写，本共用包不包含它们外层的重复编码。需要原外层ZIP精确字节时使用用户原附件；复用推导及运行原包代码所需的全部成员均在本包。

## 整体证明背景

固定仓库：HuanHuanHuanFFF/lean-math-lab。
固定参考提交：9d4228e3ed0de4bb6b8e555ca59af3f53d578c67。
18份原始文本按global/repository/<仓库原路径>存放，来自GitHub文件接口；GLOBAL_SOURCES.json记录每份的仓库路径、固定提交、blob SHA与SHA256。本次仅核对传输字节，没有技术审读或新增数学验收。

本包没有实时同步huan或当前main，不假定网页会话可访问私有仓库。冻结材料足够按任务启动；采用未打包的外部引用时，由研究者读取并核对原始来源。

## 证据解释

A/B原报告中的重现成功、坏证书拒绝、出版输入核对等均是其作者交付记录；新的独立接收尚未进行。包装检查只证明文件和入口可恢复，不提升数学证据等级。前沿、分工与待核验状态以本包CURRENT_STATE.md为准。
