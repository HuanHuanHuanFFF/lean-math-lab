# c7d5 实际D的全m均匀界候选（未运行Lean）

本包给所有m≥1的真实rationalDivisor(5m,2m−1)下界

    D0(m)≥23(11664/3125)^(m−1)/(24m−1)，

并直接实例化已验邻项定理得到D1(m)=(5m/2)D0(m)，其中D1=rationalDivisor(5m−1,2m)。最终还把这些界接到实际qContent，未添加D-step、G或高度假设。

Actual.lean从实际factorialNumerator/factorialDenominator定义证明两闭式与D0递推。为沿用已验的阶乘步进模式，源码保留7次raw分子与分母；它们与纸面约去2m后的比值完全一致。Certificate.lean的恒等式是raw清分母差=2xP5(x)，P5的六个系数全正，因此真正使用的是指定五次差证书。Uniform.lean把H(m)=(24m−1)D0(m)接到已验lower_geometric_from_step，从H(1)=23推出全m界。所有m=0的截断边界都未混入目标。

可选Geometric.lean取rho=65535/65536、rate=(11664/3125)rho、constant=23/[24(11664/3125)65536]。通过有限几何和证明m rho^m≤65536，得到两实际D及qContent的constant·rate^m下界。此层不检查共同渐近容量、不选新Y0，也不宣称旧8192已修复。

建议主任务串行按AAudit、CAudit、UAudit验必要三层，再按需GAudit和Audit验可选层及全部公开根。目标短目录lean/I13G75，准确imports和来源SHA见SOURCE_MAP。实际通用邻项模块位于lean/I11DivisorSevenTwo/Adjacent.lean，数学namespace仍为Math.B699.RationalFactorialDivisor；它不是仅适用于i11的数值定理。

本包4实现源、47公开根（36定理）均有完整证明文本及typed/#print axioms入口，无sorry、axiom或native_decide。只做m1..80的独立Fraction核对、精确多项式系数卷积和审计器合成日志自测；这些不代替源码中的全参数证明或Lean验收。m0处D1关系的真实反例另记为边界检查。

当前没有运行Lean。主任务须检验实际D身份及field_simp/类型推断后方能接受；可选新Mathlib导入的缓存状态已列出。没有修改旧冻结包或共享源，没有Git操作。预期价值是补一个全m有效D/G来源；i13位置加权桥、新共同高度、其它边及最终原题仍独立未完成。
