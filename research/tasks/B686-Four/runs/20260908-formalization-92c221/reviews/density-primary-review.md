# 规范矩阵密度：主线程独立源码复核

2026-09-08，主线程复核Astra bounds的实现；没有修改数学源码，也不替代fresh内核验收。

已逐项检查实际SystemBounds、Growth、Consumer、QuarterConsumer和Provider接口。support覆盖全部k×k格，未把少数行列另行忽略；global_product的正性推出各格正且residual≥1。非单位格由两两互素推出数值两两不同，再给(s+1)!≤P，未假设格值递增或矩阵额外存在性。

Growth在s=0时单独处理，s>0使用Stirling的已证下界及log(k²/s)≤k²/s−1，统一得到2s log k≤log(s!)+k²。没有假设s/k²预先有正下界，故渐近结论覆盖所有支持大小。对端点C B^k k^(e+1)、e≤ak的显式误差趋零，阈值只依赖a,C,B,ε，独立于n,m、具体矩阵与其支持。

全偶数消费者实际调用完整centered高度，参数C=20,B=16,a=1/2。四整除消费者实际调用完整quarter高度，参数C=2,B=2,a=1/4；把2^(k/4+1)上界为2·2^k只放宽高度，保留1/8主指数。两者均从原题H实际构造规范矩阵，不假设SystemInput存在；另一个全称版本对每个有效SystemInput给同一界。结论是∀ε>0∃K∀k≥K的统一尾部，未宣称任意有限k精确s≤k²/4或k²/8。

复核未发现实质性数学或量词问题。独立fresh证据分别为verification/canonical/density/20260908T113015661794Z/evidence.json与20260908T114721436330Z/evidence.json。完整证明链不需要proper-support/jet非公共零，也没有使用B677、Dusart或MRSTT。

复核版本SHA256：

| 文件 | SHA256 |
| --- | --- |
| lean/canonical/density/SystemBounds.lean | 4e669fcbb8ff45a6709ea73d1ec8aa2d9f73da7c718e88ec8859082fbc2462c5 |
| lean/canonical/density/Growth.lean | 5b2f4bceb33263bd2664b17c95169a3adb2ebe7d3f0223f2db559f483c240e3e |
| lean/canonical/density/Consumer.lean | 7bc2331a2be3dcc04e1e013dfb2e42b2b06ee10b87071d451c4c0ee12754cd50 |
| lean/canonical/density/QuarterConsumer.lean | 6982fd40cb358f50b29a27d69d45a13842cf0444793e6dcfb628b9c3dd33b487 |
| lean/canonical/Provider.lean | f2f206cf19f5b8d3c1a4464718fa0fbfedc37c99fced3f72c84a83e6043c040f |
