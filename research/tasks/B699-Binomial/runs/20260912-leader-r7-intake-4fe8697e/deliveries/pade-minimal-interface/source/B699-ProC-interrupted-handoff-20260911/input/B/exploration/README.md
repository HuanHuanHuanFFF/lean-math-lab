# 未用于定理接受的探索

这些文件用于说明路线选择与失败边界，不是全题或新子族证明的输入。

```bash
# 需SymPy，只重跑小的完成范围；脚本会改写exploration/outputs中自己的诊断文件。
python3 exploration/code/probe_low_carries.py
python3 exploration/code/probe_slope_support.py --exponents 12
# C++完整的相对范围，仍不提供无界指数终点。
g++ -O2 -std=c++17 exploration/code/slope_support_fast.cpp -o /tmp/b699-slope-probe
/tmp/b699-slope-probe 18
# 标准库；有限未失败不当作一般界。
python3 exploration/code/probe_cofactor5.py
```

若需重跑请复制工作目录，不改发布原件。历史耗时字段不承诺逐字节重现。e=18慢Python运行的超时说明单列；它不是成功检查。主接受链不会执行这里任何探针。
