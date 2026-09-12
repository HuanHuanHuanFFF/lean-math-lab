修复未编译统一入口的命令顺序：imports在set_option之前。原生成器保留before.py；不改变原题、源根或证据复用规则。实际Lean状态仍待验证。
补充修复：旧发现逻辑只扫描文件名含receipt的JSON，遗漏规范目录huan-historical-accepted/rowNNN.json；改为确切路径，缺失仍不通过。std3数组按集合比较且保持三项完整，避免合法排序不同被误拒。候选状态随四历史收据完整性变化，实际Lean接受仍需严格验证。
