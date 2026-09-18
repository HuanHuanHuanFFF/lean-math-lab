# B699 · Pro D · RES10 source tangency

入口：REPORT.md；完整证明：PROOFS.md；边界：FAILURES.md；接续：HANDOFF.md。

结果：在准确i6/RES10中，Delta3≤3g³或24Delta4≤g²足以给原共同素数，
Delta_r=E_r²/gcd(E_r²,jk)。在规范系统Delta_r=[h_r/gcd(h_r,v)]²。
所以整个h3|v或h4|v并集闭合，特别覆盖E3平方自由或E4平方自由的两来源配置。

不是整个RES10闭合，没有任何参数的全局绝对界。无Lean、无仓库写入。

## 重放

    python code/verify.py

预期：PASS_RES10_SOURCE_TANGENCY。

    python code/verify.py --json

查看具体代数义务与固定诊断。默认只用标准库，不联网，不扫描原n或无界指数，不重跑历史链。

## 检查一个指定原输入

    python code/consumer.py <n> <j>

返回无需因数分解的Delta成本、触发项和源完整幂缺陷。
缺陷是整数，不一定是素数；其任意素因子才是相应共同素数。NO_DECISION不是NC声明。

## 哈希

SHA256SUMS覆盖包内所有普通文件（不自包含自身）。外置receipt记录最终ZIP哈希、
从最终ZIP解压后的新重放、以及重放前后成员哈希一致性。

来源与缺口见SOURCE_ADOPTION.md。发现脚本仅为可选研究记录，不是接收入口。
