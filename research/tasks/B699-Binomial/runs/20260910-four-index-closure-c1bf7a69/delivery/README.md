# B699 四指标闭合证据包

新增完整纸面＋精确有限结论：i=19、22、24、25，全部合法n,j。新剩余集合`{3,…,16,18,20,21}`。本包没有新的Lean实现或验收。

阅读顺序：REPORT.md → notes/PROOFS.md → HANDOFF.md。SOURCES.md列外部输入及准确页面；FRONTIER.md只记录证据层级。

## 重放

在解压后的根目录执行：

```bash
python3 code/reproduce.py
```

主接受链只使用Python标准库。将执行：
1. 有理区间源常数计算；
2. 不用log的有理整数幂独立复核；
3. 全排序图与整数高度；
4. 指数块生成与完整检查；
5. 四项CRT生成、不同实现检查；
6. 实际代数和坏证书测试。

它不重跑历史七项、历史大指标或Lean。日志、真实退出码、耗时和前后哈希在replay/reproduction.json。输出中的PASS只表示对应计算，不验证BFT出版引理或自动认证纸面数学。

## 数据

- outputs/seed_constants.json、seed_power_check.json：三条新素数对的全部固定参数与确证。
- outputs/absolute_heights.json：图优化及位置/碰撞高度证书。
- outputs/block_certificate.json：1976个指数块；check_blocks.py核全部49个位移。
- outputs/four_index_certificate.json：23阶段CRT、完备候选与每行最终证人。
- outputs/four_index_independent_check.json：另一CRT/并集算法的实际结果。
- outputs/new_lemma_tests.json：121个实际代数测试和11类坏证书拒绝。

input/original/保留前轮原始ZIP字节，baseline/为其展开文件。旧模块以来源说明标识，避免将旧CRT算法算作本轮重新发明。

## 探索记录

带probe/diagnostic的其他文件是保留的选路与失败实验，不承担接受结论。部分探索脚本需要numpy/scipy；主接受链不需要它们。没有扩展原题三元组盒扫描。

源文在线读取成功，但容器下载原PDF失败，故本包不包含整篇第三方论文；SOURCES给作者原URL、页面和明确采用关系。
