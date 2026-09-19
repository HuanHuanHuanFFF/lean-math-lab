# B699 Pro D · 第4行缺槽统一高度

入口：[REPORT](REPORT.md)、[PROOFS](PROOFS.md)、[SOURCE_ADOPTION](SOURCE_ADOPTION.md)、[FAILURES](FAILURES.md)、[HANDOFF](HANDOFF.md)。

新增：i5/H02⁺的q4缺端点/近侧槽分支，无须q2全居中，统一ln n<2^512。包含指定两类i6尾部的严格同输入转移。巨大有限底部未排，R7不变。

接受：`bash REPLAY.sh`。Python标准库即可，不联网，不写入仓库。入口先从已保存发现输出重新装配证书并核对完全相等，再执行有限接受。输出默认保存到本包replay/latest.json；参考输出在evidence/verification.json。发现脚本另需SymPy，它们不属于接受依赖。

程序只验证有限代数与常数义务，不能替代Reider、Matveev、任意曲线的纸面论证、Lean或原题巨大底部。

来源：旧绝对高度包的明确成员按字节保存于sources；本轮使用的冻结中心消费者另记固定仓库提交/路径和读取边界，未把旧完整历史链再嵌套打包。新生成文件成员哈希见MANIFEST.sha256。
