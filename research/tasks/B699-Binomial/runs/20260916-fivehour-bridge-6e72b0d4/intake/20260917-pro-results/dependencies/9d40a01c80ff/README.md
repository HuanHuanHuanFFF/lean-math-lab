# B699 Pro E / middle-gcd / 2026-09-16

入口：[OVERVIEW.md](OVERVIEW.md)。完整证明：[PROOFS.md](PROOFS.md)。结果与范围：[REPORT.md](REPORT.md)。来源：[SOURCE_ADOPTION.md](SOURCE_ADOPTION.md)。

目标：接前一轮规范商/二次恢复，尝试消去无界t或闭合无界子族。本轮未指定总时限；不继承旧五小时任务。所有本轮写入仅在这个独立目录。没有修改Git仓库。

实际结果：三个完整K分配必须非空；t的全部素数幂分支排除；n的相对高度由t五次降至二次。一般t仍无界、R7不变。纸面＋精确检查＋明确出版整点输入；没有Lean或独立研究者验收。

运行：

    python3 scripts/check_manifest.py
    python3 scripts/verify.py --output /tmp/b699-e-new-replay.json

需要Python3及SymPy（版本见验收JSON）。默认回归n≤1,000,000；完整无限量词由证明和准确的出版分类承担。检查脚本拒绝覆盖已有输出。

旧 checkpoint 和粗过滤 JSON 是过程记录，可能写有后来被更强结论替代的状态；以本轮 OVERVIEW/PROOFS 和 acceptance-final.json 为准。MANIFEST记录冻结后的全部文件，不包括清单自身。
