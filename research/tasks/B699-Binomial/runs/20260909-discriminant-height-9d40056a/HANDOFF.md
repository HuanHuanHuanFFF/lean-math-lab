# 恢复与交接

本轮目标完成：原题反例在 `i>4π(i−1)` 时有明确可计算高度界。首先读 [完整报告](report.md)、[当前前沿](frontier.md) 和 [最终验收](verification/ACCEPTANCE.md)，直接采用成功证据，不重做本轮初始化检查。

## 分支、来源和所有权

- 独立分支：`GPT-work/b699-height-20260909-9d40056a`。
- main基线：`7fd3928656489afe2c80698f0a09d1d933444186`。
- 最近已核对的核心检查点：`7a78e8b31ff1044deda1c553071283927094e8b1`；最终验收与本交接将继续正常推进同一分支。交付消息给出最终核对SHA，远端branch tip为恢复入口。
- 独占本批；只有题目README增加导航。旧批、其他工作区、CI、依赖pins及控制中心记录未改。没有创建PR、合并main、force push或联系其他独立会话。
- 主线程负责高度算术、原题整合和推送；algebra/coefficients为Astra/Max，数学子线程同时最多两个；runtime为Luna/Max。独立math_review在释放数学时隙后完成。全部子任务已经结束。

用户已授权commit/push自己的分支。普通git push因无命令行凭证失败，实际使用GitHub连接创建相同Git tree的提交，并以force=false推进自己的ref。每次fetch/ls-remote核对SHA；同树原本地提交保留在 `refs/local-checkpoints/`。恢复时读取branch当前SHA，不把这些本地留档ref误作远端提交。

## 最后消费者

```lean
import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.OriginalHeight

example (n i j : ℕ) (hi : 185 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hn : B699Height.effectiveHeight i < n) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) :=
  B699Height.common_of_index185_height_lt hi hij hjn hn
```

一般正指数接口为 `B699Height.counterexample_height` 和 `common_of_height_lt`。若后续需要更锐利常数，可从 `coefficientPolynomial_discr_step`、`scaledDiscriminant_step` 和精确阶乘消去处消费；不必重新引入Jacobi分析或把公式作为公理。

## 最小剩余问题与下一步

本轮高度目标内没有未完成证明。全题仍有旧结论尚未覆盖的低指标子域，以及正指数区域的 `n≤H(i)`。i本身仍无界，H(185)约 `2.83×10^40`。优先寻找能统一消去该条带的数学论证，或补齐旧高指标排除链；直接枚举巨大H不具备已证明的可执行性。

可以研究保留 `j(n−j)≤n²/4` 常数收益以缩小界，但它目前只是后继想法，不是本轮接受结果，也不能替代全题缺口。低指标新数学由用户指定的另一会话推进，结果由用户转达。

## 现有环境与按需复现

本次实际checkout：`/workspace/scratch/b3dee40978b3/lean-math-lab`。工具与包缓存是可重建环境，不属于git交付，恢复时须重新确认是否仍存在。固定pins见manifest，环境恢复过程见 [runtime](notes/runtime.md)。

本轮成功命令（这些现有路径仍可用时）：

```sh
source .tools/runtime/env.sh
export LD_PRELOAD="$PWD/.tools/lean-work/proc-self.so${LD_PRELOAD:+:$LD_PRELOAD}"
python3 research/tasks/B699-Binomial/runs/20260909-discriminant-height-9d40056a/verification/verify.py \
  --lean "$ELAN_HOME/toolchains/leanprover--lean4---v4.33.1/bin/lean" \
  --package-root .lake/packages \
  --root research/tasks/B699-Binomial/runs/20260909-discriminant-height-9d40056a/lean/Acceptance.lean \
  --memory-mb 4096 --timeout 180
```

其他正常环境无需本次procfs兼容设置，直接向验证器提供现有固定Lean和包路径即可。源码闭包、输出隔离与严格公理检查由脚本执行；不得把旧项目对象当成新源码验收。

共享原预算：开始05:58:52Z，原截止08:58:52Z，3小时；未延期。07:02:51Z完整主目标已通过验收，随后提前收束记录与最终推送。启动资源实测见 [resources](notes/resources.md)；模型额度不可观察，仍记未知。
