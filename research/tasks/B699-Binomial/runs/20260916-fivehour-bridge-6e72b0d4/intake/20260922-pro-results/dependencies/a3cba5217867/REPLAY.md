# REPLAY · 离线精确重放

## 环境

Python 3.10或更新；只用标准库，无需SymPy、Sage、Magma、Lean或网络。实际环境记录见ENVIRONMENT.json。代码没有网络、仓库写入、后台执行或外部发布操作。

```bash
cd B699-D-i3-20260921-round7-normsplit
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

默认replay不修改冻结证书或日志；输出到标准输出。保存新的日志时请使用包外路径，避免改变归档哈希。

## 条件门检

```bash
# 同一c,s的完整模12冲突，整个共现支退出
python3 evidence/orbit_gate.py --shared-factors 409:1,1129:1

# 只有必要指数相容，绝不声称恢复原NC3
python3 evidence/orbit_gate.py --shared-factors 409:1

# 快速多项式模幂直接给空，不枚举66072132个指数
python3 evidence/orbit_gate.py --shared-factors 1321442641:1 --max-period 10

# 完整幂的有限周期未在给定预算内计算，必须是不确定而非空
python3 evidence/orbit_gate.py --shared-factors 409:2 --max-period 10
```

传入的每个p^b是**待检原分支中已证明整除G的条件**。工具不会从输入数字自动证明其属于某个原n,j。它返回条件定理，不把辅助素数当原共同见证。

实现用确定性试除检查素数，限制底数<=10^12；阶先利用(p-1)p^(b-1)的已知结构分解，再作模幂最小性剥离，避免盲试除整段高次p幂。周期预算限制不包括素性和阶计算的全部成本，不声称统一资源上限。

## 重建证书

在副本里运行，以免改变冻结文件：

```bash
PYTHONDONTWRITEBYTECODE=1 python3 evidence/generate_certificates.py
PYTHONDONTWRITEBYTECODE=1 python3 evidence/verify.py
```

证书包括409、1129、409²的完整周期集合，601和大素数的快速余式，阶的全部素因子最小性见证，以及Pell弱模型与相邻平方间距。原始日志为logs/replay.log。

## 输出边界

预期包含：

```text
SAME_INPUT_NORM_LINK_IDENTITIES=PASS
FERMAT3_DESCENT_ALGEBRA_AND_MOD9=PASS (paper supplies descent and UFD quantifiers)
TRACE_RECURRENCE_AND_UNIT_CHECKS=PASS (finite diagnostic; universal proof is P5-P6)
COMPLETE_PERIOD_409_1129_AND_PRIME_POWER_409_SQUARED=PASS
SAME_C_S_CRT_PAIR_ALL_EXPONENTS=PASS
FAST_ORBIT_GCD_WITHOUT_PERIOD_SCAN=PASS
NONEMPTY_AND_RESOURCE_BOUNDARY_TESTS=PASS
PELL_WEAK_MODEL_AND_MISSING_INTEGER_NORM=PASS
EXTERNAL_NL_CONTRACT=DECLARED_NOT_REPROVED
REPLAY=PASS
```

最后再打印三个CLI调用的JSON。

REPLAY=PASS只证明明确程序检查项。外部NL、Eisenstein唯一分解、经典下降的全称性、所有冻结原NC3桥不由该字符串认证，也不是Lean。
