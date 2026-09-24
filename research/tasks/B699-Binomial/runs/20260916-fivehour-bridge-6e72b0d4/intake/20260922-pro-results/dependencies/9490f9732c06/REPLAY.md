# REPLAY · NSB64

## 环境与主入口

本轮实际环境：Python 3.13.5、SymPy 1.14.0。代码需要 Python 3.10+；除 SymPy 外
只用标准库。不同版本若给出不同序列化或断言结果，应保留错误，不跳过检查。
`logs/environment.json` 记录实际版本，不代表全版本测试。

```
python3 -m pip install -r requirements.txt
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

网络只用于可选安装；已有依赖后，主重放完全离线，不读写仓库，不调用任何 API。
重放默认只读证书，重新计算并比较；不需要重新生成输入 ZIP。

主重放依次完成多项式恒等式重建、全参数单项控制、三种奇偶分支的常量检查、
精确有理区间与失败模型重建，以及进位回传实现单测。
这些程序检查不是 Lean，也不能代替 PROOFS.md 中均值定理、取整及依赖适用性论证。

## 检查一个 h

```
python3 evidence/same_input_consumer.py --h 332931
```

这里 h=577^2+2，输出 m=577、A=3、applicable=true。
这个模式只说明参数满足已证明的排除门，不构造 n,j，也不声称存在 NC3 点。

## 检查同一原始输入

```
python3 evidence/same_input_consumer.py --input input.json
```

JSON 必须包含整数 `n,j,h,P,Q,v,nu,q,r`。检查器验证原区间、q 素性、
q|C(n,3)、Q=q^r、全部列出的恢复/范数/走廊和 NSB64 条件。
成功时返回原 q、原 n,j 和进位层；失败返回 NOT_APPLICABLE，不反推 NC3。

素性采用精确试除法，仅作为可执行参考，不适用于巨大 q 的高效验收。
论文主定理不依赖这段素性算法的运行成本；实际使用大素数证书需另接已核验证明器。
本轮未提供满足 NC3 的正例，因为成功消费者本身否定 NC3。

## 可选探索，不参与证明

```
python3 notes/probe_core.py
```

这只重放奇 Q<=20000 的弱核心扫描，结果与 notes/core_scan.json 比较。
它故意没有原 n=c2^s、完整源分拆等必要条件，唯一记录不是原题反例。
主定理没有把这个 cutoff 或“没有更多点”当作任何全称结论。

## 证书重建（通常不需要）

```
python3 evidence/symbolic_certificate.py --write
python3 evidence/phase_probes.py --write
```

这些命令只重建本目录证书；若文件改变，应重新检查并生成 SHA256 清单。
交付的主入口不运行 --write。

## 证据边界

`logs/replay.log` 是本轮成功运行；`logs/first_replay_failed.log` 保留最初一次实现
常量漏加 1 的真实失败，修复见 logs/IMPLEMENTATION_FIXES.md。
`logs/portable_replay.log` 是隔离副本中的重放，不是另一个作者的独立审读。
本包的“全参数”来自 PROOFS 中的严格不等式与符号证书；10 个区间探针和
14,312 个小进位事件只检查实现，不是闭合末端。
