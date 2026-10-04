# SPEC110-Q3：177156方向完整独立验收

核验者/root/verify_reg3_module，Complex established target，gpt-6.1-sol/xhigh。基线dfed05f112279e5cd55dc1dff2371680d66f735b，唯一写入本目录；原截止19:09:35 UTC。固定主稿notes/main/02-h110-q3-candidate.md SHA012e4bd8d2cdd81131dc255846e61bb72264754559aafc9fc5fc4aa9dcf86670，原子消费者notes/a/03-loadable-atom-bound.md SHA797aacd248fe1d7ab12be415487ca8e979fcd4eb2e8c3d053965005043ca553a。

**接受无条件代数结论：任意非零Q[N,X]源G，q≤110/D_(1,2)≤305、满足固定21整数Hasse下阶时，q≥3的非竖Q不可约因子按G中实际重数计至多6。** 不接受“全部非竖因子份数≤6”。原loadable应用另条件采用历史z≥14；原NC桥、COVER7与R7不升级。

## 1. 完整源入口与全方向覆盖

独立source110签件已接收完整F11模块维6，六基各直接23476个源jets全零、系数6×6子式det8。所有六基原字节由 [prepare-receipt.json](prepare-receipt.json) 再核，不信任作者eval数组。任何本原有理G非零降模属于其中某一非零标量倍方向，不反推Q源存在。

selected-directions.tsv SHA9bc2972fb62970585e05d1446eea31f810a5cf3c342f873b42c77cf71565a227，5107343 bytes。独立用首非零坐标1的6元向量计算canonical ID及177156-byte bitmap；全部(11^6−1)/10=177156方向各一次，无遗漏重复。176628条Omega单证与528个c=-1残方向精确分区。

从六原TSV在Fp11逐系数算每个P_i(c,X)，再按方向组合。所有176628+528所选专化都直接重建非零和实际次数。全重建约20.20秒，Omega输入42559419 bytes、SHA1942b062cb1b592583d0a5cd5b3e19174717342b8d792190ca4bb7cf5be27c19，仅D盘；没有整块大数据送入模型上下文。

## 2. 176628个单证全部独立计重

独立路径为特征p平方自由层、p次根递归和Berlekamp Frobenius固定空间nullity，数学完备性与1758完整因式对照见已接受omega-berlekamp签件。它没有使用作者DDF或capped计数器，也不调用SymPy。

全176628个所选F的Ω与保存值逐个精确相等；逐个Ω+110−degF≤6。结果 [full-omega-result.json](full-omega-result.json)，exit0，184.377秒、观测peak working set5406720 bytes，见 [full-omega-resource.json](full-omega-resource.json)。是完整复核，不是1000方向抽样或计数摘要一致。

## 3. 528残方向的完整低度原子证书

residual-packets.jsonl SHA0df57583149512963da9b77fe89801708426a38964a5cf7c418b424ecc89dd5c，538189 bytes、528行；只取accepted_certificate明确索引所选项，不用未成功先试spec。每项id/vector与残集合逐个一致，从原六基独立重建其F，核完整单位和次数。

独立低度谱用全部根valuation交叉数n1，以及平方自由层的gcd(g,X^(p²)−X)/gcd(g,X^p−X)次数差除2数n2，按真实重数及p根加权；Ω仍由Berlekamp得，n_hi=Ω−n1−n2。528份全相等，约0.396秒，见 [residual-low-result.json](residual-low-result.json)。

另追加独立完整因式乘积与Rabin：528专化、3767因子出现、2366个不同不可约因子全部通过，约1.056秒，见 [residual-factor-result.json](residual-factor-result.json)。所以并非仅信任degree/n1/n2列表；两个独立接收路径互相一致。

## 4. 原子consumer及整数分组：接受

G取primitive整数相伴式，Gauss给全部primitive原因子。非零F使每个因子像都非零。对选中每份q_i≥3因子，真实模不可约原子总度t_i，加q_i−t_i个虚拟一次原子，恢复总度q_i≥3；这些真实原子按重数互不重用，碰撞仍保留份数。全部虚拟一次原子≤δ=110−degF。

含真实高次原子的组数≤n_hi。其余低原子组每组总度≥3、至少含2个原子，因此

    k≤n_hi+min(floor((n1+δ+2n2)/3),floor((n1+δ+n2)/2))。

低池a一次/b二次的抽象最大值正是两floor的min：a≥b时先b组(1,2)，再三合余一次；a≤b时先a组(1,2)，再两合余二次。它不证明源几何实现。常数像至少耗3个虚拟一次原子，原竖因子及未选因子只扩大可用池。每个528所选项预算独立算得≤6。

176628单证使用较一般计重退度界k_nonvertical≤Ω+110−degF≤6；528原子项仅界q≥3份数。二者合并恰给声明，不把后一部分提升成所有非竖计数。

## 5. 原题条件应用与缺口

历史z≥14继续仅条件采用固定主run notes/a/02-seven-factor-excess-bound.md SHAc464d68726ee40d731bf4e77aa63798c271854555c34846bc9aa2976541230f3及a-excess签件边界。对非竖Q不可约H，H(r,X)不恒零，否则N−r整除而H竖直；每行不同源根≤q，故z≤6q，历史z门推出q≥3。于是七可载源域须h≥111，继承原NC桥证据等级。

E0 326→320及E1 51→50是给定必要表的条件过滤，本次不重签旧DP/global649，也不把表行当原实例数。没有Q源存在、COVER7→COVER6、R7减少、原n/j/完整粗支持和指数绝对界、Lean或新颖性声明。辅助Fp11是系数证据，不是原题共同素数。
