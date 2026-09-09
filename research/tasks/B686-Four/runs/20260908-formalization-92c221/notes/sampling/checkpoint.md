# 素数采样项目侧组装

主线程负责 lean/sampling、notes/sampling 及对应验证。采用基线08a8ac6之 reflected-sum/main/prime-synchronization-theorem.md 全文；原题参数不缩小。

HeightAssembly.lean 从旧批次已验证原题误差下界 k/(160 log(4k))，归一成 k/(320 log(2k))；对固定函数误差 C·2k/log²(2k) 选择与 n,m 无关的 K，推出报告高度结论。该上界只定义为未证明的 FixedTestSamplingEstimate，绝非新增公理，完整F686-07仍开放。

剩余外部义务：MRSTT精确 j=1 定理、周期 C³ 范数及固定函数应用。剩余项目步骤：有限多项式高度原解与2/3+η逆高度推论，最终fresh依赖闭包/公理guard。

首轮定向失败只因实数k下界未传入linarith；补入原有hk的显式cast后第二轮成功。失败日志与最终fresh证据分别保留，不作为数学否证。
