# 2–5 差值 33 的实际边

负责人：`/root/two_five_gap33`。独占本实验目录；不修改已接受源码、排队源码、共享记录或 Git，不运行 Lean。开始于 2026-09-12 09:09:07 UTC，20 分钟检查点为 09:29:07 UTC；无总时限。

目标：在 Y≥2^15359、C≥1、Y≤2^e A、Y≤5^f C≤2Y 和整数绝对差≤33 下，得到 Y^10≤A^1000 或 Y^10≤C^1000。更强的 248/252 版本先行，10/10 由幂单调包装。

采用当前已接受的 I11TwoFiveFinal/ActualInstance、实际 c5d4,z=3/128 四棵 Q/E 树、两个 row 自己的真实 qContent/G、选择器和一般整数间隙工具。来源基线由实际收据中的 source_commit 和 SOURCE_MAP.json 记录，不运行 Git。旧文件头中的历史 UNCOMPILED 注释不替代当前收据。

预期杠杆：主任务提供的三个临界三窗口指标 i=28、31、34 已有结构连接；此 10/10 弱边若验收，能解锁这些指标的无界高度排除。有限压缩、CRT、终端原题入口仍须另行完成；本包不声称完成任何原 B 指标，也不声称新颖性。

## 路线与严格余量

先核对原证明再改预算。旧 Q 条件为 R^m>48，给 2·24·|Q|<128^(5m)。旧 E 条件保持 2·|E|·V<128^(5m)。已接受 RateBasis 实际给 R≥1 和 R^32≥2，因此 R^224≥128。原选择器保证 m≥329，故 R^m≥128>66，足够推出新的 2·33·|Q|<128^(5m)。不提高 Y 门槛，不改 m、Z、四树、G、选择器数值或 cofactor 权重。

一般 actual_bft_integer_gap 的 D 是任意整数参数；新整数下界将其设为 33，并显式重建同一 128^(5m)、125^(5m) 的真实抽取恒等式。原 E 严格上界直接复用。原 248/252 的双小 cofactor 反证继续抽取同一个 m；新 Q 与原 E 的二倍半间隙之和排除整数下界。

## 状态与下一步

完整候选证明文本现已齐备；静态和精确小数值检查通过，尚未运行 Lean。所有验收须由主任务串行执行，并核对明确的类型根、传递公理和冻结源码哈希。下一检查是 RateAudit，再 GapAudit、EdgeAudit、TypedAudit、Audit。建议集成目录 lean/TwoFiveGap33，namespace Math.B699.TwoFiveGap33。

## 交付与核查结果

- 三个实现模块：Rate、Gap、Edge；共 8 条公开定理。
- 三个逐层公理根：RateAudit、GapAudit、EdgeAudit；TypedAudit 明确核对全部 8 个类型；Audit 汇总 8 个传递公理根。
- SOURCE_MAP.json 将当前 55 个上游源码逐项绑定到已成功的 actual-instance 证据；对应成功日志也逐项重新算哈希。工具链与依赖 pins 有源哈希。编译对象字节复验留给主任务串行验收，不把日志哈希检查冒充新内核验收。
- exact-checks.json 从实际 contentBase、beta、qLambda 独立重算 R=N/D，核对旧 R^32≥2 证书、224≤329、66<128，并检查 160 项含抽取边界的幂恒等式。最大中间整数 5626 位；没有计算最终高度大幂。
- 公理日志检查器拒绝缺根、重复根、sorryAx、自定义公理及编译错误。实际新 Lean 日志仍不存在。

本包直接重新实例化一般实际整数间隙 D=33；没有假设已有 gap33，也没有把新 hgap 强行转换为旧 gap24。旧 final 边仅作为上游导入的一部分存在，新的最终证明调用新的整数下界和新 Q 预算。E 分量、四棵树、G 和选择器数据均不修改。

主任务的结构连接见相邻实验 huan-critical-height-three-indices-5e2d13bb/route.json。此次使用当前已接受的实际 2/5 边，是相对旧 M=1 证书失败的改变前提；没有采用未 Lean 化的 Matveev 输入。若本包及结构连接验收，预期把 i=28、31、34 的无界 n 尾段缩至 n<2^15360。实际目前只是候选与有限诊断，新增完整 B 原题结果仍为 0。

首次静态检查前修正了检查脚本的 Path.parents 根层级；Lean 候选未因此改动。默认执行环境的 helper 初始化错误用窄范围只读/本目录写入执行解决；未改变权限配置。

## 重现与集成

在工作树根运行 Python314 -B 和本目录 check_candidate.py：冻前生成检查文件，冻结后只读复核全部冻结文件及上游绑定。加 --log <Audit 日志> 可核对统一 8 根公理；它不代替主验证器对进程退出和对象字节的核查。加 --freeze 是本包一次性冻结动作，已有 FREEZE 时只做完整性复验。

建议把 8 个 Lean 文件原样映射到 lean/TwoFiveGap33，仅将本包相互导入前缀从 experiments.«huan-two-five-gap33-5e2d13bb» 改为 lean.TwoFiveGap33。SOURCE_MAP.json 给出每个目标路径。命名空间和所有声明保持不变；旧 accepted 链不需改动。验收顺序 RateAudit → GapAudit → EdgeAudit → TypedAudit → Audit，主任务继续独占重 Lean。