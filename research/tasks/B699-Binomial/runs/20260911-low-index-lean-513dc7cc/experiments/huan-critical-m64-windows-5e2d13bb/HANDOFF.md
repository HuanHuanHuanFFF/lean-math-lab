# 用户停止研究后的M64候选交接

封存时间：2026-09-12T11:12:32.859736+00:00。用户要求停止本轮研究、全部push并创建合并PR；发布由主任务统一进行。本子任务只完成现有文件完整性盘点、状态记录和冻结，没有新增证明、数学诊断、Lean或Git调用。

现有20个文件均存在且非空；JSON可读取，14个Lean文件是完整写入的文本。本包5个实现模块为Definitions、Constants、Windows、Actual、Height。28个公开根已有完整typed和非空#print入口；基础22根独立于新高度，另6根补指数上界。源码正确性及实际内核费用均待主任务验收。

已写内容包括三个固定M64参数消费者、实际完整binomial赋值加完整指标赋值窗口、原始n≤64乘完整分量、系数A·p^v_p(i)≤64、不同offset证明、p<q排序与signedGap=b−a和绝对差1..33，以及依赖新高度的完整指数≤15359。三项原题noCommon均在typed中展开为p≥i的gcd素因子存在式，保留p=i边界。

停止前已有的精确诊断保留原样：3个旧M64比较；186个实际定位样本，其中6个p=i；20个大分量窗口和2个双素数窗口样本。83个项目来源闭包的before SHA保存在SOURCE_MAP.json。此次收尾没有重跑这些诊断。

高度依赖现已由主任务验收：verification/huan-prerequisites/critical-height-full-audit.json，对应verification/20260912T110524896829Z/evidence.json，success=true，25个公开根。Final.lean的当前SHA仍为FB5583DB9713DF13CDEB81863E1D1374C50D9B0A9D96E35F1753D89BD3B9CF86。本包Height.lean中的pending注释是生成时状态；当前依赖状态以SOURCE_MAP.json的height_dependency为准。这次高度验收不构成本M64候选的验收。

待做事项：全部28个M64根尚未编译/公理审计；基础窗口桥及新上界层均不能计为新接受结果。没有生成55对证书、运行旧全checker或证明三个完整原题指标。若将来恢复，先验BaseAudit（基础22根），再验HeightAudit/TypedAudit/Audit。此次仅交付快照，不继续排队或执行。

文件清单和逐字节SHA见FREEZE.json。主任务可将本独占目录全部纳入本次推送/PR；候选状态必须随快照保留。
