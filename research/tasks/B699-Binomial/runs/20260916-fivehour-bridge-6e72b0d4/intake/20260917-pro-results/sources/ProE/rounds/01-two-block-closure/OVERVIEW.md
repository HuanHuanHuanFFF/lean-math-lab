# B699 Pro E 接续入口（本轮新写，不是输入总览副本）

日期：2026-09-16。先读 REPORT.md；核验读 PROOFS.md；来源读 SOURCE_ADOPTION.md。

## 原题

对全部自然数 1≤i<j≤floor(n/2)，存在同一个素数 ell≥i 同除 C(n,i)、C(n,j)。本轮主攻 i=3，所有源幂完整保留，孤立3单独处理。

## 实际基线

指定分支 huan/b699-fivehour-20260916-6e72b0d4，实际读取 HEAD da4d9bab862e8d3a3cc5e1676be52e4fa82722f3；输入总览的历史数学快照是67b494c841d41a70b7e209940be417637a59a235，二者不混同。总览完整读过，未得到其原字节。未假设读过其他会话新结果。

所读 B 稿保留 n=AP^E+BP、E=4/5、P,A,B无界。本轮用新余式把这个分支完整排除，并扩展如下。

## 本轮可核验的新纸面结论

- TB：T=P^h，P任意奇素数，h≥1；E>F≥1，1≤A,B<T；n=AT^E+BT^F 的 i3 全部合法 j 闭合。包括 T=3,F=1，不漏孤立3。
- GB：T=P^h≥5，s≥1，E≥2s+2，1≤A<T，1≤B<T^s；n=AT^E+BT 整行闭合。
- S1/S2：T任意奇素数幂，1≤A<T；n=AT^E+1,E≥3 或 n=AT^E+2,E≥2 整行闭合。
- BR：上述行若 gcd(C(n,3),105)=1，则同一见证≥11，可传至 i3..9 的全部相应合法 j。

证据为作者纸面＋真实精确回归，未 Lean、未独立研究者审稿。没有新增完整指标，R7不变。没有全历史覆盖差集证书。

## 新核心（可直接复用）

n=T(AX+B), j=T(uX+v), H=T(Av-Bu), w=u(A-u), d=2u-A。

    Q=lambda(H+u)(H+u-A)/(n-1)>0，
    R=(Q-3lambda w)H+2d(Q-lambda w)。

第一窗口和第二窗口联合给 T(n-2)|2mu R。数字盒中 0<Q<lambda A、A<T、T>lambda 保证 R≠0；大小比较给 0<|2mu R|<T(n-2)。详见 PROOFS §3–4。一般小部 L,M 版本在 notes/GENERAL_INTERFACE.md。

旧 ROW-3 n>3oddpart(n)^4 在 §2 完整重建，不是本轮新发现。

## 剩余无界域

仍有一般 n、奇部及2指数、alpha/beta，以及三个或更多非零块、无长空隙/较大高位系数。未证明能把任意 NC3 输入重编码成 TB/GB 格式。i4..9 除上述带条件子族外不受影响。

## 禁止误用

尾部 F≥1 不可删；普通合数底数不能当 Lucas 底数；块值≤不能反推逐位无进位；R=0 不能忽略；旧行界不能施加于只满足W1的弱模型；跨指标必须保留低素数过滤。

## 下一项检查

独立核验 PROOFS §1–5（尤其完整3幂、ROW奇偶、小部、R零点、T(n-2)整除），再看 §10 的任意长低位块扩展。随后把同一商余式用于三块/短空隙或其他指标的小部接口，而不是继续两位 E4/E5。

## 文件与复现

运行 scripts/verify.py、scripts/verify_shifted.py、scripts/verify_general_block.py；实际输出在 verification/。样本范围与数学证明分开。所有交付文件 SHA256 在 MANIFEST.json。未 push、PR、合并；归档建议见README。用户未设置本轮总时长，不继承旧五小时预算。
