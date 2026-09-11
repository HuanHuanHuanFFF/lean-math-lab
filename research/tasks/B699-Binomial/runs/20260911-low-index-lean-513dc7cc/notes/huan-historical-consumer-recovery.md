# 历史原题消费者封装复验

目的：取得29/35/36/37本机对象，参与最终统一A151原题消费；四项原历史验收仍各只计一次，没有新增数学成果。原件、v1/v2候选和每次失败日志都保留。

- v2 Row029H32/M2048：共享Layer000源真实通过；大合并Block000在后续decide发生memory_exception。
- v2 Row029H16/M1536：同一Layer000的decide未归约且产生sorryAx，验收器拒绝。不能把该未完成实例当作有效证明或已有结果的反例。
- v2 Row029H8/M2048：真实编译发现Row029Data的声明被Block000和外部Layer000的原导入重复加入。v2只做共享声明直接交集，未覆盖这一传递导入，因此旧静态检查不足以担保合并可消费。
- v3：保留v2并新增外部项目导入闭包扫描，29的Row029Data从私有合并集合排除；35/36/37无此冲突。原数学源均不变。新目录用J8/J32，与旧H目录分离，验收由实际Lean决定。扫描是现有单行import风格的候选预检，不代替Lean解析/编译。

详情：experiments/huan-historical-bundles-5e2d13bb/v3-import-closure/audit.json 与 verification/huan-prerequisites/historical-bundles-integrated-v3.json。当前四项新封装尚未接受；统一A消费者也尚未接受。
