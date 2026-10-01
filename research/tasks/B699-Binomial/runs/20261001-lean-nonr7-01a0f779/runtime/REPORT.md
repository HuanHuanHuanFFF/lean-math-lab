# 运行环境与独立核验交付

负责人 `runtime_review`。固定输入 `4d22485e20e509e33348b33e63f6902becbae414`；窗口2026-10-01 13:42:09–15:42:09 UTC，上海21:42:09–23:42:09，无延期。15:37 UTC起冻结，不再新增重缓存、批量源或数学任务。

本轮实际恢复官方Lean4.33.1（compiler819816b2）与9包固定源码/定向对象；9包HEAD完全匹配且tracked工作树改动0。开始缺失全部toolchains和Mathlib/研究对象，只存在4个lakefile.olean，旧日志不能充当当前环境。官方ZIP的SHA、选择解包、2742+7真实import缓存均由实际命令/退出码与精简索引绑定；未冷构建全部Mathlib，未改pin或公共Math模块。

统一入口 `invoke-task.ps1` 独占compile.lock，低优先级、2逻辑CPU、Lean单线程/Elab.async=false、最多300秒与硬截止，监控整个Job工作集/系统空闲/D盘。原生flags整体赋回后逐次读回0x2030；WS与committed限额分开，后一项0。原始Int32峰值溢出、嵌套struct赋值不生效、对象root前缀shadow、内存阈值、资源停机均保留失败证据，修正过程见DIAGNOSTIC与读回JSON。未停止他人进程或改系统pagefile。

实际资源从开始可用物理1.652GiB，到一度4.856GiB、15:24空闲时又仅1.768GiB，故不能据旧数值挤入重根。内部M3132据固定历史同版本试验及本轮Log绿色校准；物理WS轻根1536、EC1792、余量900仍独立守卫。D盘从42.002到约36.396GiB，保留20GiB硬底线，本轮定向新增约5.6GiB；没有新增无关缓存。最后资源观察另保存JSON，不能当永久机器规格。

已独立接受均有reviews固定scope：Nat参数、IC实代数、精确log误差、全n≥1 factorial与全q≥1 superfactorial、全m≥333/c1..3真实归一化常数、**实际原题noCommon→N（i≥1000、全部合法n/j）**、固定Slim θ/Abel、**完整EC（所有实数x≥128）**、Uniform计数尾（i≥131072，仍显式A输入）、critical 原题反例→M64/非零L、两个exact(2,3)/(A,B)=(5,1),(1,1)距离/实际n界pilot。source/object/实际exit0/public类型/标准三公理按各review及执行者专项acceptance可追溯；我补的独立typed审计不改已冻结原源。

完整原题指标新增0，**新原题公共素数区域也未登记接受**。最终legacy Consumers尚未因物理预检不足启动；PublicConsumer的单次低资源尝试只在173.21MiB产生“module无法导入non-module”接口错误，未进入proof/check/axioms。N和EC已经作为真实无界接口接受，不能将最终接线短或手工数学组合替代原题消费者真实验收。critical的高度/全部距离/有限剩余区没有由两pilot完成，bundle准备但未编译。

`evidence-index.json`保存所有命令、source/controller原字节快照、结果及完整stdout/stderr哈希；成功记录包含下载/环境/编译，不是全题进度计数。两条原Int32异常留下running原收据，明确不计接受，其旧PID在15:37检查均不再具有原身份。`process-checkpoint.json`列129 ownedPID记录，当时liveOwned为空、锁free；硬截止最终检查由stop-receipt补充。未commit/push/切分支或发布PR。

下一可执行项：在物理空闲真正满足重根保护时，从冻结的legacy Consumers源、完整tail对象root和本轮N/EC/Uniform接口作一次原题类型/公理验收；不要为导入现代module而大量改写旧接受源。之后才比较精确新原题区域与剩余 `4883≤i<131072` 及大i的 `n<4096i`、Gap/完整尾部。所有新轮重跑需重新授权时间窗口；本轮入口硬截止已固定，不修改历史收据伪造后续接受。
