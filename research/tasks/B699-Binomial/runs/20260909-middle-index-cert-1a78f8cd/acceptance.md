# 当前验收边界

本批已验全部n,j的指标集合仍为空集。677项首批与815项扩展均未完成。

## 已实际核验的有限带

开发测量根experiments/prime-chain/20260909T115413Z及20260909T120849Z：
通用PrimeChain声音性与拼接、具体末端32/256边、原题消费者实际编译且#print axioms仅标准三公理。最新有限带为1953451≤n≤2000000、i≥323、i<j≤n/2，保留p=n及p≥i。采用两项本轮重编并核对源码/object SHA的GapBridge实际依赖。完整共享链尚未跑。

NormNum.Prime按固定mathlib源在本轮overlay编译，完整源、输出族、命令、日志与SHA见experiments/prime-chain/normnum-prime-overlay-manifest.json。默认固定包缓存未改。

这些是本轮真实开发核验结果，最终还将纳入完整最终消费者的统一源码闭包与公理审计；未把末端带说成某指标全部n。

## 高度与计数

114042Z原高度与115800Z单独原始smallPrimeCount323归约均触1536MiB内核限制。源码中没有占位或新公理；Lean错误恢复输出被实际审计拒绝。

完整trialPrimeCheck反向声音性/fastSmallPrimeCount_eq在120504Z通过，counted源中small_count_323实际标准公理输出通过；该源的height声明仍内存失败，整个对象未接受。错误恢复的自引用公理名字被拒绝。

RawHeight通用转换、原算术独立测量、逐整数0..999计数表正在验收。Dyadic工具与HeightApprox仅为未编译备选，尚未提升证据等级。

## 核验方式

固定Lean4.33.1与manifest全部9 pins。新project对象目录；extend.py仅在源、对象、实际axiom日志哈希及递归项目依赖一致时采用成功模块。失败模块一律排除，新证据明确区别重用和新编译。标准依赖缓存复用与本轮NormNum补建另记录。源码快照从120358Z起保存，早期失败源有专门快照。

最终验收须包含具体完整数据、无证书假设的原始结论消费者、完整依赖版本/hash及实际传递公理。当前还不满足该终点。
