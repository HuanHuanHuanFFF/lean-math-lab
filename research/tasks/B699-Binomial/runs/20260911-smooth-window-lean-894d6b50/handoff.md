# 供huan复用

指定数学目标已全部本机内核验收，正在完成全新CI复核及最终记录。

- 统一导入本run的lean/Main.lean；namespace B699.SmoothWindow。
- 完整窗口：smooth_window_i4。
- 同一素数通用消费者：smooth_window_simultaneous；primeProduct m定义在Congruence，准确包含全部5≤p≤m素数。
- 轻量显式族：只导入ExplicitFamilies，使用simultaneous_sixty_family、simultaneous_factorial_family；无需467行。
- 任意严格大素数转移：Transfer.prime_dvd_choose_transfer（实际全名B699.SmoothWindow.prime_dvd_choose_transfer），必须i<p；16/5/7反例已验。
- 一般必要界：NecessaryBounds、NecessaryW。互素的完整大素数部分只在noCommon分支获得。
- 无界归约：InfiniteTail.smooth_exponents_bounded_of_noCommon（同一namespace），结论a<40、b<24、min a b≤1。
- 有限入口：FiniteCoverage.bounded_window_common；所有467行与参数生成都由Lean检查。

接受状态看verification/latest-*.json及其指向的不可覆盖时间戳目录；运行compile_all.py可对本批全部30模块新建验证记录。
仅发布自己的任务分支。全域R9={3,4,5,6,7,8,9,10,14}不减少；Leader可后续整合，未直接推main或合并。

B699: accept full smooth window and all simultaneous consumers; enable full clean CI
