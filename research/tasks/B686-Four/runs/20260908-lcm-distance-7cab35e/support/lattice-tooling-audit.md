# 小型格基诊断工具清单

盘点时间：2026-09-08。只读查询版本和源码接口，没有安装依赖、运行研究任务或开始大计算。

| 工具 | 当前状态 | 能力与边界 |
|---|---|---|
| SymPy | Python 3.14 环境中 `sympy 1.14.0` | HNF/SNF、`DomainMatrix.nullspace/rref`、`DomainMatrix.lll/lll_transform` 和 `smith_normal_decomp` 可用。`smith_normal_decomp(DomainMatrix over ZZ)` 返回 `D,S,T` 并满足 `D=S*A*T`；若 S/T 整数且 unimodular，则 D 的零对角列给真正的 saturated `Z`-kernel。该性质已在 toy 与 k5 μ1 D2 矩阵上验收。普通 nullspace/primitive 列仍可能只是子格。 |
| python-flint | 不可导入（`ModuleNotFoundError: No module named 'flint'`） | 因此当前环境没有 `fmpz_mat` 的 `rref/nullspace/hnf/lll` 后端。 |
| fpylll | 不可导入（`ModuleNotFoundError: No module named 'fpylll'`） | 没有可用的 `IntegerMatrix/LLL/BKZ/GSO` 格基后端；即使有 LLL，也不能单独证明饱和性。 |

仓库内限定 B686 round8/round9 与 `scripts/` 搜索后，唯一命中 HNF/饱和整数核实现的是 `research/tasks/B686-Four/round9/independent/external/jet_puncture_basis_experiment.py`：

- `saturated_integer_rowspace` 先取 FLINT fraction-free RREF，再把非主元列的整除条件转成同余约束，用显式 Bezout 变换、每步列 HNF，最后构造 `(Q-span(rows)) ∩ Z^n`；按源码意图这是可返回真正 saturated row-lattice 的路径，但当前 python-flint 缺失，不能在本环境复现。
- 同脚本的 `fmpz_mat.nullspace` 只返回有理核的整数表示，源码文档明确警告它未必是饱和整数格；primitive-column normalization 和 LLL 也不足以补饱和性。
- FLINT 不可用时的 `DomainMatrix.nullspace` 分支仅产生分数自由整数基并逐列 primitive 化，属于可能的子格，不能用于声称最短向量最优性或完整整数核生成。
- `fmpz_mat.lll` 只是对已给定格做约化；LLL 不会把子格自动扩张为饱和核。SymPy HNF/SNF 同样需要先有正确的整数模结构/变换数据，不能把有理 nullspace 每列清分母当作完整答案。

补充的实际验证：`smith-check/check_smith.py` 对 `A=[2,1,1]` 得到 `D=[1,0,0]`、`det(S)=1`、`det(T)=-1`，并由 T 的零对角列生成 `[-1,1,1]`；对已有 k5 μ1 D2 矩阵得到 `diag(1,1,1,7)`、两个零列、最大子式 gcd=7 和 mod-7 rank=3。高阶 k5 μ6 D8 的 SNF 与图格 HNF 在有界窗口内均未完成；保存的输入由直接 Q-kernel LLL 验收继续，结果明确标注为子格而非饱和核。

因此后续若要比较 U/binomial 基与完整整数核，当前可复用的可信算法描述是上述“RREF 分母 → 同余核 → Bezout + HNF”的 saturation 路线；可运行后端仍需 python-flint 或等价的独立精确整数矩阵实现。当前环境没有可直接宣称 saturated 的已安装工具。
