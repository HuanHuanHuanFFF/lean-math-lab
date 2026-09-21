# HANDOFF · B699 D / i=3 · 第十轮 BICOF2 / BLOCK-MIX

## 入口与权限

先读 REPORT，再读 PROOFS P0--P8、FAILURES 和证书。第九轮原包冻结在 `inputs/round9-evidence.zip`；Overview 同步冻结。不要重跑 SMOOTH2357、旧 BICOF4 或本轮 one-block 状态表。

本轮只创建会话产物；仓库未修改、提交、推送或发布。没有 Lean、外部独立审读或全仓历史净差审计。

## 同一原输入核心

继续固定同一个合法 `(n,j)` 的规范最小临界两底、真实 mu1、平衡域：

```text
P=Q+hv，2nu=h(Q-v)-Q，vnu²=PQ²-1；
n=PQnu+2=c2^s，j=(P+nu)Q²，k=(Q²+vnu)P。
d=Q-v>=17，d1 mod16，Q/3<v<Q；W=(d³-1)/v。
d²+d+1=3y²，v=Ay，W=By，AB=3(d-1)。
U_t+X_t sqrt3=(2+sqrt3)^t，U_t=2y，d=(3X_t-1)/2，t1 mod8。
```

置

```text
a=(t+1)/2，b=(t-1)/2；AB=9U_aX_b。
```

## 本轮已完成，不再派为开放任务

1. `d<357B²`；派生 `A²<2^12d`、`Q²<2^12d³`、`n<2^41d^6`、`s<=floor((114t+349)/10)`。
2. `3∤t`，等价于 `t=8k+1` 时 `k!=1 mod3`。
3. 整个 `B|9X_b` 条件域退出：乘子 m<=39；m1/m2纸面闭合，m3..39完整非剩余证书。
4. 整个 `B|9U_a` 条件域退出：乘子 m<=250；m2纸面闭合，其余222个无状态、27个由完整证书排空。
5. 剩余必须满足

```text
B_U=B/gcd(B,9X_b)>1且B_U|U_a；
B_X=B/gcd(B,9U_a)>1且B_X|X_b。
```

## 新准确前沿

平衡支现在是真混合分配。首选将

```text
gcd(U_a,X_b)=2
```

及准确 2 赋值接入，分成：

1. 两侧均有非平凡奇块；
2. 一侧的缺额完全由总 2 部跨块造成。

随后必须使用至少一项真实原条件：

```text
Y²=(Q^5-d²)/(Ay)，Q=d+Ay为原奇素数完整幂；
P=Q+hAy为另一个原奇素数完整幂；
n=PQnu+2=c2^s；
原全部高层无进位。
```

BICOF2 给 B>sqrt(d/357)，A<57sqrt(d)，故纯支持/大小模型已经更窄。成功目标应是删除上述一个无界混合子域、界住变动支持，或给出一般绝对界；不要只扩大固定素数表。

## 首个可否证实验

证书中的 t41 混合模型满足 Pell、AB、BICOF2 与两条 one-block 否定，却平方恢复失败。任何拟议“混合+大小即闭合”的中间命题都先对照它。若增加原 Q/P 素数幂或 n=c2^s，须明确写出模型缺少的那条条件。

## 禁止混淆

* BLOCK-MIX 不等于两个不同奇素数；2 部可能跨块。
* 状态证书素数只是局部非剩余见证，不是原题共同素数。
* `m<=39/250` 是本轮条件分支中的证明界，不是全题候选规模。
* BICOF2 只在平衡域使用。
* 必要核心候选不能反推 NC3。

## 重放

```bash
sha256sum -c SHA256SUMS.txt
bash replay.sh
python3 -B evidence/block_gate.py --side U --multiplier 117
```

`block_gate.py` 只报告条件必要核心被排除；从不返回“原题反例”。
