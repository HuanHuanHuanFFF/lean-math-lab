# 续跑执行记录

16:06 UTC：读上轮legacy原题消费者，目标类型保持同素数p≥i与所有合法j。等待runtime_review的新受控入口/现场资源与固定对象复用回执；未启动Lean。

反向依赖：全部i≥4883原题 ← 严格统一高度 + Gap(4095,10^7) + 已有有限n消费者；高度 ← 实际N/A + EC + IC/精确115行 count桥。上轮完整N、EC、i≥131072 count tail已验，本轮先验证最终原题消费接缝；随后继续IC已有纸面依赖。

当前原题新增已验区域：无（待新消费者实际验收）。新完整指标：无。不得由上轮前置或本次源码准备推定消费者已通过。

## 16:21 第一闭环实际接受

固定旧legacy Consumers首次真实数学编译发现不存在的 `Nat.dvd_of_dvd_gcd_left/right`；失败根新tools `20261001T161350603Z-tail-original-consumers-first`，exit1/49.163秒。旧源保留。

修订在本目录 `Consumers.lean`，仅改成 `Nat.dvd_trans` 与标准gcd_dvd投影。新接受根 `verification/20261001T161710323Z/`：17.011秒、exit0、峰树1674.62 MiB，准确公开原题类型与两项标准三公理。source SHA256 `4e8ce05ff8abf9aa00b8147c489fcf68f7c7eeabf1904dbc8a68ba6b9a7c8a2c`。拒绝式audit绑定源/对象/实际命令/exit/stdout；17旧对象逐项 source/receipt/object/sidecar哈希复用另有原字节清单。

阶段固定文件清单：该根 `stage-manifest.json`。原题消费者覆盖 C=`i≥131072,n≥4096i`、全部合法j的同一个Prime p≥i；不是全部i≥4883，不增加完整指标。相对旧完整低指标和有限n覆盖无重叠，但与旧一般高度/j^4区域有重叠，精确比较与确有新增的无限线见 `OVERLAP.md`，不把C每个输入都称净新增。

继续IC：`ICConsumer.lean` 接实际N与log条件到纸面整数row高度/同素数消费者；π(b)≤T显式，未把115表的Python事实算Kernel证明。首次仅field_simp无进展API问题已修订重验。`SieveBound.lean` 准备纸面§3.1统一π≤筛幸存数card接口，未运行新扫描或Gap研究。

## 16:45 后续三个闭环

`ICConsumer.lean` 已真实通过：24.116秒、exit0、峰树1698.08 MiB；固定源50967e7fa585cb44f10aa687bca2a1fe4903973f73cc76ad8755cae857873809。`row_height` / `row_common` 从实际原题noCommon与已验N得到整数行高度；自然数n,i,j,a,b,T,q,k，i≥1000、a≤i≤b<2^k、q≥12、π(b)≤T及整数证书均显式。输出完整同素数p≥i、全部合法j。接受条件接口，不新增无条件原题覆盖。固定包 `verification/20261001T164103398Z/stage-manifest.json`；两项实际传递公理仅标准三。

`RowsNumeric.lean` 已真实通过：4.297秒、exit0、峰树462.38 MiB；固定源a199a2447e3e4a00bb47cd05e1f9e6acb67a5b5a27b03f57baaba4b30d92d611。直接复用冻结20260909表的115行，无新扫描：全部整数证书以及1000..131071连续区间覆盖由kernel decide与归纳证明验收。all_rows_valid和覆盖仅propext/Quot.sound；row_count无公理。并未验π(b)≤T；固定包 `verification/20261001T164129965Z/stage-manifest.json`。16:46按runtime复核修正rows-source-map生成于Bool API修订前的旧target hash；仅映射与对应manifest成员刷新，接受源/对象/日志字节不变。

`SieveBound.lean` 已真实通过：12.149秒、exit0、峰树1083.76 MiB；固定源7d13cbe31d66ab8ce7d578021e9503114ffc3e7b726a4add5fe1655d648c83cd。任意非空有限素数集P全部≤b，证明π(b)≤|P|−1+|survivors(P,b)|，实际移除被计入幸存集的1。全部传递公理仅标准三。固定包 `verification/20261001T164449086Z/stage-manifest.json`。具体115行的幸存数card上界尚未验收，不能把通用计数正确性桥当作表的实际count结果。

下一依赖：`SieveInclusionExclusion.lean` 新候选正在实际核验有限容斥精确card身份；仍需交集card=floor(b/product)以及固定115行整数求和界，才能无条件连接1000..131071的高度。Gap(4095,10^7)全部无界参数仍缺完整Lean供应；小比例n也不由本轮4096高度覆盖。完整i≥4883原题尚未接通，新完整指标为0。

## 16:54 精确筛计数前置

`SieveInclusionExclusion.lean` 已实际exit0/13.034秒，峰树1066.11 MiB，source7dbb7665d4f580fc2618db9655079245fbf54b08367e1037d1bf897e78de03b0；固定包 `verification/20261001T165237841Z/stage-manifest.json`。对任意有限Nat集P和任何b，幸存数card等于所有子集交集card的整数交替和。有限区间子类型与整数集合通过实际双射连接；首次几次失败是classical可判定性/Finset lattice实例化问题，最终整个根全部exit0且传递公理只有标准三，不接受先前部分声明输出。

`SieveFloor.lean` 首次实际exit0/13.014秒，峰树1085.86 MiB，sourcebfa2fb3244156e567d767e5dc0d90352573583a0b7fcb3510ea8a4e0428eb2e0；固定包 `verification/20261001T165320579Z/stage-manifest.json`。所有有限素数集P（允许空集）、任意自然b：prod(P)整除m当且仅当所有筛素数整除m；交集card=b/prod(P)；幸存数card精确等于Σ_{t⊆P}(-1)^|t| floor(b/prod(t))。没有固定row计算假设，三个声明实际标准三公理。

现留下的精确有限义务：纸面固定16个素数P={2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53}，对既有115行r证明该全子集整数和≤r.bound−15。本轮没有运行7.5M归约或新扫描；这115条求和上界未接受。`SieveRowsConsumer.lean` 仅正在验证这些有限整数命题若成立，就连接全部1000..131071、n≥4096i、全合法j的原题消费者；该假设没有证明，不能报该区域无条件接受。

16:56 最后条件接口整根通过：`SieveRowsConsumer.lean` 17.986秒、exit0、峰树1706.00 MiB；固定包 `verification/20261001T165510200Z/stage-manifest.json`。纸面16个固定素数确为Prime/card16/max53已kernel核验。`finiteSieveCertificates`恰为既有115行的完整floor交替和≤bound−15，仍是显式未证假设；由它推出所有行π(b)≤bound，以及全部1000..131071,n≥4096i、全合法j的同素数消费者。原题类型保持p=i和完整幂路线，但这个区域没有无条件验收。公理输出：固定素数Prime、计数界与原题条件消费者均仅标准三。

所有数学源现停止修改；截止前只补接受清单、失败/映射/固定manifest与独立核验状态。未执行固定115值的大归约。


16:59 独立验收完成：runtime_review已接受全部7个成功根的准确scope与哈希闭包；records见本轮reviews/original-common-region.md、ic-and-fixed-rows.md、sieve-card-bound.md、sieve-floor-formula.md、fixed-sieve-consumer.md。floor身份包含empty P/product1和b=0端点；finiteSieveCertificates仍未证明、原题范围没有因此扩大。只更新summary/source-map/stage独立状态与review文件hash，全部Lean源/对象/编译日志字节冻结不变。全部自有Lean进程已结束。
