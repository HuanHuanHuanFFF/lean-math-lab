# i13 复用边界

| 层次 | 可直接复用的已验接口 | i13 尚需的接合 |
|---|---|---|
| 完整素数幂定位 | B699LowIndex.binomial_prime_power_localization，参数i完全通用；指数保留v_p(choose)+v_p(i) | i13的PrimeWindow和五分量定义；p=13必须保留额外一层，不能按p>13改写 |
| 小素数积/三窗口 | small_prime_part_eq_prod_small_primes；noCommon_bernoulli_size(i,r,s) | 实例i13,r4,s9：五小素数{2,3,5,7,11}、λ14、E126、K；n≥156。不是已有绝对高度 |
| 实际Padé代数 | PadeInteger、Content、RawDet、Rows、Moment/Identity、HomRemainder，ABC及x/y通用 | 各新种子必须填真实参数、两δ、a/b及D的尺度；同一个m；D>1的余项D^(2u+1)不得丢 |
| Q/E增长 | Growth/ActualKernel、Normalization和FactorialCommon通用 | 六(c,d)族中(3,2),(5,4),(5,3)已有F实例；(7,4),(7,5),(8,5)需新实际F实例。8种子各自λ/四树/初值要验 |
| G | RationalDivisor.rationalDivisor_le_qContent对全部u,v已验 | 它不是旧BFT的L1。已有(5,4),(5,3)有限G工具可复用实际界，不能直接升级为旧L1,m0；其它族新有限有效指数界仍缺 |
| m选择/素数指数容量 | DiscreteSelector/LeastExponent、I11Edge/Capacity虽有I11名字，声明参数完全通用 | 新权重、y/D/a/b、窗口误差≤12或源24、Y0、m0、短幂证书须重新提供；保留最小m上下界 |
| 立方指数块 | CubicBlock.blockCheck_sound、CubicCover.pairCheck_sound、coverageCheck_append有显式w | 可取w12，但全部25位移、10对素数、旧562块均需新实际验收；原2^8192也是未验输入 |
| CRT参数化 | CrtPair的P,Q,w,d,capA,capC完全参数化，含负/零d、空参数段 | 当前CrtGrid不是完全通用：Cell.shifts固定21项−10..10，rowCheck固定w10；Grid窗口及HeightCap末端绑定offset<11。必须新增w12/25项适配，不能只填i=13 |
| 末端 | B699LowIndex.goodSegmentCheck i r s / goodSegmentCheck_sound、common_of_large_divisor通用 | I11TerminalCover.Witness固定i11,r3,s7及special330。i13须接i13,r4,s9，另给n126的12段/50个j完整消费者及新2228候选区间 |

I11SmallPrimes.Components/Window、I11WeightedProduct.Product/Tail、I11Cubic、I11CRTConsumers、i11的数值表和Special330均为专用适配器。i11的四因素乘积、S640、2^15360、2^98、六对素数、窗口宽10，不能按文件名或成功日志自动用于13。

特别是旧i13使用位置加权，而i11高度链使用四因素标量积。二者的变量都要区分：这里用X_p表示完整binomial p-component，用A_p表示窗口余因子；不能把组件大小界误认为余因子下界。
