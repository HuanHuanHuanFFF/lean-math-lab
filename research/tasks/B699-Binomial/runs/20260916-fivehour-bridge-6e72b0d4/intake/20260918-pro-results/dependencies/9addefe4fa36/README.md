# B699 Pro B · RECOVERY-DISC-NEG

原题i3的同输入恢复三次判别式非负分支完整排除。入口：REPORT.md → proofs/PROOFS.md → HANDOFF.md；方法边界见FAILURES.md，来源见SOURCE_ADOPTION.md。

本轮仅写入该独立目录及外部验收目录；未修改其他文件、原附带总览或远端仓库。一般i3未闭，R7不变。作者纸面＋精确证书；未Lean、独立研究者或人审。

## 复现

    python3 -S -B code/reproduce.py --output-dir /tmp/b699-sign-replay

标准库即可。构造器与第二检查器均为作者实现，不等于独立研究者验收。outputs是冻结输出，复现请写到新目录。

主要证书：outputs/certificate.json。真实两窗口无限弱解族证书：outputs/weak_family_certificate.json；其每个成员都由共同素数599排除，不是原题反例。

experiments是实际早期可否证探针和日志，仅用于方法记录，不替代最终证明或证书；这些探针使用SymPy枚举小素数，核心重放不需要SymPy。
