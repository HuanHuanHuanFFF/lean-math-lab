# i11 (2,5) selector candidate

固定参数为 Z=115572769905797、M=329、Y0=2^15359。候选使用已冻结的 short-power-bases 数据，并将 Z^256 的上下界作为短基；前驱由 Z^328 ≤ 2^15361 = 4·2^15359 得到。

p 端使用 J=2^35000、alpha=752、短基 2^1≤2^1 与 2^11959≤Z^256。q 端使用 J=5^15000、alpha=748、短基 5^4096≤2^9511 与 2^11959≤Z^256。六条 rate/base/lookahead 由 conditions_from_short_bases 生成；未包含 qRate^329 > 48 证书。

大选择器幂不直接规约。局部 exponentiation.threshold 只用于 9511、11960 等短基；前驱的 2^15361 改写使用 two_pow_add_two，避免直接展开为巨大选择器幂。

数值核对、输入哈希和指数余量见 numeric-audit.json。候选文件位于 candidate/lean/I11Numeric/，未运行 Lean/Git。
