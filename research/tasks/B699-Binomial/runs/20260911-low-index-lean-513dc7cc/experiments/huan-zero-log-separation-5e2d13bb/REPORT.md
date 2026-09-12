# 旧零边界证书：两条距离分支与两个实际 log 消费者候选

Owner `/root/zero_log_separation`，Astra/max。独占本目录。开始 2026-09-12 10:23:56 UTC，20分钟检查点 10:43:56 UTC；无总时限。本次没有运行 Lean、完整旧 checker、CF 搜索、55对/138545位置扫描、Git、安装或下载。

**交付层次：五个 Lean 源码候选，28 个显式类型检查与传递公理打印根；两条指定旧数据行的精确诊断和静态全根清单通过。尚无本子任务的 Lean 接受。** 真实 log 盒已在源码层接入并行作者的候选接口；它们同样必须经过主任务新验收。当前没有新增完整原题指标，也不作新颖性声明。

## 目标和实际贡献

采用旧 `20260909-low-index-structure-b41a5a63/notes/zero-boundary/check_log_certificate.py`、`verification/20260909T090620Z/certificate.json` 及 `reduction-plan.md` 的真实格式。旧证书基线 `7fd3928656489afe2c80698f0a09d1d933444186`，证书当前 SHA256 `F51D4E1EF908527837BBB9A7620A039C0B264CF9EC2BE66D20618B7E445B4932`，checker SHA256 `25374AD229541F0968C26F64ECBEA21684DADFB6D4E49E29D2500FBA51C5DFFE`。完整输入、候选和外部盒源码快照的 SHA 在 [record.json](record.json)。旧来源文件保持原字节。

预期打通的依赖是：候选新 noCommon 高度给初始有界指数后，旧有限 log 证书需要的初等距离下界。实际输出是这层的可计算 Bool 语义、数学健全性证明候选，以及 A/C=1 和 5 的两个真实小消费者。原始 n,j 的全域前沿尚未因本交付改变。

## 五个文件与验收顺序

| 文件 | 内容 | 依赖与根数 |
|---|---|---|
| [Basic.lean](lean/ZeroBoundaryLogSeparation/Basic.lean) | 区间误差、非共振整数间距、共振分数分离、零首坐标、有符号吸收 | mathlib，10根 |
| [Quotient.lean](lean/ZeroBoundaryLogSeparation/Quotient.lean) | 有符号商盒的四个交叉乘积检查、实数缩放、局部 n<256 | Basic，4根 |
| [PilotData.lean](lean/ZeroBoundaryLogSeparation/PilotData.lean) | 旧两行数据及两个抽象消费者 | Basic，4根 |
| [BoxData.lean](lean/ZeroBoundaryLogSeparation/BoxData.lean) | 原96项 log 定义到50位外包区间的实际有理检查 | Quotient、PilotData、外部 Definitions，3根 |
| [Pilots.lean](lean/ZeroBoundaryLogSeparation/Pilots.lean) | 实际 log2/log3/log5 的距离与严格线性形式下界 | BoxData、外部 Pilots，7根 |

每个 `theorem` 均有完整 `#check (name : type)` 和 `#print axioms name`。静态清单精确核对28项，未发现 placeholder / 新 axiom；静态检查不等于内核检查，尚未获得实际传递公理列表。所有数值根采用 `decide +kernel`，没有 `native_decide` 或外部 oracle。计数仅为验收覆盖清单。

imports 当前使用本工作树真实 experiments 路径，形成可读的源码闭包；建议集成路径为 `lean/ZeroBoundaryLogSeparation`，namespace 已为 `Math.B699.ZeroBoundaryLogSeparation`。主任务若迁移，应统一改写自身和 ZeroBoundaryLogBoxes 依赖路径，并产生新哈希与验收。未修改并行盒作者目录。

## 非共振：任意 y、有符号 x

`approximationCheck` 真实核验 v>0、δ≥0、α盒有序，以及两个端点满足 `−δ≤vαlo−u`、`vαhi−u≤δ`。正的 v 使端点检查覆盖盒中全部实数 α。

`nonresonantCheck M ε d` 核验 ε>0、β盒有序、整数 k、两个有理端点条件

`k+gap≤vβlo`，`vβhi≤k+1−gap`，`Mδ+ε≤gap`。

这直接为每个整数 z 给 `gap≤|vβ−z|`，无需信任 Python 的 floor / nearest-integer 函数。采用 z=yv−xu 和三角不等式，得到

`ε≤v |xα−y+β|`，对所有整数 y 和所有 `|x|≤M` 成立。

这里没有 y 上界，没有 x 正号假设，没有 gcd(u,v)=1，也没有 v>M 或收敛分数身份。四个交叉乘积的 `quotientBoxCheck` 同时支持负的 β 端点；没有用“负数除以正数按正数方式取界”的错误简化。

## 共振：互素、分母、严格端点和零分支

`resonantCheck` 除同一误差检查外，实际核 `Int.gcd u v=1`、`M<v`、`Mδ<1/2`。旧 checker 的 `δ<1/(2M0)` 在 M0>0 时给这个乘法条件；不用 CF 身份。

对任意整数 X,Y，`|X|≤M` 且 `(X,Y)≠(0,0)`，互素性与 v>M 迫使 `uX−vY≠0`。否则 v|X，若 X≠0 则 v≤|X|；若 X=0 则 vY=0 又给 Y=0。非零整数的绝对值至少为1，再减去严格小于1/2的误差，得到

`1/2 < v |Xα−Y|`。

`resonant_shift_sound` 从 β=rα+s 得准确吸收 X=x+r、Y=y−s。它用原线性式非零排除真正的零对，绝不假装正原指数能排除吸收后的 X=0。Y 完全不需要另加界。

零首坐标另有更强根：X=0、Y≠0 时 `1≤|Xα−Y|`。若原窗口另供 `|L|<128/n`，且 log q>1/2，则 `zero_first_coordinate_small_n` 给 n<256。因此它位于既有 n≤4096 的小分支。若 X=Y=0，L=0；后续原窗口桥必须使用两正量不等/非零位移来排除，当前没有新证明该原窗口桥。

严格端点被保留：非共振的 ε 下界可以弱，但乘以 log q>1/2 后最终下界严格；共振检查必须有 Mδ<1/2，不能替换为≤。

## M0 与实际两个样本

`M0 := 2^53 = 9007199254740992`，没有改成2^52。候选新高度若给 n<2^15360，则完整定位指数应≤15359；正负偏移最多6，所以吸收后绝对值≤15365，仍在原预算内。`new_height_shift_fits_old_budget` 仅证明这一步整数记账，不证明初始高度。Y=y−s 可应用同一引理于 r=−s，使用 |−s|=|s|。

只读取旧 (p,q)=(2,3) 对的两个系数位置 A/C=1 和5，均使用实际候选索引1：

`u=6234549927241963`，`v=9881527843552324`。

A/C=1 在旧 assignments 中为−1，属于共振；A/C=5 的旧 assignments 为1。α与β盒由旧精确有理盒向外取整到50位；源码再用原96项定义对这两个盒作真实四交叉乘积检查。采用较简单的安全裕量

`δ=1/200000000000000000`，`gap=31/100`，`ε=1/100`，`k=14476176635041074`。

两条实际 pilot 源码分别给：

- 全部 `|x|≤M0`、全部整数 y：`1/(200v) < |log5+x log2−y log3|`；
- 全部 `|x|≤M0`、全部整数 y、(x,y)非零：`1/(4v) < |x log2−y log3|`。

α=log2/log3、β=log5/log3 的真实盒依赖外部 `log_two_bounds/log_three_bounds/log_five_bounds` 候选。这里是完整小消费者源码，没有把实数 log 盒留作最终消费者的假设；整个闭包仍待 Lean 验收。

## 实际诊断、失败与交接

执行命令为 `C:/Python314/python.exe -B <本目录>/diagnose.py`。最后 exit0，有理诊断与静态扫描耗时约0.034秒；研究协调时间不算进该计算耗时。只计算两个旧系数行和三个小型必要条件反例，没有运行完整 checker。

第一次试写 gap=49/100 过大，精确检查拒绝；δ=1/40000000000000000 本身有效。修订为将真实δ向上取整到10^−18、真实gap向下取整到10^−2，得到上述 δ 与31/100。失败和修订原因保存在 record.json。

另精确核对三个反例：去掉 gcd 可取 u/v=2/4、M=2、α=1/2、X=2,Y=1；去掉 v>M 可取 u/v=1/2、M=2 的同一零组合；将严格误差改成弱端点可取 u/v=1/3、M=1、α=1/6、X=1,Y=0，此时 v|Xα−Y|=1/2。它们说明这些共振假设不能从该统一引理中直接删除，未声称每个不满足检查的数据都失败。

最后可复用结果是两条结构性距离证明和28根源码候选；未知是新源码的实际 Lean elaboration / 内核成本，尚无失败编译可诊断。建议主任务先串行验收 Basic、Quotient、PilotData；这些不需要等待实数 log 盒。再验 BoxData 的三个有限根和 Pilots 全部根。96项比较若因资源失败，应按根拆分、保留同一精确声明，不能据静态检查记为通过。

后续完整原题仍需：新高度接受；完整素数幂定位与非零窗口/log桥；55对和2519比的全覆盖数据；完整终端候选恢复及原题消费者。两pilot只验证接口，不能替代138545位置的全表覆盖。