# 来源与依赖

## 冻结原件

`sources/SOURCE_MAP.json`记录真实复制文件的字节数、SHA-256与原路径；`sources/previous.zip`是上轮交付的原字节ZIP。本轮只读所需证明，没有重新执行上轮完整链。

采用：实际内容H和L的Bézout桥；NC3⇒4|n、α=cα2^s；完整3幂归一化；实际三次式不可约性；实际判别式恒等式。核心源文本已经单独提供，调用时没有把作者证据升级为Lean、独立数学或人审。

## 本轮新增外部数学输入

**A. V. Sutherland，MIT 18.785，Fall 2021。** 本轮只检索具体缺口，实际打开以下原讲义并查看需要的公式。

1. Lecture 9, *Local fields and Hensel's lemmas*, Lemmas 9.15–9.16：在完备离散赋值环，简单根可提升；更一般的ν(f(a))>2ν(f'(a))保证根。使用于倒数多项式的Q2根、p≥5可分约化和1+27O_v为立方。
   原文：`https://ocw.mit.edu/courses/18-785-number-theory-i-fall-2021/mit18_785f21_lec9.pdf`，印刷页5–6。
2. Lecture 21, *Class field theory: ray class groups and ray class fields*, Theorem 21.8：单位、剩余单位、射线类群与普通类群的精确列；Example 21.6给Q的有限模数说明。实际查看了印刷页4–5及第5页截图。本轮Q、Q(√5)消费者只在证明普通类群平凡后，用剩余单位生成射线类群；不假设一般二次域类数为1。
   原文：`https://math.mit.edu/classes/18.785/2021fa/LectureNotes21.pdf`。
3. Lecture 22, *The main theorems of global class field theory*, Definition 22.24, Proposition 22.25, §22.5：局部范数群定义导子；不分歧/驯分歧的导子指数；导子整除给定模数的阿贝尔扩张与射线类群商的对应。实际查看了印刷页9–10的完整原文和截图。
   原文：`https://math.mit.edu/classes/18.785/2021fa/LectureNotes22.pdf`。

还使用初等Galois理论：不可约三次分裂群为C3或S3，判别式平方决定两者；二次固定域和C3子群的关系；分解群在塔中的交。正文按该具体三次情形展开。使用一般局部数域的剩余域/非分歧扩张对应；可分模p根先在有限剩余域分裂，再Hensel提升，正文给出实际应用。

**导子模数是27q_R，不是rad(3R)。** 27来自明确的强Hensel不等式；q_R只取p≥5的完整R赋值不被3整除的素数。复数无限位不出现，因为实际判别式正、分裂域完全实。

## 下载与未执行事项

上述原文已通过web打开，公式截图已实际查看。尝试从容器保存Lecture21/22的原PDF时均返回DNS解析失败，原始失败信息已保存在SOURCE_MAP.json。包内没有声称存在这些PDF字节；复现有限算术不需要联网或PDF。

本轮没有重新证明全局类域论、实现一般射线类群、调用PARI/Magma/Sage求类群、编译Lean、独立第二研究者或人类审稿。类域论依赖比此前纯初等消费者重，不能宣称本轮降低了最终Lean成本。
