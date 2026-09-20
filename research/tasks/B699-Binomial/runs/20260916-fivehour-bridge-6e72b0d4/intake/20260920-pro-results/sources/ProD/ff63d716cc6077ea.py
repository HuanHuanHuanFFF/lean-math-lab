from math import gcd
for b in (1,2):
    good=[]
    sq={10*z*z%3000 for z in range(3000)}
    for h in range(3,103):
        H=pow(3,h,3000)
        for d in range(3,103):
            X=pow(3,d,3000)
            t=(b*b*(H+1)**2+4*b*H*X)%3000
            P=(2*X*(H+2)*(H-1)+b*(H-3))%3000
            am=3*H*H*X%1000
            r=130*pow(am,-1,1000)%1000
            if (P-3*r*t)%3000==0 and t in sq:
                good.append((h,d))
    print('b',b,'good',len(good),good[:12])
