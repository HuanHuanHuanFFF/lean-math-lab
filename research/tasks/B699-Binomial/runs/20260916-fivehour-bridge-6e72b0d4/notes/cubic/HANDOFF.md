# 三次曲线方向交接

## 环境与归属

- 本轮统一开工2026-09-15 18:28:45 UTC，原截止23:28:45 UTC；本交接不改变总轮截止或申请延期。
- 工作树`<repo>/.tools/wt699-a1c74e93`；分支huan/b699-fivehour-20260916-6e72b0d4。
- 源基线a7468a887224e35906d8486bd18d21d0e8368393；本交接前只读观察HEAD为adcfd40cf6f1a2a8d42606b4913e3a6670cc39ff。主线程继续提交发布，实际最新远端状态以run LOG为准。
- 本执行者只写notes/cubic、experiments/cubic、reviews/cubic及自己的replay；没有写Git、共享根文档、其他任务目录，没有Lean或安装。

## 先读哪些文件

1. REPORT.md：准确成果、旧结论重构与未解决范围。
2. PROOFS.md：原题到所有最终消费者的完整外层链。
3. 10-FROZEN.json及10bc-FROZEN.json：六曲线中五条新曲线的主证据；03以前的NF工具失败不属于成功整点表。
4. 11-FROZEN.json：任意b的统一显式高度及Masser实际源页。
5. reviews/cubic的两个独立接收清单：一般SQ、非二幂短表、SQ3和ROW3+/-回传。

全部阶段清单列内字节保持冻结；任何修订另存新版本。此前05主稿中的待完成措辞按后续补遗和实际证书阅读，不要回写旧文件以制造回溯成功。

## 最终可用结果

- 真实规范b=3的平方NC3分支全部排除，无平方根奇部例外。
- 任意素数P、r>=1的n=(3P^r-1)²整行补齐；加号族的统一独立重构也完成，但加号是旧成果。
- SQ3短证仅处理3|J的整J；一般SQ另有定向旧源独立接收，二者不要混同。
- lambda=3当且仅当v3(n-1)=1，N=(n-1)/lambda；全部平方NC3必须omega(N)>=4，孤立3时omega(n-1)>=5。
- 任意实际规范b均有log n<=2(960b³)^600000。固定b或固定B的无界大端统一删除，b自身仍无界。

独立AI接收固定清单：

- geometry/b3-five-review-manifest.json：4f7ed8420d634ccd64e3dec6db28cd214e2cac6e9730695a23046e863a60854f。
- geometry/general-loss-review-manifest.json：bd906888377c2ca4ac4d690b0d14214f78d0f5ad34ccd91dfd049503761dbc22。
- cubic/nonbinary-review-manifest.json：4f9d2214f2e189b10e6fdc2752610465555da0748086543473fb8e6dd46ab7cc。
- cubic/SQ-review-manifest.json：eb44d53649e812d58bb0ccbf931faaef1cd2d7323b3e40464ba617eec004e6f5。

这里前两个位于reviews/geometry，后两个位于reviews/cubic。父线程总接收、整合与发布仍归主线程。

## 复核方式与证据限度

数学接受不靠PASS标签。看10的实分支/非零性/David参数，10b的primitive周期面积，10c的原输入回传；再用整数区间、唯一round、幺模关系与余子式距离。新五曲线完整MW基来自官方Magma两个true，没有独立复刻该群算法。11直接在原整数三次上调用Masser，不把有理线性模型的整点当成原整点。

作者不同实现verify_stage10.py按--k逐曲线运行，可重核两轮距离；stage11_general_loss.py与verify_stage11_general_loss.py分别用SymPy及标准库稀疏Laurent多项式核全参数恒等式。旧式脚本可能将输出写入固定文件名，冻结后复跑须先复制到新的replay并改输出位置，或仅采用独立只读核验；不要覆盖已冻结原件。

Masser PDF缓存在.tools/replay/6e72b0d4-cubic/sources/Masser-2024-binary-cubic.pdf，SHA cc5ba4819fa9f80a9e44910bcd62fc04770a09d01c9caa144c9a26d6234f709b。页01/09/12分别对应期刊609/617/620。David/Tzanakis PDF为同目录Ellqua-v2.pdf，SHA 4d10be33587e7c398cf95184686e941caa139d0806eeba70ef215d8c5b25bd97。两者都没有绕过TLS校验。

## 已失败或暂不再投入

- Magma NF IntegralPoints遇非平凡2挠群明确未实现；没有完整点表。
- 八个2下降平方类没有在三次域直接分裂；范数平移仍有变量线性右端。
- x=5z²的亏格4覆盖在Q上仅有已知阶2自同构，未得到额外低亏格商。
- 有限固定模曲线测试可留任意大指数；本轮依靠全局高度截断后再用完整周期结束，未否定此前局部兼容性边界。
- 四b乘积没有产生真下降；其LOSS奇部推论被旧g⁴<3n支配，不能再计新范围。

## 下一可执行问题

由geometry的general-loss-four-factor-bottleneck.md继续：必须找到一个控制**实际**最小b的结构入口，或保持原NC3和合法j的严格下降。只用四因子乘积给min b<=O(n^(1/4))无法与Masser的对数幂界矛盾。一般非平方行仍需新的表示/几何归约。不要从这份交接误读为全i3、全平方行或全B699已解决。
