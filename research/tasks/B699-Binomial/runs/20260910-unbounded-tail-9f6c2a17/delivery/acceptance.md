# 验收边界

本轮原题i≥4883未验收，新增原题范围0。仅接受如下独立数学模块：

1. B699TailAcceptance.correction_analysis：对所有实数x≥128，准确导数存在、导数≥log4/log²x、分母正。
2. B699TailAcceptance.correction_base：精确端点G(128)≥72/7。

真实运行：../verification/20260910T075554Z/evidence.json。两个项目源全新编译，退出0；源前后哈希一致。最终消费者的实际传递公理均为[propext, Classical.choice, Quot.sound]，完整模块还有6条真实公理审计输出。允许集合由验证脚本解析并拒绝额外公理；没有数学上的native计算假设、自定义公理或占位证明。早期失败日志出现的sorryAx属于Lean失败诊断，不是本次接受根。

源SHA-256：
- ECAnalytic.lean：9b64ffb7d2ed1fda637511ad56eca51505c4741a2983bb753ab77b59160e1851。
- Acceptance.lean：cca2fc60ebd93616b655dce6e4d3e12d16ec06f0a478bc344c105e9c9dd4a4fe。

Lean：4.33.1，编译器提交819816b2e0a3bf405af45ae5c7af2491d8f5bee6。mathlib pin：0df444a360eaa60ab8c11dca51a86af692955474；manifest SHA-256 fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0。项目依赖闭包2个源，复用固定mathlib缓存；另从实际Lean环境导出所有加载模块并绑定对象哈希，见package-closure.json（包含审计工具的额外依赖，是接受消费者闭包的超集）。没有第二内核或人工复审。

专项命令与真实输出在证据根；恢复入口为handoff.md。source-binding.json已把接受根、Git源码blob、冻结提交fce3c99f9d6e08058e45c319496149df33ce6658绑定；publication.json独立记录推送SHA和耗时，不能用出版状态提升数学接受范围。
