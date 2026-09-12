# B699 Pro A — 双高幂联合高度与固定一指数后的有限包络

入口阅读：REPORT.md → notes/PROOFS.md → notes/FAILURE_BOUNDARIES.md → HANDOFF.md。

## 复核新义务

```bash
python verify.py
```

仅需Python标准库。命令重验本轮新小证书与诊断，不运行旧content/局部大整数块/i9CRT，不运行Lean。默认输出logs/receiving/；可用`--log-dir logs/my-replay`另存。发现脚本用NumPy/SciPy，不是接收依赖。

## 计算固定指数的完整有限包络

```bash
python code/fiber_bounds.py --a 1960001
python code/fiber_bounds.py --b 422064 --m 3
```

命令只输出精确符号幂界和另一指数范围，不物化几百万位整数，不启动n的天文扫描。外层a或b仍无界，不能把CLI输出叫作整题完成。

## 文件布局

- notes/PROOFS.md：新无限推导、全部前提、cut分支与消费者。
- evidence/new_certificate.json：44格、8位置、32分支和整数常数。
- evidence/stronger_relaxation_witness.json：仅所列有限模型的精确可行证书，不是整数反例。
- evidence/primitive_ray_discovery.json：发现生成，随后由新接收器精确验证原始—对偶证书。
- code/：生成、接收、CLI和失败探针源码。
- logs/：实际完成的接收记录以及区分开的中断／完成发现日志。
- frozen58/：最新58族原件的非ZIP成员，逐字节核对。
- adopted/INPUT_58_FAMILIES.zip：唯一冻结原输入原字节副本，包含旧依赖。
- SHA256SUMS：除清单自身及缓存外的逐成员摘要。

纸面＋新有限义务接收；旧依赖按冻结接口采用；未Lean。R7和58族不变。
