# 下一轮 Pro B 入口

先读 REPORT 与 notes/PROOFS §§2–4。源包及采用文本在sources，输入SHA见SOURCE_ADOPTION。

## 可登记

- 精确有理根分母：NC3的实际变换Ψ首系数L=2^s、二次项奇；非整数有理根的既约分母恰为L。
- A<T|g 下排除全部零余式；同一商余式有完整6cg(n−2)因子。这是NC3结论，不是双投影等价式。
- 新通用核允许所有T≥2，包括偶T；X≥AB及TX²≥AB²(TB+2)足以证明对应全部合法分配Common。
- 奇素数整行及尾块2/3级别扩展；同源旧门槛全包含，给出严格不同的无限族。
- 等距三位e≥4全部闭合，P=3全部等距三位闭合；P≥5只剩(e,f)=(2,1),(3,1),(3,2)，P及数字未界。

## 不登记

没有新整指标；R7仍3..9；未界min C_s/F/缺陷或一般奇部；没有Lean/独立研究者/人类审稿。与全部历史消费者的差集未审计。有限探针P≤1000没有找到v2(n)≥37行，不外推。

## 接受及恢复

python3 -S -B verify_manifest.py
python3 -S -B code/reproduce.py --record replay/local

标准库主链只重跑5个新接受脚本。probe_zero.py使用SymPy，仅为已运行发现探针，不在默认接受依赖中。不要重跑sources/previous.zip的历史链。源码/输出原字节哈希由MANIFEST固定。
