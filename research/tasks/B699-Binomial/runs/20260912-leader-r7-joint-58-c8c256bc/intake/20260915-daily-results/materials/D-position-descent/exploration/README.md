# 探索记录与正向证据边界

`original/`保存实际发现脚本和修正后LP状态快照，含原会话绝对路径；它们不是可移植接收入口，不自动运行，也不赋予任何操作授权。

流程：先做格分配的线性约束探针；修正过严的非零性筛选；加入一个固定二次式；提取精确有理/整数列覆盖；保留轴因子的1/4常数并单独处理H12；在已证明的绝对界内重建有限域。

最终正向证书：evidence/dual_certificates.json和simple_six.json。最终有理失败模型及采用的有限函数池：evidence/failure_models.json，标准库diagnostics重新检验。旧的浮点状态及“不可行”摘要没有数学权威。

code/build_failure_models.py仅用于从保存的发现域恢复精确模型；发布接受不需要它的原始路径。code/generate.py、verify.py、diagnostics.py、mutations.py、reproduce.py均使用当前包相对路径。
