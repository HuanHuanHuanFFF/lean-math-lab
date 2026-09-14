# B699 下一轮共同输入 · v3

这是A九次带、B固定缺陷与移位幂、D误收B任务后的二进缺陷成果全部回传后的新轮资料包。它取代v2作为本轮输入；旧v2本身保持冻结。

先读 tasks/COMMON.md、本人任务文件和 context/FRONTIER.md，再读本人最新REPORT/HANDOFF及另外几份REPORT。方法由研究者决定，旧HANDOFF里的建议只是历史意见。

|投递给谁|任务|优先阅读|完整输入|
|---|---|---|---|
|Pro A|[tasks/A.md](tasks/A.md)|reading/A；同时知道两份i3新成果|archives/A-nonic-original.zip|
|Pro B|[tasks/B.md](tasks/B.md)|reading/B与reading/D-as-B|archives/B-bounded-defect-original.zip、archives/D-as-B-dyadic-original.zip|
|Pro D|[tasks/D.md](tasks/D.md)|reading/D-quartic与reading/D-as-B；对照B新稿|archives/D-quartic-original.zip、archives/D-as-B-dyadic-original.zip|

Pro D本轮恢复Pro D身份，主要负责i4–i8及跨指标推进。D-as-B是它误收任务后已经取得的i3成果，保留署名和来源；不能把它当作i4–i8已推进。

四份完整原ZIP原字节携带；reading只是方便入门的少量原文副本。要使用证明、源码、证书或更早依赖，先按下面准备完整外层输入，再读各原件SOURCE_ADOPTION及来源映射。A的旧A窗口、58族、i14等链通过其原包inputs和sources/MAP恢复；两份i3均嵌套上一轮B原ZIP；D-quartic携带它采用的更早原件。需要哪层才恢复哪层，不把字节恢复当数学验收。

    python3 prepare_inputs.py A
    python3 prepare_inputs.py B
    python3 prepare_inputs.py D

每次只恢复对应完整原件外层到inputs/；如需四份全部外层，运行python3 prepare_inputs.py all。该程序仅校验与提取文件，不执行作者代码、不自动递归ZIP。同名文件若字节不同会停止，避免覆盖已有改动。

共同原题、交付标准与权限在COMMON；证据差异与未取得原件见context/EVIDENCE.md；来源大小和SHA见sources/ARCHIVES.json。包内所有文件（本manifest除外）列于PACKET_MANIFEST.json。

本包是待用户投递的任务资料，生成它不等于启动三个会话。Leader的默认调度最多两路实质研究同时运行，由用户安排投递先后。没有新增总时限；没有恢复Lean或无限自动续派。
