# 已推导核心（待最终证书冻结）

同一完整窗口输入，16|n、g=2,u=1。C,H奇互素，4C-zH²=lambda，m=(n/2-j)/H为偶整数，lambda m²=lambda mu² C²-z(2mu CH+1)。
令T=lambda mu H，B=lambda mu C-zH，A=lambda mu B-2z。
A²-(lambda²mu m)²=4z²(T+1)，A和lambda²mu m均偶。
若T>=4z+6则A>0，两个偶平方间隙至少4A-4；替换4A=z(T²-4T-8)+lambda³mu²得正数<=0的矛盾。
故T<4z+6。又T=7 mod8（从T beta gamma=(n-1)(n/2-1)）且z奇，故T<=4z+3，T>=7，z>=T/8。
因此 H^4<16n/(lambda mu²)。此证明无需旧SQG。

n=2x⁴、xeven>=64：lambda1，K三个互素完整块 (x-1)/d_-, (x+1)/d_+,x²+1，d_-d_+=mu。
若线性块F/d|H，写H=Fh/d,nu=mu/d，则C=Q/(nu h)。范数给B²|4Q-nu h，故B|±16-nu h。
H高度给(nu h)^4<32mu²(x/F)^4<5^4；nu h奇，故<=3。B>=21而非零余数绝对值<=19，矛盾。二次块用H⁴高度直接排。

n=2x⁶、xeven>=64：lambda=mu=1。规范互素三块是x²-1, Phi3,Phi6，把共同的一次3从相应Phi中移到第一块（3|x时不动）。各块>=(x²-x+1)/3。任何整块进入H均与H⁴<32x⁶冲突。

一般奇素数q，n=2x^(2q)，lambda1。将一次q从Phi_q或Phi_2q移到(x²-1)/mu，得互素三块。若x^(2q-4)>162q⁴，则两个大Phi块都必须遇到C。两底迫使B=(x²-1)/mu整块进入H。
置y=x²,H=B h。h正奇，C=Q_q(y)/h，4Q_q(y)-h=z B²h³。
第一阶障碍：B>4q 且 32mu^6 y^q<(y-1)^8 时，0<h<B且4q<B，与B|(4q-h)及奇偶矛盾。
第二阶障碍：R=4q+2q(q-1)(y-1)<B²，32mu^10 y^q<(y-1)^12时，0<h<B²且0<R<B²，与B²|(R-h)及奇偶矛盾。
q5 x>=8由第一阶；q7 x>=256由第一阶（可降128?待核）；q11 x>=2048由第二阶。q>=13这些高度条件不提供大x终点，不外推。
有限末端拟用完整K素数幂选择<=2、范数及同源j判别式，不逐n或j扫描。q11尾部尚未完成，不登记闭合。
