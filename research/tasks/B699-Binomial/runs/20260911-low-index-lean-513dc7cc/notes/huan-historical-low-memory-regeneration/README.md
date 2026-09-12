# 低内存历史行再生成可行性评估

本评估只读完成。没有生成整行源码、没有运行 Lean、没有运行 verifier、没有写 Git。统计结果在
low-memory-regeneration-static-checks.json。

结论是分行处理：

- 35、36、37 的生成器路径在结构上可用。底层 generate_row.py 的范围检查是
  i = 29 或 35 <= i <= 184，没有 i >= 46 的硬限制。三个 v3 plan 已经固定当前 source
  SHA；其非 29 分支使用独立的 layer data/arithmetic/enumeration/pair-block/checked
  模块，把高成本的 decide 分散到多个源文件。
- 29 不能靠把旧单体 decide 的 M 从 2048 降到 1536。现有 H16/M1536 evidence 在
  Layer000 上出现 decide reduction stuck 和 sorryAx；H32/M2048 则出现
  memory_exception。需要先在独立候选目录把 Layer000/Layer113 的特殊路径改成与
  independent layer 分支相同的更窄证明块，再谈 M1536 或 M1408。
- 35/36/37 的 M1536 仍没有实际编译证据。当前 v6 四行只在编译前因 M2048 的资源门禁停止，
  因而这些估算只能决定试验顺序，不能当作 Lean 通过。

静态输入规模：

- i=29：height [29,9,19,37]，228 goods，114 layers，4082 个 exact interval，
  v3 私有 source 49 个。
- i=35：height [35,11,23,49]，247 goods，153 layers，5518 个 exact interval，
  v3 私有 source 1018 个。
- i=36：height [36,11,24,26]，192 goods，77 layers，1995 个 exact interval，
  v3 私有 source 38 个。
- i=37：height [37,12,25,18]，227 goods，50 layers，1826 个 exact interval，
  v3 私有 source 344 个。

在内存中调用现有 bundle renderer 但没有写文件，得到的候选块体量如下：

- Row029：J2/J4/J8/J16 分别为 25/13/7/4 个块，最大源文本约
  11,365/22,531/44,639/86,505 字节。当前 J2 已有 manifest，且没有 v3 source-module
  import 泄漏。
- Row035：J32/J16/J8/J4 为 32/64/128/255 个块，最大源文本约
  142,063/117,175/72,077/49,617 字节。
- Row036：J32/J16/J8/J4 为 2/3/5/10 个块，最大源文本约
  113,380/95,075/54,349/31,889 字节。
- Row037：J32/J16/J8/J4 为 11/22/43/86 个块，最大源文本约
  122,753/100,226/59,592/37,132 字节。

这些块的候选 module name 都唯一，并且 renderer 静态检查没有把原 v3 source module 重新
导入。实际输出必须使用 lean/rows/RowNNNJx 目录；统计时使用的 RAMONLY 名称只是内存对象，
没有落盘。

建议的有界试验顺序：

1. 用当前 v3 plan 和独立 J4 输出先试 Row036J4，M1536。它只有 10 个候选块，最大文本
   约 32 KiB，适合先判断低内存环境能否完成一个完整 root。
2. 若 Row036J4 通过，再试 Row037J4，再试 Row035J4。每行仍必须由完整 Original root
   通过 common_iNNN、完整原题、source/output/log SHA 和 std3 axiom audit；只保留成功
   evidence 的对象。
3. Row029 先做独立 generator 候选：复制到 scratch worktree 或新 package root，生成
   candidate-specific Row029Jx modules，避免覆盖 Row029、Layer000、Layer113 和共享
   namespace。必须把 Row029Data、Witness000/056/227、Layer000/113 等外部闭包重新
   纳入 hash 计划；shared26 目前并不包含这些特殊 Row029 modules，失败 evidence 也不能
   作为缓存。
4. Row029 的独立层拆分先静态核对声明、imports、#print axioms 和原题字符串，再由主线程
   选择代表 Layer001/Layer002 的小块做 M1536 实验。M1408 只有在 M1536 的窄块通过后
   才有意义。

当前机器的门禁基线：

- M2048 加 512 MiB 要求 2,621,440 kB；v6 四行均在编译前停止，compiled_count=0，
  exit=2，new_original_results=0。
- Row029 profile 等待末次观察为 2,109,624 kB；M1536 门槛是 2,097,152 kB，仅多
  12,472 kB，M1408 门槛是 1,966,080 kB。M1536 的门禁可能通过，但不代表 Lean
  proof term 能在该上限内归约。

固定 checker 仍是必要的声音性边界：generator 只产生候选，bundle renderer 保留声明、
options、print axioms 并拒绝 forbidden token/forward import；正式 verifier 再检查固定
toolchain/pins、source closure/imports、逐项 source SHA、output/log SHA、timeout/failure
和 unexpected axioms。只有完整 Original root 的成功 evidence 才能写历史 receipt，且
receipt 的新原题计数保持 0；本评估没有改变 target-status。
