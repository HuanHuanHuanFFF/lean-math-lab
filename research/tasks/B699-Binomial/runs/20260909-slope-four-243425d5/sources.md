# 实际读取的来源与依赖边界

## 固定版本仓库材料

仓库：`HuanHuanHuanFFF/lean-math-lab`。
固定 commit：`7fd3928656489afe2c80698f0a09d1d933444186`。
共同路径前缀：

```text
research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/
```

访问均使用 GitHub 只读连接器的固定 `ref`，没有从 main 推测内容。

| 相对路径 | 实际读取位置与使用价值 | 返回的 Git blob SHA |
|---|---|---|
| `notes/rational/slope-three.md` | 完整幂定位、零/非零单元、三块归一化、线性界、固定对数证书；另读最终有限证据段。用于提取方法，n=3j 状态按任务采用，不重新验收。 | `a1dc9ca25beec963d3f864350ca69ef2e23a7628` |
| `report.md` | “n=3j 的有限闭合”、结果表和形式化范围区别；用于确认接续语义。 | `c4302cf97cc39416375a1363f7a2ec860b037303` |
| `frontier.md` | 原题范围、完整 V、剩余参数与证据层。所述大指标排除没有进入本轮最终证明的依赖链。 | `e4c0ccc72697dbb3cde4a74686722e11f89de148` |
| `notes/sources/sources.md` | 第 2 节的 Dusart 来源定位；随后实际打开原论文。未使用其中的无关理论。 | `bde007eed68a599ccc365c482cdef1bfca2634fd` |

直接入口：
https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/7fd3928656489afe2c80698f0a09d1d933444186/research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/notes/rational/slope-three.md

这些是实际读取位置及返回的 blob 标识，不声称包内包含逐字节源文件副本。以 Python requests 直接下载 raw GitHub 时 DNS 失败；连接器读取成功。

## 最终证明实际使用的外部数学

Pierre Dusart，*Estimates of Some Functions Over Primes without R.H.*，`arXiv:1002.0442v1`，2010-02-02：
https://arxiv.org/pdf/1002.0442v1

实际查看了 PDF 文本及阅读器第 4、8、9 页的渲染图。以下是精确输入：

1. **Proposition 5.1，第 4 页**：`theta(x)−x < x/36260`，`x>0`。
2. **Theorem 6.9，式 (6.5)，第 9 页，上界一侧**：
   `pi(x) ≤ x/log(x) * (1+1.2762/log(x))`，`x>1`。
3. **Proposition 6.8，第 8 页**：对实数 `x≥396738`，存在素数
   `x<p≤x*(1+1/(25*(log x)^2))`。

第 1、2 项用于 LIN4 的无限指标段；第 3 项用于 FINITE4。阈值包含等号、左端严格、右端非严格均已直接看过渲染页。这里引用公开论文中的结果，没有重证其解析/计算基础，不增加 RH 假设，也不将其标为 Lean 已证明。

## 读到但最终没有使用的来源

J. Barkley Rosser 与 Lowell Schoenfeld，*Approximate formulas for some functions of prime numbers*（1962）。打开了公开扫描 PDF，并读到 Corollary 1、式 (3.6) 的抽取文本：
https://denisevellachemla.eu/Rosser-Schoenfeld-1962.pdf

该备选估计在直接使用 Dusart 后不需要；没有把它计入最终数学依赖，也没有声称逐页审阅整篇。

## 本轮自产证据与能力

`experiments/` 下所有结果文件均由本轮实际执行产生，范围见其 README。两份检查程序是不同实现，不是不同会话的审查，也不是形式化内核。

实际确认：Python 3.13.5、本地文件写入/ZIP 读写、GitHub 只读访问、网页 PDF 文本与截图。SymPy 1.14.0 可以导入，但最终全部证书脚本只用 Python 标准库。未执行 Lean、Git 分支/推送或其他会话/Agent 操作。
