# B699 Pro B：分歧与射线类群的新接口

先读 REPORT.md、HANDOFF.md、notes/PROOFS.md。R7未改变。

原题消费者已给出完整纸面论证；新增类域论依赖在SOURCES.md明列。有限环648个单位的证书完整，但没有声称计算证明全局类域论。默认复现只需Python标准库，无联网、无Lean、无CAS。

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

所有新输出在outputs/。replay/acceptance/保存真实执行记录。sources/previous.zip保留上一轮ZIP原字节，其余实际采用文本和下载失败记录均有映射。未读其他会话本轮新结果，未修改Git仓库。
