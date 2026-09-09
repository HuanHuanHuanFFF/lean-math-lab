# 三个零指标的完整有限候选全部通过

原题范围：i∈{28,31,34}，所有自然数i<j≤floor(n/2)。结合已验对数界、完整候选恢复和统一行证书，当前结果属于完整纸面加精确计算层；仍非完整Lean。

| i | 候选行 | 最大候选n | 顶端素数片段 | 大因子单行 | 未解决 |
|---|---|---|---|---|---|
| 28 | 6768 | 301823 | 174 | 2735 | 0 |
| 31 | 9302 | 688157 | 152 | 5272 | 0 |
| 34 | 9397 | 1102281 | 140 | 5370 | 0 |

独立checker使用系数优先区间重建、逐素数两两双指针交集，与生成器彩色事件扫描不同；它核验全部边界、低n覆盖和每个实际D/素数见证，不枚举j。314份素数证书均为精确小素数证明，没有Lucas/巨素数Lean桥需求。

实际运行：

- 生成器09:24:50.0441831Z–09:24:51.2449487Z，1.1995893秒，exit0。
- checker09:24:51.2760177Z–09:24:52.5452735Z，1.2692053秒，exit0，stderr空。
- 托管器09:24:50.0068225Z–09:24:52.5691739Z；全部自有进程正常结束，未达09:29截止，没有继续计算。

输出 [certificate.json](certificate.json) SHA256：
`CE979EBD1547BA0E6850BFF24E2B58F8EE8BC4BC7F2C67AC9EC71308A3BE5A68`。

输入log证书前后SHA256均为
`F51D4E1EF908527837BBB9A7620A039C0B264CF9EC2BE66D20618B7E445B4932`。

生成器前后SHA256均为
`2C4CE7B13F7807B0A500D732ED676E2AFF9B309314FD3BECD0D01744BF8EAABB`；
checker前后均为
`0B3ED61BC3B98544A488E586EC540D282A99394920AAFCBF269EF6CB7C17CAF3`。

完整真实argv、工作目录、D盘临时目录、状态和文件哈希见 [run-manifest.json](run-manifest.json)，原输出为 [generator.stderr.txt](generator.stderr.txt)、[checker.stdout.txt](checker.stdout.txt)、[checker.stderr.txt](checker.stderr.txt)。两阶段均无失败退出，最终unresolved为空；原始stderr完整保留。本记录不声称保存每个未选素数或CF候选的完整试探轨迹。未触发资源cap或参数扩张。

完整性与未Lean差距详见 [candidate-chain.md](../../candidate-chain.md)。
