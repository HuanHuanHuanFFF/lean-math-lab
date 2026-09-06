# M1 主任务协调与核验日志

日期：2026-09-06。研究基线 f8821ac 已推送；Lean verification run 34040599815 和 API documentation run 34040599744 均成功，远端SHA已核对。本轮新探索尚未提交或推送。

## 分工与交流

- 用户指定 Astra max 子任务 `/root/m1_explore` 主攻；主任务负责独立原对象计数、符号反证、边界消元和证书Lean检查。
- 双方分别由v3得到n=4分解多出B²C₀，随后用Lean核验该代数差。
- 主任务独立构造原超图，24组顶点删除计数与4组全子集枚举吻合递推。
- 探索者发现C₂存在非实根，排除直接实根路线；同步关系实验成立，但更新时次数差2阻止直接套同步闭包。
- 主任务在双参数推广中发现负单项式，并指导探索者测试a=b=1/100，得到精确LC反例；它不满足M1参数条件，不能称作M1反例。
- 探索者提出三对角矩阵→低阶四次族→根扇区路线。主任务用消元得到正证书，探索者独立从整数Sylvester行列式重算确认；双方又分别用gcdex和余子式得到Bézout身份。
- 当前候选完整非形式化论证见 [proof-draft.md](independent/proof-draft.md)，探索过程见 [exploration.md](exploration.md)。未完成完整M1的Lean形式化。

## 主任务实验与结果

环境：已有 C:\Python314\python.exe、SymPy；Lean 4.33.1/mathlib v4.33.1固定版本。Python运行设置PYTHONDONTWRITEBYTECODE=1、PYTHONUTF8=1；所有新文件在D盘。

- `independent/check_model.py`：n=1..6、ℓ=3..6，24组精确计数通过；其中(1,3),(1,4),(2,3),(2,4)另外做全子集枚举。
- `independent/coefficientwise_lc.py`：q=ℓ−3，n=1..16的272个LC差均为q的非负系数多项式；这只覆盖有限n。
- `independent/two-parameter-lc.json`：任意a,b系数级LC在n=4首次出现负系数，推动找到宽参数推广的实际反例。
- `independent/sector_resultant.py`：四次边界方程的结式恒等式；变换到非负参数后486项全正。
- `independent/sector-small-certificate.json`：更短的幂次上界正性证书；后续用28项lower2分解写入Lean。
- `independent/derive_bezout.py`：直接得到T=UI+VR，22项U与14项V均为整数系数。

上述Python输出与脚本保留失败路线和有限范围。它们不替代Lean检查；SectorCertificate中的恒等式已经由Lean独立核验，软件生成过程无需作为可信前提。

## Lean 核验与环境失败记录

通过 `scripts/lake.ps1 env lean <path>` 检查本任务各文件。AlgebraAudit的最初尝试因缺失Positivity汇总模块失败；曾尝试下载固定版本两个模块的917项传递缓存，前10项下载均失败，已终止（0项下载成功），改用已缓存NormNum及Positivity.Basic。没有改固定依赖，也没有把缓存失败记录为成功。

AlgebraAudit中随后两次正性战术未闭合，改成显式非负引理后全文件通过；这些失败输出中的sorryAx来自未完成检查，最终以整文件成功及可失败公理审计为准。

核心正证书和Bézout身份位于 `independent/SectorCertificate.lean`；源递推闭式和独立余子式身份位于探索者 `lean/`。本轮没有新增已接受库模块，故全仓既有CI不包含这些研究文件；研究文件需单独运行。

## 下一检查点

把非形式化完整论证的每个连接变成可调用Lean定理，优先评估通用有限对数凹卷积与复根扰动桥梁，保持原超图对应义务。刷新后续文献，并在声称数学创新或公开新证明前完成进一步独立审阅。本轮用户仅要求先发布原仓库基线，尚未发布这些研究结果。
