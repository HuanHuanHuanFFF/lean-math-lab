# 当前 frontier

Phase A 完整原题覆盖 0/151；Phase B 0/18，等待 A。

固定环境与 FiniteCover 接受根已复现。Row029 已验：平方根素性到原检查式的桥梁及3个见证使用例；第0、113层。所有新定理的实际传递公理只含 std3。证据 `verification/ci-34510677596/accepted-components.json`；源 SHA `a31cff68eb22b1478e29788c75952f8763d621b6`。

当前正在将相同方法接至完整 Row029：228个见证、114层、注册高度、小n覆盖、层覆盖和独立原题消费者。每16个见证、每4层一块；Lean 保持 `-j1 -M3072`，未放宽无限心跳。所有新原题文件仍标为候选，只有 `lean/rows/Row029/Original.lean` 实际编译和公理审计完成后才新增指标29。

工作机被平台标记 unavailable，验证继续走只读专用 CI；推送由主线程 GitHub 插件完成。
