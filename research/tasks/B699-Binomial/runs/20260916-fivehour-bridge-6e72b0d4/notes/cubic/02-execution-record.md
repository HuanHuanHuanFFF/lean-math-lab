# 阶段02执行记录与失败边界

源仍为a7468a887。本阶段普通本地计算极小；较强代数使用官方Magma在线表单，服务自身限时60秒，代码只包含公开数学式子，没有上传仓库/个人数据。未安装软件。

## 固定成功输出

- `stage02_magma_mw.m` → `magma-mw-receipt-20260915T190419Z.json`：HTTP200；E/Q完整rank=2与群生成元，两个proof flags均true；运行0.370秒、85.16MB。输入SHA256 `d4cd5bd760920ee0f9dc9bcfef89195c49b1d15107b97e2b44165cdfedf08215`。
- `stage02_nf_direct_map_v2.m` → `stage02_nf_direct_map_v2-receipt-20260915T191757Z.json`：HTTP200；全局平移恒等式、整数系数、10个归一化点对照、K挠群阶2及Q∞非挠检查均通过；0.050秒、32.09MB。输入SHA256 `ce6a772f8a0084f1a2cb0773f14fbd27414ff444391984615ecafe1510f325c8`。文本输出SHA256 `a9080113da73be5316f5cf94021525bf3c0bb275abd7a0561ae9fa320c1b64a7`。

## 已保存的失败与修正

1. 原Magma页面GET成功并保存表单；PowerShell/Python读取外链JS先后TLS EOF，网页工具不支持JS内容类型。观察到的表单本身为method=POST、无action、字段input；因此直接向同一官方/calc/提交可正常计算，不需要绕过任何认证或安全设置。
2. `stage02_nf_polynomial_map.m` 的初版插值读取点的原始射影坐标，导致不一致；正确比较必须先除以第三坐标。该运行还暴露Magma顶层会在错误后继续执行，故末尾字符串`ALL_CHECKS_PASSED`不能代表成功。原响应全部保存，不计接受。
3. `stage02_nf_direct_map.m` 的初版嵌套列表推导使用了Magma不支持的依赖范围，编译阶段失败。v2改成显式循环，并把检查包在Main过程内；最终使用手推多项式和全局理想恒等式，不依赖初版插值。
4. `stage03_nf_integral_points.m` 的完整调用在19:20:47 UTC返回非平凡挠群未实现。没有产生整点列表。响应SHA256 `fc7b1524797817fc2b89a7bc380fd6cddb7dd465e9f224778024cfd4c3c40c2c`，输入SHA256 `576eafa1fcbac1075a4b4d4e0c93f4cf0302a3006fd24318a2649a2281da4fe8`。

所有响应保留HTTP原HTML、抽取文本及JSON收据。HTTP200表示传输成功，不表示数学命令成功；接受只取无错误且明确完成全部断言的那次输出。

## 新方向而非相同重试

不再重复相同IntegralPoints调用或伪造平凡挠群。下一步比较正确处理挠余类的一般三次elliptic-log/LLL方案，同时保留已手推的Z立方类与N窗口联合约束；它们需要另存证明与检查，尚未因本阶段模型成功自动接受。
