# 原稿映射：Lemma 4.1 与 §7 整数步骤

## 实际 Lemma 4.1 的定义

来源：[固定作者稿](../../../20260911-web-i18-6f4334c9/reviews/huan-i18-5e2d13bb/publication/BFTpaper0207.pdf)，页 5–10，SHA256 `0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c`。

`c,d` 是互素正整数，`c>d`，`s=c/d`，`0<z<1`。第 5 页定义

\[
\alpha(s)=\frac{(s+1)^{s+1}}{(s-1)^{s-1}},
\]
\[
u_1=\frac{s(2-z)-\sqrt{s^2z^2+4-4z}}{2(1-z)(s+1)},\qquad
u_2=\frac{sz+2-\sqrt{s^2z^2+4-4z}}{2z(s+1)},
\]
\[
Q(s,z)=\alpha(s)u_1^{s-1}(1-u_1)(1-u_1+zu_1),
\]
\[
E(s,z)=\alpha(s)u_2(1-u_2)(1-zu_2)^{s-1}.
\]

上式变量为 `u_1,u_2`（显示公式中的 `u`），不是另一个数论函数。它们分别是原文两个 `[0,1]` 上函数的最大点，见第 6 页说明。页 7–8 定义

\[
C_{1,\delta}=
\frac{\alpha(s)^d(s^2-1)^{(-1)^\delta/2}}{2\pi Q(s,z)^d}
\int_0^1u^{c-d-1+\delta}(1-u)^{d-\delta}
 (1-u+zu)^{d-\delta}\,du,
\]
\[
C_{2,\delta}=
\frac{\alpha(s)^d(s^2-1)^{(-1)^\delta/2}}{2\pi E(s,z)^d}
\int_0^1u^{d-\delta}(1-u)^{d-\delta}
 (1-zu)^{c-d-1+\delta}\,du.
\]

其中 `δ∈{0,1}`，因而 `(s²-1)` 的指数分别为 `1/2`、`-1/2`。两条 Lemma 4.1 结论均为严格 `<`，外层指数是 `dm`，不是 `n`。这里仅固定其原式映射；Lean 候选不定义、更不证明这些量。`m,n` 的具体端点仍要和 §3 定义域及实际应用的 `m>m₀` 一起检查。

## §7 到候选的映射

页 26 用 §3 和 `G(c,d,n)` 证明清分母后的 `P,Q,E` 为整数，并得

\[
 (ap^{k_0})^{cm}P-(bq^{l_0})^{cm}Q=E.\tag{7.3}
\]

结合 `0<p^{k₀cm}x₁''-q^{l₀cm}x₂''≤D`，可得

\[
p^{k_0cm}|b^{cm}Qx_1''-a^{cm}Px_2''|
 \le b^{cm}D|Q|+|E|x_2''.
\]

Lemma 3.2 让 `n=dm,dm-1` 至少一项左侧绝对值中的整数非零；页 27 由此得到

\[
p^{k_0cm}\le b^{cm}D|Q|+|E|x_2''.\tag{7.4}
\]

对应候选的 `bft_7_4_of_two_rows`。该候选不预设 `(7.4)`，而是从整数域、原始两行行列式非零、`|ru-sv|≤D` 和共同缩放因子非零推导它。实际 `P,Q,E` 的整数构造及行列式前提仍待 §3 / G 的独立证明。

## 阅读与证据限制

本地文件哈希和版本已检查；用 pypdf 与 pdfplumber 独立提取了相关全文页，并读取作者网站同名 PDF 的相关内容。相关本地页已用现有 pypdfium2 轻量渲染至 `source-pages/`。本会话的本地 `view_image` 因既有 Windows sandbox helper 启动故障未能显示图片；Web screenshot 工具只返回了截图引用，没有给出可见图像块。因此不声称完成了视觉校对。常数指数结构另由 pdfplumber 的排版提取核对；本候选的整数论证不使用这些分析常数。
