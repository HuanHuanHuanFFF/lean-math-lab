# 短间距消费者独立审查

结论：对下述冻结源码的数学归约、全自然起点覆盖和验收对应关系，未发现实质问题。本审查只读源码并核对既有 fresh 证据，没有修改或重编被审模块。

## 实际目标与覆盖

最终 `B686ShortGapConsumer.original_gap_ge_eight` 对所有自然数 `k,n,m`，在 `2≤k`、`n+k≤m` 与原积等式下证明 `n+k+8≤m`。没有额外的 Sylvester–Schur、Mahler–Størmer、删平方或有限起点假设。

先令 `h=m-(n+k)`。分离前提确保 `m=n+k+h`，而目标的否定给出 `h≤7`。全长距离消费者 `original_statement_sixty_four` 在同一原积等式和分离前提下给出 `k²<64(k+h)`。若 `k≥71`，则 `k²≥71k` 且 `7k≥497>448≥64h`，矛盾。因此 `k≤70`。该归约没有继承距离界内部较大长度分支的门槛：其公开接口已经覆盖全部 `k≥2`。

- `2≤k≤21` 直接调用既有 `no_small_gap_k_le21`。
- `22≤k≤70` 和 `0≤h≤7` 共有 `49×8=392` 对。`sign_certificates` 的命题本身量化完整的两个 `Icc`，并由 `decide +kernel` 检查每对的两个严格邻符号。
- 对每个被核验的截点 `a`，旧 `not_four_of_adjacent_signs` 根据 `n≤a` 或 `a+1≤n`，利用乘法形式的 `cross_antitone` 与区间乘积严格正，排除所有自然起点 `n`。

具体邻符号是 `4P(a)<P(a+k+h)` 和 `P(a+1+k+h)<4P(a+1)`。方向与两侧单调比较一致；没有把非严格不等式误用于整数夹逼。`cutoff` 的列表默认值不能掩盖缺项，因为完整命题仍要求相应两个严格符号成立。Python 只提供待核验截点数据，不能建立该命题。

## 验收对应关系

既有证据：`verification/20260908T120354Z/evidence.json`。
SHA-256：`5a03170094b979a67a7cfbc3141e230ae513565791459faa82e7eab9b2beca46`。

本次独立检查确认：14 个项目依赖源码与证据 SHA 全部一致，14 项编译均为退出码 0，原始编译日志 SHA 全部一致，根的 3 个声明均通过标准三公理 guard。该证据记录从源码重建完整项目依赖闭包；本审查不把 Python 对截点的复算当作 Lean 验收。

本次重点重新阅读两个新模块、旧 `Round3SmallGapCertificates` 的完整单调性与全起点消费者、全长距离公开接口及其长度分支。下表冻结完整验收闭包的实际源码；不表示本审查重新逐行证明了所有旧距离模块。

| 源码（相对 B686-Four） | SHA-256 |
| --- | --- |
| `lean/Round3SmallGapCertificates.lean` | `6614cf5cd343f6fd3603baf34ee86bda5af5802a7b0093f9baf8a65e11fa8781` |
| `runs/20260908-formalization-92c221/lean/shortgap/BoundedCertificate.lean` | `a616f5322b08321ed3aab535c77bb7868e59ff7118445240d6047054464f4fda` |
| `runs/20260908-lcm-distance-7cab35e/uniform/InitialLcm.lean` | `81d87e1c0cb3d7cabfa4d2b620c2f6c48f8442a26d462efae020acf05db8920f` |
| `runs/20260908-lcm-distance-7cab35e/uniform/FactorialTail.lean` | `ea37f4cc5df693d60d1edb41b5ebbd56fc08d876d1baa8289394f313cf5faae8` |
| `round8/lean/BigPrimeSupport.lean` | `cd3b1e0fd5282723597acaa2d5f3290917d9756a9e2c1d682668ac77a6b98d2e` |
| `formalization/UniformDistance/SmallPrime.lean` | `3d9140131479b10d35ccd87884381e225331b2b77c5c80ae211ab9fe19273a6f` |
| `independent/TargetBridge.lean` | `b26c40df78c176105d86d8d01789a927f2a3d9ba1855afde14120c38b2234c57` |
| `round8/continuation/SizeBounds.lean` | `7da4f63de39ca33f7817e4b8c5d208c293cbb6b34f6d128128826d0544ee01d1` |
| `runs/20260908-lcm-distance-7cab35e/main/MatchingLcm.lean` | `17cfb21891204df0eff8e4e6b33f9d25b4a4c2e462c524c1585aca9c8440ac37` |
| `runs/20260908-lcm-distance-7cab35e/uniform/LcmDistance.lean` | `8f3dc4e7d82e4e8ef123d12ac424c49054678a4283be05fa09a6657f2078e4e4` |
| `formalization/UniformDistance/Boundary.lean` | `324344c3d6b17ace5cc78289655324d70a6002c8c0bdfbb923b24b173a55ceac` |
| `runs/20260908-lcm-distance-7cab35e/uniform/UniformDistance.lean` | `608912bb95b94d5c6ddef7cb8bd382e788042c5753959bd68a7be471d0dd008e` |
| `runs/20260908-lcm-distance-7cab35e/uniform/Consumer.lean` | `1cdc896b7b204b6b417ae943a33ef01000db9bb032ddd44ac7c0d66c1340db62` |
| `runs/20260908-formalization-92c221/lean/shortgap/Consumer.lean` | `ca41ccbda42bcbb005c3ed1f85c2b0ad9d5a5dd5dee4aa29ab559b9e967c4572` |
