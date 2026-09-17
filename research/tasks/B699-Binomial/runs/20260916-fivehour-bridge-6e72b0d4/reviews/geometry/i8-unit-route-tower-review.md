# 四个三维格塔与全三高回传：独立检查

审读者 `/root/geometry`，2026-09-15 22:41 UTC 开始。此检查采用已冻结 `i8-unit-route-manifest.json` 的纸面 SIXG/Yu 接口和两个完整小底；仅接受 cubic 新交付的四塔、截距18有限枚举和82细胞全部高端回传。结论以相邻 `i8-unit-route-tower-check.json` 的实际 PASS 输出及冻结清单为准，不把程序存在当作执行成功。

## 1. 独立性与充分性

下列检查器不导入 cubic 的 LLL、Gram–Schmidt、估值或消费者。每层三个正交长度平方独立用 Gram 矩阵的主子式计算：`d1, d2/d1, d3/d2`。并直接核对整数基的同余与绝对行列式 M，因此无论 finder 是否真的符合某种 LLL 规范，满格和停止结论都成立。

设格向量的整数基系数最后一个非零项是 zk。向前 k−1 个基向量张成空间的正交投影为 `zk b*k`，所以其长度不小于对应正交长度。全局停止处三个平方都大于 `10^64`，就排除规范正指数和小于 `10^32` 的全部非零格向量。更高估值格是其子格。

截距18在全局停止之前给显式有限和界。第二次停止只需三个正交平方都大于这个有限和界的平方；随后所有层由包含关系排空，不依赖正交长度数值单调。余下低层改为固定 a,c，解 b 的完整同余剩余类，独立于作者固定 b,c 解 a 的枚举次序。

回传重新生成每个细胞的全部六位置偏移，恢复原三个指数后才检查 H_original≥32。没有错误删除规范和29、30、31。每个保留点直接重算源估值、四小素数完整小部以及同一原 n 的严格 SIXG，不依赖已存布尔值。

若输出 PASS，它与先前固定的完整 H_original<32 小底和四高纸面排除合用，接受 q8 与可选 h8 **全部至少三高**分支；一高、二高、全低由算术任务另行接受，不能由本报告宣称整个 q8/q9 已闭合。

## 2. 实际独立检查程序

以下代码块是本次直接执行的完整检查源码；保持在本线程获分配的 Markdown 文件内。以本轮工作树为工作目录、Python `-B` 执行。只写一个新的 geometry JSON，读取 frozen/交付文件；重复复算须另存输出，不能覆盖冻结结果。

```python
from pathlib import Path
from fractions import Fraction as Q
from math import gcd,prod
from datetime import datetime,timezone
import ctypes,hashlib,json,time

RUN=Path('research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4')
ROOT=RUN/'reviews/geometry'; SRC=RUN/'experiments/cubic'
CONFIG={2:([3,5,7],2,3),3:([2,5,7],2,1),5:([2,3,7],4,1),7:([2,3,5],6,1)}
LIMIT=10**32
hashes={}
def read(path):
    raw=path.read_bytes();hashes[path.as_posix()]=hashlib.sha256(raw).hexdigest()
    return json.loads(raw)
def det(a):
    return (a[0][0]*(a[1][1]*a[2][2]-a[1][2]*a[2][1])
           -a[0][1]*(a[1][0]*a[2][2]-a[1][2]*a[2][0])
           +a[0][2]*(a[1][0]*a[2][1]-a[1][1]*a[2][0]))
def vp(n,p):
    assert n!=0
    n=abs(n);v=0
    while n%p==0:n//=p;v+=1
    return v
class Memory(ctypes.Structure):
    _fields_=[('size',ctypes.c_ulong),('load',ctypes.c_ulong)]+[(name,ctypes.c_ulonglong) for name in
             ('total','available','page_total','page_available','virtual_total','virtual_available','extended')]
memory=Memory();memory.size=ctypes.sizeof(memory)
assert ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(memory))
started=time.time()
extended=read(SRC/'i8_threehigh_extended18.json')
assert extended['status']=='PASS'
ext={r['q']:r for r in extended['cases']}
vectors={};tower_reports=[];level_count=0
for q,(ps,power,depth) in CONFIG.items():
    path=SRC/f'i8_threehigh_tower_q{q}.json';tower=read(path)
    assert tower['status']=='PASS' and tower['q']==q and tower['bases']==ps
    assert tower['power']==power and tower['depth']==depth
    assert tower['global_exponent_sum_cap']==LIMIT
    assert hashlib.sha256(path.read_bytes()).hexdigest()==ext[q]['tower_sha256']
    stop=tower['global_stop_v'];levels=tower['levels']
    assert [r['v'] for r in levels]==list(range(depth,stop+1))
    generator=ps[0]**power; targets=[p**power for p in ps[1:]]
    assert vp(generator-1,q)==depth
    assert all((t-1)%q**depth==0 for t in targets)
    previous=None;norms_by_v={}
    for row in levels:
        v=row['v'];mod=q**v;M=q**(v-depth);L=row['L'];K=row['K']
        assert row['modulus']==mod and row['order']==M and 0<=L<M and 0<=K<M
        assert pow(generator,L,mod)==targets[0]%mod and pow(generator,K,mod)==targets[1]%mod
        assert pow(generator,M,mod)==1
        if M>1:assert pow(generator,M//q,mod)!=1 and gcd(L,M)==1
        if previous is not None:
            assert L%previous['order']==previous['L'] and K%previous['order']==previous['K']
        B=row['basis'];U=row['transform'];initial=[[M,0,0],[-L,1,0],[-K,0,1]]
        assert abs(det(B))==M and abs(det(U))==1
        assert all((a+L*b+K*c)%M==0 for a,b,c in B)
        assert B==[[sum(U[i][k]*initial[k][j] for k in range(3)) for j in range(3)] for i in range(3)]
        G=[[sum(a*b for a,b in zip(x,y)) for y in B] for x in B]
        d1=G[0][0];d2=G[0][0]*G[1][1]-G[0][1]**2;d3=det(G)
        assert d1>0 and d2>0 and d3==M*M
        norms=[Q(d1),Q(d2,d1),Q(d3,d2)]
        assert norms==[Q(*a) for a in row['GS_norms_squared']]
        norms_by_v[v]=norms;previous=row;level_count+=1
    assert min(norms_by_v[stop])>LIMIT**2
    record=ext[q];assert record['intercept']==18 and record['global_stop_v']==stop
    cap=18+4*(stop-1)-1
    assert record['finite_sum_cap']==cap
    local=record['local_stop_v'];assert min(norms_by_v[local])>cap*cap
    expected=[]
    for row in levels:
        v=row['v']
        if v>=local:break
        bound=18+4*v-1;M,L,K=(row[s] for s in ('order','L','K'))
        inv=pow(L,-1,M) if M>1 else 0
        for a in range(1,bound-1):
            for c in range(1,bound-a):
                first=(-inv*(a+K*c))%M if M>1 else 1
                if first==0:first=M
                for b in range(first,bound-a-c+1,M):expected.append((v,a,b,c))
    actual=[tuple(v) for v in record['vectors']]
    assert len(actual)==len(set(actual))==record['vector_count']
    assert sorted(expected)==sorted(actual)
    vectors[q]=expected
    tower_reports.append({'q':q,'levels':len(levels),'global_stop':stop,'local_stop':local,
       'finite_cap':cap,'exact_vector_count':len(expected),'global_GS_square_ratio_floor':int(min(norms_by_v[stop])//LIMIT**2)})

consumer_reports=[]
for suffix,cell_name,expected_cells,expected_events,expected_rows in (
    ('h0_7','i8-unit-route-three-high-cells.json',72,168,3818),
    ('h8','i8-unit-route-h8-optional.json',10,24,900)):
    cell_path=ROOT/cell_name;cells=read(cell_path)['cells']
    saved=read(SRC/f'i8_threehigh_consumer_{suffix}.json')
    assert saved['status']=='PASS' and not saved['survivors']
    assert saved['cells_sha256']==hashes[cell_path.as_posix()]
    assert saved['enumeration_source_sha256']==hashes[(SRC/'i8_threehigh_extended18.json').as_posix()]
    def key(rec):
        return (rec['missing'],rec['low'],rec['shift'],rec['source_position'],rec['v'],*rec['normalized'])
    pending={key(r):r for r in saved['representations']}
    assert len(pending)==len(saved['representations'])
    count=events=0;different=set();minimum_margin=None
    cache={}
    for cell in cells:
        q,delta,h=cell['missing_prime'],cell['low_exponent'],cell['shift']
        ps=cell['high_primes'];threshold=cell['high_thresholds'];assert ps==CONFIG[q][0]
        offsets=[]
        for r in range(6):
            rho=r-h
            if rho==0 or vp(rho,q)!=delta:continue
            u=abs(rho)//q**delta;shifts=[]
            for p in ps:
                e=vp(u,p);shifts.append(e);u//=p**e
            assert u==1 and all(a>b for a,b in zip(threshold,shifts))
            offsets.append((r,1 if rho>0 else -1,shifts))
        events+=len(offsets)
        for v,a,b,c in vectors[q]:
            normal=(a,b,c)
            for r,sign,shifts in offsets:
                ex=[a+u for a,u in zip(normal,shifts)];H=sum(ex)
                if H<32 or H>=6+4*(delta+v) or any(a<t for a,t in zip(ex,threshold)):continue
                cache_key=(q,a,b,c)
                if cache_key not in cache:
                    unit=prod(p**e for p,e in zip(ps,normal))
                    cache[cache_key]=(unit,vp(unit-1,q),vp(unit+1,q))
                unit,minus,plus=cache[cache_key]
                if (minus if sign==1 else plus)!=v:continue
                full={q:delta,**dict(zip(ps,ex))}
                n=prod(p**full[p] for p in (2,3,5,7))+h
                assert vp(n-r,q)==delta+v==max(vp(n-s,q) for s in range(6))
                parts=[prod(p**vp(n-s,p) for p in (2,3,5,7)) for s in range(6)]
                T=prod(parts);left=T**4*(3*n*n-20*n+24)
                right=2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
                assert T<=120*n*q**(delta+v) and left<right
                kk=(q,delta,h,r,v,a,b,c);old=pending.pop(kk)
                assert old['n']==n and old['exponents']==[full[p] for p in (2,3,5,7)] and old['H']==H
                assert old['sign']==sign and old['small_parts']==parts
                assert old['SIXG_left']==left and old['SIXG_right']==right and old['SIXG_pass']
                count+=1;different.add(n)
    assert not pending and count==expected_rows==saved['representation_count']
    assert len(different)==saved['different_n']
    assert len(cells)==expected_cells and events==expected_events==saved['source_events']
    consumer_reports.append({'suffix':suffix,'cells':len(cells),'events':events,
           'recovered_high_representations':count,'different_n':len(different),'all_strict_SIXG':True})

fixed=read(ROOT/'i8-unit-route-manifest.json')
for record in fixed['artifacts']:
    path=RUN/record['path']
    assert hashlib.sha256(path.read_bytes()).hexdigest()==record['sha256']
check_path=ROOT/'i8-unit-route-tower-review.md'
hashes[check_path.as_posix()]=hashlib.sha256(check_path.read_bytes()).hexdigest()
out={'status':'PASS','reviewer':'/root/geometry','utc':datetime.now(timezone.utc).isoformat(),
     'method':'Gram principal minors for GS; fixed a,c solve b finite enumeration; original-exponent-first event reconstruction',
     'resource_available_physical_bytes_at_start':memory.available,
     'tower_levels_independently_checked':level_count,'towers':tower_reports,'consumers':consumer_reports,
     'all_at_least_three_high_q8_and_optional_h8':'accepted using the separately frozen complete small bottom and four-high paper interface',
     'scope':'paper plus exact finite checks, not Lean; one/two/zero high parts remain separate acceptance',
     'elapsed_seconds':time.time()-started,'source_hashes':hashes}
dest=ROOT/'i8-unit-route-tower-check.json';assert not dest.exists()
dest.write_text(json.dumps(out,indent=2),encoding='utf-8')
print(json.dumps({k:v for k,v in out.items() if k!='source_hashes'}))
```
