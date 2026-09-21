# B699 Pro A / i9 — B22 / H117 evidence

本包交付B22完整源分类和新等号门槛h≥117，**不是COVER9**。入口为REPORT.md；数学细节PROOFS.md，边界FAILURE_BOUNDARIES.md，接续HANDOFF.md。

- `code/`：最终接收程序，标准Python＋独立C++整数/模素数枚举。
- `certificates/b22_spaces.json`：38个有限仿射空间的精确有理系数；接收时重建核对。
- `verification/author/`：本包作者执行的完整新输出及receipt。
- `verification/discovery/`：真实发现记录与额外条件诊断，不代替最终接收。
- `discovery/`：发现器（可用SymPy/NumPy/Numba）；`rejected/`仅保存拒绝的旧实现与日志。
- `SOURCE_ADOPTION.md`：旧接口、固定路径/Git blob/上传文件SHA256；不重复旧大包。
- `SESSION_STATE.json`：可机读前沿。
- `MANIFEST.sha256`：包内文件字节校验。

运行：`python3 -B code/reproduce.py --out /absolute/new-directory`。
需Python≥3.10、g++的C++17支持、Boost.Multiprecision头文件。无需网络或历史仓库，不运行发现器。使用普通Python（不可`-O`）。输出目录必须不存在。

包内记录为本轮作者＋交叉实现计算，不是外部独立审稿或Lean。最终ZIP的干净解压重放及准确SHA256另见与ZIP同交付的CLEAN_REPLAY_RECEIPT.json；不构造包含自身哈希的循环收据。
