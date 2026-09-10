# 本次接收与重放验收

采用固定 main `784ec1d26f33fbb303ab0b0c14ac35919f03d902`，源树 `995a3b56d9f6c9146b4911321f94534b2889451c`。huan新增73个文件、VPS新增21个文件，均未改动或删除main已有文件，写入目录互不重叠；按完整树接入，不依赖compare的文件返回上限。保留两份来源提交及原字节日志/验收。

两个新ZIP：CRC通过，227个成员均与安全解包后的文件逐字节一致；其中223个文本成员入Git，4个嵌套ZIP在原附件内保留。详见[全部映射](../../../../external-results/20260910-next-closures-ad35779e/MANIFEST.json)。

## 本次实际执行

先审查各重放入口，再在临时工作目录串行执行；原输入与历史验收日志不覆盖。全部命令及退出码见[execution.json](verification/leader-replay/execution.json)。

- i13：`python -B verify_manifest.py`；`python -B code/reproduce.py --record <新的记录目录>`。10条数学命令全部退出0，11份数学输出逐字节一致，源码/输入前后哈希一致；重放约13.27秒，子进程峰值48476 KiB。[完整记录](verification/leader-replay/i13/reproduction.json)。
- Padé三项：`python -B code/verify_manifest.py`；`python -B code/reproduce.py --regenerate --output-dir <新的记录目录>`。从空新证书缓存重生成，66份规范化数学数据一致；3255块、116195条有符号余数比较、397261个CRT幂对、51127个完整候选，残余0；重放约51.58秒。[完整记录](verification/leader-replay/pade-three/reproduction.json)。其规范化明确排除耗时/内存等非数学字段，不能称所有JSON原始字节一致。
- 两个坏证书回归入口都通过；i13有14类，Padé有11类。特殊行n126与n330的完整j覆盖包括在重放中，未删去边界。

## 接受边界

本次新执行的是字节完整性与精确有限证书重放。无界纸面归约与BFT出版输入按原报告接受，没有重新证明整篇出版论文；新网页成果没有Lean内核验收、人审或新颖性认证。[独立支持审查](reviews/intake-review.md)仅检查声明、来源与前沿合成，不是完整同行审稿。未发现显见范围冲突；历史验证器内未使用的旧TARGETS常量作为复用维护提示保留，原件不改。

huan的EC分析接受记录、std3公理输出及源绑定采用其固定交付，本轮不重编译；VPS保留真实工具缺失/下载审批取消，不能写成OOM或“所有网络永久不可用”。没有运行仓库全套Lean验证；CI状态单独观察，不把它等同所有research已验。

远端源码发布提交为 `3e7bdbe60bafae7bdf10c48ea8e9923eb694ef5f`，完整树为 `a381223c8d36f0a0ac4edfa038065067fb6233ba`。10067 个文件逐项核对路径、模式、类型与 blob SHA，差异0；357个新增文件、4份既有文档更新，无文件删除。四个父提交保留main、旧Leader和两项Work历史。接收范围由 [PR #8](https://github.com/HuanHuanHuanFFF/lean-math-lab/pull/8) 覆盖；交接补记不改变数学原件或来源范围。完整发布与CI观察见 [handoff.md](handoff.md)。
