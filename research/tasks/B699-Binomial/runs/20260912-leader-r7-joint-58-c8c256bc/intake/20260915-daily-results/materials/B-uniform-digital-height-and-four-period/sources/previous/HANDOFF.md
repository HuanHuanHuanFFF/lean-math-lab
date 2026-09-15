# Pro B 接续

先读REPORT.md和notes/PROOFS.md。R7不变，无整个i3闭合，无一般缺陷上界。

可登记：

1. 二幂行：σ(j)≤3（任意奇偶）或j奇且σ(j)≤8的全部合法输入闭合。无限指数由数字复杂度界送入73行，不是扩大β阈值。
2. 一般k≥4、偶x且k|x的循环族 n=x^k、j=xΣx^h/k 已全参数闭合；第一投影对整个族成立，第二投影经三次消元只余33个有限底部。
3. 正倍数的循环数字和引理及一般完整W消费者；明确CRT混合族同时覆盖R7，参数t无界。差集只与已读GAP/DY/DYADIC/LOG比较。
4. 四个1的第一投影存在真实无限兼容族，不能把只看第一窗口的表推广为统一高度。

不登记：一般min C_s/ℬ/F受控、所有二幂行已闭合、任何Π弱解是NC3反例、全体旧消费者并集差异、Lean或人审。

最小正向依赖：NC3的完整幂投影；D-as-B §1和§2.1的H²U身份与g⁴<3n（正文重写）；初等数字和及CRT。无出版高度，无旧大型接收重跑。

源码主接受全部标准库：

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

code/exploration是发现代码，可含SymPy，不进入默认重放。factor_seed.json不是素性oracle；check_evidence.py逐素因子完整试除。

下一判别点：σ(j)=4的第二窗口模板。不要以提高低复杂度或β上限替代共同结构证明；也不能将CYCLIC里通过第一窗口的点称为完整Π解。
