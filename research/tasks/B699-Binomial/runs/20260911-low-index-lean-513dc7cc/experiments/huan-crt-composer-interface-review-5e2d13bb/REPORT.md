# 24张CRT完整表的组合层审查

未发现结构性拼接、范围或接口问题；不新增替代Lean源码。24个CompleteComposer均复用chunk_check，通过已验blockCheck_transfer_data搬到globalData，再由符号参数下的append_rows_named接已验blockCheck_append_rows，最后接rectangleCheck。当前组合模块未由本任务运行Lean，v21实际结果仍由主任务验收。

核对147个真实chunk_check声明、123次追加和246个decide。所有decide都只是计数加法，结果不超过109；没有整块/整表decide，也没有在composer中展开blockCheck、cellCheck或逐值算术。完整范围、每块源SHA与边界在RESULTS.json。

| stage | p2指数上界 | p3 | p5 | p7 | 六表块数 |
|---|---:|---:|---:|---:|---:|
| 0 | 108 | 68 | 46 | 38 | 66 |
| 1 | 60 | 38 | 25 | 21 | 38 |
| 2 | 38 | 24 | 16 | 13 | 23 |
| 3 | 27 | 17 | 11 | 9 | 20 |

首表CrtStage0Pair23使用14块：[1,9)、[9,17)、…、[97,105)、[105,109)，b为1..68，共108×68格。对应global_check起于第224行，通用追加辅助在第364行，rectangle终点在第495行。所有其余末块（含仅1行、3行或6行）均与实际chunk_check的start/count相等。对1139个行标签点作有界分派核对，无缺口或重叠。

globalData在a<1或a>amax时返回outsideCell（inverse0、bounds[0,-1]）；合法a均选择唯一对应chunk。b的域外值交由块函数处理，组合层未承诺统一outsideCell；覆盖声明和六表消费者仅使用b∈1..bmax。全16个metadata cutoff与24个实际amax/bmax逐项一致，因此没有把域外默认值当成已覆盖格。

需要特别区分终点的`unfold rectangleCheck`：CrtGrid/Grid第16-17行的rectangleCheck仅是一层blockCheck别名。固定Lean4.33.1的Elab/Tactic/Unfold第20-21、30-40行转到定向unfold；Meta/Tactic/Unfold第14-36行仅选该声明并使用中性配置，Simp/Types第1008-1015行换目标。此流程没有rw tactic的末尾自动reflexivity尝试。当前终点没有继续展开blockCheck/cellCheck，也没有调用新的数值判定；不将这条正常别名展开列为整表重算证据。

4个I11CRTConsumers.StageXX的24个grid定义及gridXY_pair_check也已核对：尺寸、globalData、StageXX.H/M/upper均匹配，消费者以pairGridCheck_of_parts接cutoff与同一rectangle_check，不重新判断完整表。原题最终接口不在本轮重新审查。

结构API的实际成功回执与当前CrtGrid/Grid字节匹配，见ACCEPTED_API.json。数据块仍须逐块真实验收；存在chunk_check源码不等于已经通过。本审查没有运行Lean、CRT数值、全表检查或修改任何主线文件，也不承诺未测量的编译峰值。若v21终点出现实际资源失败，再根据它落在搬运、追加、别名换目标或导入/内核阶段的具体证据作有界修复。

CHECKS.json为有界结构检查；SOURCE_BINDINGS.json绑定24个composer、147个块接口、4个consumer及固定Core源码等182个来源。首次脚本因repo路径层级守卫提前退出，修正自有脚本后通过，未修改被审源。当前B原题新增0。
