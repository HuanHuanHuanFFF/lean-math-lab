# SymPy smith_normal_decomp 小例验收

SymPy 1.14.0 的 `smith_normal_decomp(DomainMatrix over ZZ)` 返回 `D,S,T`，并满足 `D = S*A*T`。两组小例均验证了 S/T 整数、行列式为 ±1、恒等式和零对角列核：

- `A=[2,1,1]`：`D=[1,0,0]`，零列为 T 的第 1、2 列；`[-1,1,1]` 在这两列生成的坐标为 `[-1,1]`。
- 已有 k=5、μ=1、D=2 截断 binomial 4×6 矩阵：`D=diag(1,1,1,7)`（补零列），零列为第 4、5 列；最大子式 gcd=7，mod 7 rank=3，均与源 JSON 相符。

原始 S/T、核列、坐标和检查字段见 [smith-results.json](smith-results.json)，脚本见 [check_smith.py](check_smith.py)。
