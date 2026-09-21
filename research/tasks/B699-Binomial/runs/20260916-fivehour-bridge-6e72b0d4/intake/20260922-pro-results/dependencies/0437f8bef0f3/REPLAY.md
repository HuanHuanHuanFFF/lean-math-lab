# REPLAY · 第九轮 BICOF4 / SMOOTH2357

## 环境

仅需要Python 3标准库与Bash。无网络、CAS、Lean、仓库、群阶数据库或素性服务依赖。运行环境版本见ENVIRONMENT.json。

## 校验与实际重放

```bash
cd B699-D-i3-20260921-round9-balanced-smooth
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

验证器不会修改历史输入，也不会重跑历史包。它核对冻结第八轮哈希，再重放本轮所有新证据。

预期核心结果：

```text
BICOF4_UNIFORM_CONSTANTS_AND_EXPONENTIAL_TAIL=PASS
SMOOTH2357_ALL_356_COMPLETE_TERMINALS=PASS
PRECISE_WEAK_MODELS_AND_MISSING_NORM=PASS
REPLAY=PASS; NEW_LEAN=NONE; EXTERNAL_INDEPENDENT_REVIEW=NONE
```

`logs/replay.log`为本轮实际输出，不是模板日志。

## 完整重建证书

```bash
python3 -B evidence/make_certificates.py
python3 -B evidence/verify.py
```

生成五份JSON证书，采用准确整数与分数。归档验收额外比对重建前后的五份证书字节哈希，以确认生成器可重放。

## 通用有限支持入口

```bash
# 本轮已完成的整个2357支持域；不是一个原NC3输入
python3 -B evidence/smooth_gate.py --support 2,3,5,7

# 更一般支持：只求已证明的参数界，不登记末端完成
python3 -B evidence/smooth_gate.py --support 2,3,5,7,13 --bound-only

# 资源保护演示，应返回INCONCLUSIVE_RESOURCE_LIMIT，退出码2
python3 -B evidence/smooth_gate.py --support 2,3,5,7 --max-index 10
```

默认输出 `EMPTY_CONDITIONAL_INTEGER_CORE` 的精确契约：假设同原i3规范最小支且Dv=DW=y，A或B支持包含于给定集合；该必要整数核心为空。不是原反例，也不宣称全i3闭合。

若其他支持产生整数候选，返回 `NECESSARY_CANDIDATES_NOT_NC3` 并列出尚未检查的原条件。资源上限不返回EMPTY。支持中每个整数均通过确定性试除素性；过大素数默认触发资源保护。

## 证书与全称论证分工

`smooth_terminal.json` 全量含356项、全部下取整与两个正间距；验证器重新生成清单，另用递归枚举与Newton整数根核对。

`uniform_bounds.json` 支持严格系数/常数检查。全参数根夹逼、指数提升和逻辑回传由PROOFS正文承担；不能把样本PASS替代它们。

`valuation_periods.json` 保存完整模5/7周期、Pell模32矩阵与精度合同。有限取样只标注DIAGNOSTIC_ONLY，不冒充所有指数的证明。
