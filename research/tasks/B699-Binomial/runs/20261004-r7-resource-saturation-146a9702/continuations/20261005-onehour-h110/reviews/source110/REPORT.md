# h110/F11完整六维源核：独立入口验收

核验者/root/verify_reg3_module，Complex established target，gpt-6.1-sol/xhigh。基线dfed05f112279e5cd55dc1dff2371680d66f735b；本目录唯一写入，旧签件不改。原截止2026-10-04 19:09:35 UTC。

接受固定原21个整数Hasse源、q≤110、D≤305的F11源核维数6及全部六个显式基。不是Q上非零源存在或全部177156方向排除。

input.txt SHA60d466eb121b2d1844095926c8ad2840a86403a9324849b2391e42bda5ca9d4f，头(110,305,11,0,21)；全部21整数源行与前轮已验h109严格相同。r3…8在F11不同，同一行s(r−s)也逐项核互异；中心仍r=2s、X=s²+s u+t权(1,2)，没有阶乘逆元。

独立复用前轮已接受 [receive_p11.cpp](receive_p11.cpp) 的完整模板实例，重新接收新basis.trace.tsv。结果 [receive-e110.json](receive-e110.json)：23476条件、21750非冗余，111个weight中六项305、其余306，D305截面维6。所有trace编号、源/jet、pivot、模更新与全最终数组都实际核对；weak Popov/前驱闭合完整核证明沿已验算法，不以导出向量数代替完整性。

独立 [direct_basis_jets.cpp](direct_basis_jets.cpp) 对六份原TSV各直接双Horner算23476个所需局部Hasse系数，六次全零。各基支持唯一，系数1…10，非负指数，q110/D305。共同q不能证明独立；独立系数矩阵取6×6子式det=8 mod11，矩阵与单项式在 [independent-source-result.json](independent-source-result.json)。所以它们确为整个六维核的基。

源input、六TSV、trace和作者摘要九文件逐件hash固定。任何本原整数相伴式G的非零模化若满足源域，必属于某条六维射影方向；方向数(11^6−1)/10=177156，但本签件未接受这些方向的计重/联合证书。Q上只得到dim V110≤6，非零模核不反推Q存在。

所有命令显式在指定C:工作树，编译及临时exe仅D:/Temp/b699-r7-onehour-h110-20261005/review-omega，串行；无Lean、CI、安装、他人进程操作或新颖性声明。尚无七可载h110域排除、COVER/R7减少或原n/j/完整指数绝对界。
