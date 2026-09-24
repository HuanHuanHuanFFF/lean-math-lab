# REPLAY · 第四轮

## 环境

本轮实测 Python 3.13.5、SymPy 1.14.0。代码使用 Python 3.10+ 语法。
已有依赖的环境可离线重放；本包不捆绑SymPy，所有数学输入及证书均在包内。SymPy只用于精确符号展开，不作为原题数学判定黑箱。

```bash
cd B699-D-i3-20260921-round4-midgap
sha256sum -c SHA256SUMS.txt
python3 -m pip install -r requirements.txt
bash replay.sh
```

若环境已安装指定SymPy版本，可省略安装。replay.sh 禁止生成pycache，不修改冻结证书。

## 每一步实际检查什么

| 脚本 | 检查 | 不代表 |
|---|---|---|
| symbolic_certificate.py | 同输入恒等式、带符号残差、新A=-2式、周期性 | Lean或旧前置独立核验 |
| verify_certificate.py | 标准库Fraction逐项检查全参数上界与严格间距 | 外部独立审读 |
| phase_evidence.py | 47个h的有理区间证书和非整数弱模型 | 完整h末端、原题扫描证明 |
| integration_tests.py | 23177个估值/原素数幂单元测试及拒绝协议 | 新无界覆盖 |

主定理无有限h/n末端；它们由PROOFS中的全参数不等式和16状态的周期恒等式给出。

## 单独门检

```bash
python3 evidence/same_input_consumer.py --h 16383
python3 evidence/same_input_consumer.py --h 65533
python3 evidence/same_input_consumer.py --h 266773
python3 evidence/same_input_consumer.py --h 264709 --phase
python3 evidence/native_phase.py --h 16639
```

这些整数是参数诊断，不是原NC3数对。16639得到NO_CARRY_THIS_LAYER，不得解释为NC3。

`--input path.json` 的必需整数键为 `n,j,P,Q,v,nu,h,q,r`。输入必须满足显示的全部核心关系和同一恢复；q>10^6时需q_certificate，其格式为递归Lucas完整证书：

```
{"prime": q, "base": a,
 "factors": [{"prime": ell, "exponent": e, "certificate": ...}, ...]}
```

factors须完整分解q-1；小素数叶由确定性试除核验。未提供证书就拒绝，不默认 probable-prime 为素数证明。本轮没有构造满足所有原条件的示例输入JSON。

## 生成与验证分离

作者生成入口为 `symbolic_certificate.py --write` 和 `phase_evidence.py --write`。
正常重放不使用 --write，而将重新计算结果与已冻结JSON严格比对。修改证书后，SHA256检查会失败；不要直接覆盖日志再声称原哈希仍有效。

logs/replay.log 保存实际重放输出；logs/portable_replay.log 保存另一隔离目录中的重放输出。
SHA256SUMS.txt 对除自身之外的所有文件校验；MANIFEST.json不自含哈希，避免循环。
ZIP自身SHA256位于包外同名.sha256文件。
