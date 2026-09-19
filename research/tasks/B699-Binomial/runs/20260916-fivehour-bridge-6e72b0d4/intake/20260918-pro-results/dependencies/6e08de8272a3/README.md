# B699 Pro E · i3 立方匹配交付包

入口：**OVERVIEW.md**。最强结果、准确覆盖边界见 **REPORT.md**，完整证明见 **PROOFS.md**，失败与不能反推的弱模型见 **FAILURES.md**。

新充分条件：合法原数对上，`(nj(n−j))²(n−2)(j−1)(n−j−1)` 为整数立方，就存在同时整除两项二项式的奇素数。一般i3、一般omega(t3)=2仍未闭合，未认证相对于全部旧消费者并集的非空新差集。

## 文件

- sources/：唯一输入总览的原字节。
- SOURCE_ADOPTION.md：固定提交、blob/文件哈希与依赖等级。
- scripts/：消费者、证书构造与不同算法检查、恒等式核验、弱模型及有界探测。
- outputs/：实际精确输入域/结果、原始数对见证、损坏证书拒绝、公式核验。
- MANIFEST.json：全部成员的SHA-256（不含清单自身）。

## 仅核验核心有限末端（Python标准库）

在包根目录执行：

```sh
python3 -S -B scripts/check_manifest.py
python3 -S -B scripts/verify_certificate.py \
  --certificate outputs/CERTIFICATE.json \
  --output /tmp/B699-E-cube-verification.json --negative-tests
python3 -S -B scripts/cube_consumer.py 8 4
```

`cube_consumer.py` 未命中时返回 UNKNOWN，不宣称原题失败；命中时依据本包作者纸面定理给出存在性，不输出一个伪造的显式素数。

## 从源码完整复现

Python 3、SymPy（本轮1.14.0）、支持unsigned __int128的C++17编译器。除SymPy外Python脚本仅用标准库。本轮Python为3.13.5。

```sh
bash scripts/replay.sh /tmp/B699-E-full-replay
```

新输出放在指定目录，保留冻结outputs不被覆盖；编译产物在临时目录，退出后清理。不联网、不自动安装依赖、不启动后台任务。

程序只证明有限末端和精确代数核验。无限定理由PROOFS的纸面论证承担；同作者两个算法不是独立研究者验收，也不是Lean内核证明。

本轮只交付本地ZIP，没有写入远端仓库或更新题目级唯一总览。
