# B699 本轮恢复入口

## 已独立交付的首批

分支GPT-work/b699-middle-lean-20260909-1a78f8cd。
首批677项正式远端提交：2e190f896738460c2cb23289d3b7051ce1ba3e9a。
首批范围323≤i≤999，全部Nat n,j满足i<j≤n/2时存在素数p≥i整除实际两个二项式gcd，无证书假设。

最终源码lean/MiddleComplete.lean，B699Middle.common_323_999。
正式验收verification/20260909T132846Z/evidence.json；129源，44新编/85同源及递归依赖一致复用，实际标准三公理。
准确证据见acceptance-677.md；first323原题全域根为130116Z。
开始11:31:09 UTC（前有约31秒启动），本轮未给新总时长，旧截止不继承。

## 复现首批

在本隔离工作树执行；下面是可执行冷验收入口，未声称结束后又重跑一遍。保持固定Lean4.33.1、mathlib0df444a360eaa60ab8c11dca51a86af692955474及manifest其余pins。固定依赖包缓存可以复用，所有项目输出另建新目录。

```powershell
& 'C:\Python314\python.exe' -B 'research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/verification/runner/verify.py' --project-root . --lean 'D:\CodingProject\Math\.tools\elan\toolchains\leanprover--lean4---v4.33.1\bin\lean.exe' --package-root 'D:\CodingProject\Math\.lake\packages' --root 'research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/lean/MiddleComplete.lean' --memory-mb 1536 --timeout 300
```

若同一工作树保留本轮对象，可改用extend.py并追加--base-evidence指向成功evidence.json；它验证当前source、object、实际axiom log及递归项目依赖哈希，失效对象会重新编译。不能把上一轮开发对象当此轮验收。每次新目录不覆盖历史，evidence.partial.json可供恢复，但未完成状态不等于整个根通过。

最终#print axioms不得出现标准三项之外公理；source policy拒绝占位和新axiom。未用Cli缓存缺失不影响不导入它的根。没有使用独立第二内核。

## 条件扩展状态

原N=20,000,000、gap184、116667节点2→20000093输入在inputs/original20m/，保持原zip字节。
全部185..322的138条高度及其n≥20m消费者已验：verification/20260909T141839Z（33源，10新/23一致复用）。
607小素数基底及完整0..4472覆盖、checker声音性、末端节点消费者已验：experiments/extension-prime-basis/verification/20260909T140805Z。

512边基底样本通过：同目录verification/20260909T142338Z，本体66.398秒；228叶粗估约4.21小时，未跑整20m链。尚不能报告815项全域完成。

最后有界成本改进：改为与已验607素数的乘积做一次gcd=1检查，须先证明准确乘积与checker声音性。20分钟探针起点14:31:18 UTC、截止14:51:18 UTC，不滚动延长。结果以notes/extension-primorial.md与experiments/extension-primorial/后续证据为准，不能预先采用。若无明显改善，收束677和扩展片段，不自动运行额外4小时。

## 文件与资源

只写本批；原D:/CodingProject/Math的main工作区和B686 round9未操作。
重计算最多一条、Lean-j1；首批1536MiB，后期内存余量下降后扩展1280MiB。子任务至多3、数学至多2，不递归，不改电源/pins。
新对象与可重建缓存位于本工作树.tools/mid；证据、输入、失败源码快照不能清理。
不合并main、不创建PR、不联系外部会话，后续整合交由控制中心。
