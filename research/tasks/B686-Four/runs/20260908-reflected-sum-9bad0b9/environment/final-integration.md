# 2026-09-08 最后有界整合验收

环境辅助线于01:24 UTC接到主任务的三根验收要求，01:26:23—01:26:37完成首轮实际执行。主任务随后冻结第四根SumCofactorBounds；四根组于01:30:56—01:31:15全部实际重编通过。01:36主任务仅修正Cofactor一处docstring量词，最新Cofactor源码于01:38:48定点复验通过；其余三根保留01:31的原SHA和执行时间。此次修订要求01:43前再冻结，整轮02:00 UTC截止不变。本记录只报告已有源码的独立编译和证据边界；可见写集为`environment/final-integration/*`与本文件，编译输出在忽略的`.lake/round9-final-integration/`。

## 固定基线与复验范围

- 实际本地HEAD：`a552887848d751468ffb9e523904c281042fe652`。
- 实际HEAD tree：`d3249bcb06631c860eb3fe23b9e2eccbf505716c`。这是提交树；当前新研究源码按工作树SHA另记，不把它们误称为已经提交。
- 实际Lean：`4.33.1`，commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`。
- 实际Lake：`5.0.0-src+819816b (Lean version 4.33.1)`。
- mathlib实际及锁定commit均为`0df444a360eaa60ab8c11dca51a86af692955474`；全部9个package实际HEAD与manifest逐一一致。
- 固定pins、仓库脚本、原14根verifier和恢复目录SHA清单的前后SHA均一致。

旧14根与2旧依赖、此前恢复后的Geometry与PrimeReflectedSum继续保留各自历史记录；**最终组单列Acore、Sprimepower、Bnorm、Cofactor四根，不改原验收集合**。没有下载cache、更新依赖、构建整个库、修改数学源码、改main/CI/README或进行Git写操作。

## 实际命令与结果

可复验入口从任意cwd按绝对路径定位仓库；以下命令在仓库根执行：

```sh
python3 research/tasks/B686-Four/round9/environment/final-integration/verify.py
```

记录器按顺序检查A高分支接口、主任务prime-power消费根、B条件界及主任务Cofactor根。每根先在忽略目录中的单文件副本上执行现有`python3 scripts/check-lean-policy.py --roots <policy-dir>`，再使用固定wrapper运行`bash scripts/lean-work.sh lake env lean -o <fresh-output> <source>`。源码policy屏蔽注释/字符串并拒绝`sorry/admit/sorryAx/native_decide`及源码`axiom/constant`声明。guards计数固定为5、5、11、4；计数或源码SHA变化会失败，不自动调整为新期望。

独立输出前缀：

```text
/workspace/scratch/0d28e8b53182/lean-math-lab/.lake/round9-final-integration/20260908T013056Z/olean
```

以下表格保留01:30—01:31整组运行的原始时间；其中Cofactor对应旧`77b6…`源码，其当前文案修订另在下节记录。

| 新检查根 | 定位 | Lean实际UTC区间 | 编译秒数 | policy / Lean退出码 | guards |
| --- | --- | --- | ---: | --- | ---: |
| a/ReflectedPrimePower.lean | 原题高分支接触接口 | 01:30:56.950865—01:31:00.640150 | 3.689 | 0 / 0 | 5 |
| main/SumPrimePowerExclusion.lean | 完整原题prime-power子族排除 | 01:31:00.676212—01:31:03.653272 | 2.977 | 0 / 0 | 5 |
| b/SumTwoPositionGap.lean | 带完整分组/平方接触条件的两位置界 | 01:31:03.724376—01:31:10.366261 | 6.642 | 0 / 0 | 11 |
| main/SumCofactorBounds.lean | 原题完整余因子的长度/高度界 | 01:31:10.403478—01:31:15.599355 | 5.196 | 0 / 0 | 4 |

外层记录器**exit 0**，01:31:15.606766 UTC结束。四根均无编译输出或warning；全新路径确实生成了各自olean，Sprimepower根导入本次编译的A输出，Cofactor根再导入本次Sprimepower输出。25项`#guard_msgs`的真实公理输出期望均被Lean接受；B的`exists_norm_of_square_contacts`只使用`propext`，其余被守卫项目的期望为`propext, Classical.choice, Quot.sound`。四根与所有复用项目依赖的源码SHA在整次运行前后相同。

完整命令argv、cwd、版本、起止时间、退出码、imports、guard名称、源码/olean SHA见[最终四根证据JSON](final-integration/20260908T013056Z/evidence.json)。同目录分别保留每根的`*-policy.log`和`*-compile.log`原始输出，空编译日志表示实际Lean没有输出，不表示未执行。此前[三根实际记录](final-integration/20260908T012623Z/evidence.json)、当时入口副本及01:29交付记录/清单均另行保留，不覆盖原始日志。

## 01:36 docstring修订的定点复验

主任务采纳A的量词文案意见，修改`original_sum_cofactor_bounds`之前的docstring：原先“All parameters”改为固定B约束原题变量`k,n,m,S`；若辅助素数`p`不整除S，p本身并不受此界限制。定理声明、证明及4项guards均未修改。

检查器读取01:30保留的原源码副本，先确认其SHA为`77b6a20c300d0b3332bff7d1cba0f95132e10eccc6e7c8b5b0e598472f0a064c`，再确认当前SHA为`8126290dcd084ea05aa27f602674a5fdf220012dce469e008b47974ee28e8fa5`。从两份文本中移除这一指定docstring后，剩余源码逐字节相同，见[实际注释diff](final-integration/20260908T013842Z-cofactor-docstring/docstring.diff)。新入口中的固定SHA期望附有此次注释修改说明，不把旧SHA当作当前源码。

本次定点入口（仓库根cwd）：

```sh
python3 research/tasks/B686-Four/round9/environment/final-integration/check-cofactor-docstring.py
```

实际源码policy **exit 0**；固定Lean 4.33.1编译于**01:38:42.488763—01:38:48.673870 UTC**执行，耗时**6.185秒**，**exit 0**，4个guards通过，无输出或warning。外层记录器也exit 0。新olean SHA256为`80e33434e065ef9d8636892043f002238b7ef320f58bf358dec04a9706b2bf76`，输出在新忽略目录；完整argv、日志及SHA见[定点证据JSON](final-integration/20260908T013842Z-cofactor-docstring/evidence.json)。

其余三根未重编；本次核对其源码及复用olean SHA与01:31记录一致。四根集合仍是Acore、Sprimepower、Bnorm、Cofactor，当前验收由原三根证据加本次Cofactor修订证据组成。01:31的全部原始四根日志、01:34报告副本、交付JSON和SHA清单均另存保留，不追改旧执行结果。

## 当前源码SHA与先导依赖

| 新检查根 | 对应实际验收的当前源码SHA256 |
| --- | --- |
| ReflectedPrimePower | `0eb03b3d996f4a67c3b03466b36c3d24b02ff4e58195b594fddd2a07302ba717` |
| SumPrimePowerExclusion | `bd136cad0859595367422146cac2976115052bb85750b29d139e8434a380df1e` |
| SumTwoPositionGap | `22e52ef30b0bd1640649a2551963c5a3a84079dfdee1554362945733f7c02f90` |
| SumCofactorBounds（01:38定点复验） | `8126290dcd084ea05aa27f602674a5fdf220012dce469e008b47974ee28e8fa5` |

复用依赖先复制到新前缀，逐项核对当前源码及输入olean与01:10实际验收证据中的SHA一致。本次未把复制依赖记作重新编译：

| 先导或传递依赖 | 源码SHA256 |
| --- | --- |
| ReflectedGeometry | `c43dc912029ab0a2e4b630c0b53d24497b0a3012cb993ececbbbfe827d5922e4` |
| PrimeSynchronization | `e6484aa19768bc3a58721e73d6289652d6fb70d522303f997a0494f9a1175df8` |
| HitSemantics | `3d7811acbc9953243b2886996ccd749929d0d464ac34b834531672586af5f827` |
| independent/TargetBridge | `b26c40df78c176105d86d8d01789a927f2a3d9ba1855afde14120c38b2234c57` |
| round8/continuation/SizeBounds | `7da4f63de39ca33f7817e4b8c5d208c293cbb6b34f6d128128826d0544ee01d1` |

其输入olean原路径及SHA详见证据JSON的`reused_dependencies`。当前四根的实际imports已记录；PrimeSynchronization按主任务指定备作先导依赖，此四根当前没有直接使用它，不能把它写作新增数学依赖。

## 结论与假设边界

1. **A高分支接口。**`original_high_contact_nat`及`original_high_contact_sharp_nat`在原题方程、`k≥2`、分离条件、素数`p`及源码写明的高分支阈值下，推出高位位置、准确赋值和非零反射误差的整除性。位置与接触结论由证明导出，调用方不另交接触证书。高分支阈值本身仍是该接口的条件。
2. **完整的原题S为素数幂子族排除。**`not_four_prime_power_reflected_sum`对自然数`k,n,m,p,a`，从`k≥2`、`n+k≤m`、`p.Prime`、`S=m+n+k+1=p^a`推出`P_k(m)≠4P_k(n)`；所有自然指数均包含，指数0也没有排除在声明外。它通过高低分支整合A接口，最终声明没有附加高阶接触或渐近估计假设。这一子族排除不等于原B686全部参数已经解决。恢复报告中更早的“高次素数幂排除尚未Lean”是01:10的历史状态；本次新源码改变了该子族的形式化状态，旧日志保持原样。
3. **B两位置界仍有分组接触条件。**末定理`reflected_factor_contact_bounds`从原题条件、`k≥5`、两个合法位置、`A>0`，以及明确的`A*Di*Dj=S`、`Di²∣reflectedError_i`、`Dj²∣reflectedError_j`，推出`k≤60A²`，并在`Even A`时推出`k≤15A²`。这些分组/平方接触条件不得省略。该根没有从原题自动构造完整粗分组，也没有证明`A`就是实际光滑部分；A的高接触接口通过本次验收，也不会自动补齐这个构造义务。
4. **Cofactor无需调用方给因子证书的原题推论。**`original_sum_quotient_bounds`从自然数原题条件`k≥2`、`n+k≤m`、`P_k(m)=4P_k(n)`及素数`p`，直接定义`B=S/p^(padicValNat p S)`，推出`k≤10B`、`S<200B³`及`m<200B³`。较早三个定理接受完整因子等式，第四个定理已在证明内推出该等式，不需要调用者另交证书。固定B约束原题变量k,n,m,S；不整除S的辅助素数p本身不受此界限制。这里B是删除完整p主幂后的余因子，没有把它识别为光滑部分；B跨整个原问题仍不受统一上界控制，所以不宣称B686全题解决。

## 旧证据保护与交付

恢复目录97项`recovery-logs/SHA256SUMS`在本次执行前后分别实际校验**exit 0**；清单本身SHA256保持`b1e4ac20979112ee8a8200faca923f57c754578e5d7c284f451c29c867143886`。本线没有更新或覆盖该清单、旧恢复报告、旧日志或共享`main/verification`。

原官方库本地验证保留此前[official-validation-equivalent.log](official-validation-equivalent.log)：2026-09-07 22:52:34—22:52:48 UTC，源码policy、`lake build`、两个Tests及一个Example各步均exit 0，总exit 0。此次只读回旧记录，没有把它说成01:31新执行。当前workflow的push触发限定main分支（另有面向main的PR与手动入口）；本任务分支push不触发该CI，保留没有GitHub Actions绿色结论的边界。本线未修改任何main/CI/README入口。

本次新增文件另有独立清单，可从仓库根复验：

```sh
sha256sum -c research/tasks/B686-Four/round9/environment/final-integration/SHA256SUMS
```

记录器每次使用新的时间戳目录，重复运行不覆盖已保存日志。当前四根证据就绪状态另见[delivery.json](final-integration/delivery.json)；本次四根及记录稳定后环境线暂停写入，后续根不自动加入。
