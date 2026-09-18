# SOURCE_ADOPTION · 冻结来源、读取范围与证据等级

## 接续规则

唯一接续入口为用户指定 `OVERVIEW2026-9-18-2.md`。经 Files 完整读取，共266文件行，Library file_id=`file_000000002b608211b0c36568d884c1ff`，version=1。没有借用旧聊天作数学前置。

旧分支 `huan/b699-fivehour-20260916-6e72b0d4` 查询返回404。通过实际返回的仓库分支列表定位包含所需旧文件的提交：

    repository: HuanHuanHuanFFF/lean-math-lab
    read-only commit: e90cd78f9115071c3cbb5a7dc1d2995a5c51e06b

以下路径均固定于该提交。没有将该提交中的新总览替换用户附件，也没有采用所选历史文件之外的新数学状态。没有本地 checkout 或仓库写入。

路径缩写：

    R=research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4
    I17=R/intake/20260917-pro-results
    I18=R/intake/20260918-pro-results
    C=research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/intake/20260915-daily-results

## 正向证明的采用合同

### Aα · NC5 六模板与保留高幂

合同：NC5 的 α 属于 `2^a·{1,5}` 或 `3^a·{1,2,5,10}`；高幂>5。含5分支保留 `v5(n)=1,5∤g`。

实际读取：

- 用户 overview §1，特别六模板与高幂、孤立5限制。
- `C/materials/D-critical-quotient-closure/REPORT.md` 全文；明确8→6模板，剩余六族、原作者采用链与证据边界。
- `C/notes/D.md` 中 LCM合同与分类导航。低指数 α|60 已由旧 LCM消费者排除。

报告 git blob：`3a8b9f5cd157c7a14c72fae2bee325e65c24e795`。

证据等级：历史作者纸面＋精确证书。六族分类/LCM背后的更早消费者没有本轮全链重验；这是采用的前置，不是本轮自含初等证明的新结论。

### Ug · 单位粗部已闭与 g≥7

合同：原 NC5 各 q_r≥7，q0|g，因此 g≥7。

实际读取：用户 overview §3；`R/PROOFS.md` §8（文件220–242行）的明确消费者和结构推论。

git blob：`e0d6354d7d78bbd4c8109c34f30448abed2b5428`。

进一步冻结入口：`R/reviews/main/05-unit-window-acceptance.md`，由所读§8明确链接；本轮没有重跑其QIG、对数/LTE及有限末端。保留原纸面/定向AI接收/有限证书层级，不升级为Lean或外部独立审读。

### R2 · H02⁺ 残量至少两合格底

合同：同一NC5∧H02⁺ 的 t 正整数，

    #{p>5:p|t}+1_{25|t}≥2.

实际读取：`I17/dependencies/489628d85193/sources/residual-splitting/PROOFS.md` 文件1–135行，含§0准确量词、RES5、§1完整幂分配和正向核的开头。配合 `I17/notes/D.md` 的 D2来源导航。

git blob：`356146f3e89de983b72ac294cd1451d603c63bca`。

合同原链仅采用正确目标5的 QIG 与已完成有限末端；本轮不复跑旧33个末端、不重新证明旧两底/三底消费者。只按其作者等级采用。本轮证明仅需较弱 R2，不需最新版 ω5*≥3。

### 原生完整源幂、平方算术和跨指标桥

这些在本轮 `PROOFS.md` §2、§3、§6–7直接重证，不以外部文献或未展开证书作为新依赖。

保留 p=i=5 的完整高幂；只在明确25/7过滤下转移i6/i7/i8；原合法j不变。没有NC3前置。

## 读取但不作为新闭合定理依赖的材料

- `I18/notes/D.md`：核对今日六阶段和尾类范围。
- `I18/dependencies/07ca209d152b/PROOFS.md` 文件1–180行：HG原生整行、三个合法零分支出口和更高工作层边界。
  blob=`af967cb208b820a3da214b24466778865943c60d`。
- `I18/dependencies/07ca209d152b/sources/previous_PROOFS.md` 文件1–210行：G5、W5、R³与源/见证过滤。
  blob=`a50fa85d6f42cb57429aa834995b456ec141c008`。
- `I17/notes/D.md`：旧 D6子域、108类与H025两尾类、(gq5)²<2^62n的边界。
  blob=`e4565ff7a07abe4d1ffd16423e14e2a8713a7b98`。
- `C/materials/D-fatpoint-position-closure/REPORT.md`：仅沿分类导航读取，没有把i7的H025或纯格障碍作为本轮i6定理。
  blob=`8cb324cb788c854b558cca794204a282d5ab22f3`。

HG/G/R³只用于优先路线的低成本诊断；本轮 SCF5/SC235 的正向证明不调用它们，不调用缺槽的Reider/Matveev高度，不调用巨大有限底部，不调用i3平方链。

## 包内来源材料的性质

`sources/CONTRACTS.md` 为本轮对上述合同的明确转录，`sources/manifest.json` 为来源索引；不是旧文件的原字节副本。记录的blob为GitHub接口返回标识，不是假称容器自行计算的SHA-256。

用户总览 raw materialization不可用；容器直连取源失败，但GitHub只读接口已经实际返回了以上文本。未将失败下载的空文件当成证据，也没有伪造旧ZIP哈希。

整个本轮新证明、代码、有限证书、失败记录和交接随ZIP提供；历史数学前置按上述冻结合同采用。证据完整性与旧全链独立数学验收是两件事。
