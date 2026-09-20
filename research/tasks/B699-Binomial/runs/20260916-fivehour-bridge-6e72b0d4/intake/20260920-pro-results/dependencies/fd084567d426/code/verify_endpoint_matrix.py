"""Independent finite endpoint: 3x3 companion matrices, no exact.py import."""
from pathlib import Path
import json,hashlib

def mm(A,B):return [[sum(A[i][k]*B[k][j] for k in range(3)) for j in range(3)] for i in range(3)]
def add(A,B):return [[A[i][j]+B[i][j] for j in range(3)] for i in range(3)]
def scale(c,A):return [[c*x for x in row] for row in A]
def det(A):
    return sum((1 if p in [(0,1,2),(1,2,0),(2,0,1)] else -1)*A[0][p[0]]*A[1][p[1]]*A[2][p[2]] for p in [(0,1,2),(0,2,1),(1,0,2),(1,2,0),(2,0,1),(2,1,0)])
def inverse(A):
    assert det(A)==1
    R=[]
    for i in range(3):
        row=[]
        for j in range(3):
            rr=[k for k in range(3) if k!=j];cc=[k for k in range(3) if k!=i]
            row.append((-1)**(i+j)*(A[rr[0]][cc[0]]*A[rr[1]][cc[1]]-A[rr[0]][cc[1]]*A[rr[1]][cc[0]]))
        R.append(row)
    return R
ID=[[int(i==j) for j in range(3)] for i in range(3)]
T=[[0,0,-10],[1,0,10],[0,1,0]]
E1=add(ID,scale(-1,T));E2=add(add(ID,scale(2,T)),scale(-1,mm(T,T)))

def powers(A):
    inv=inverse(A);assert mm(A,inv)==ID
    d={0:ID}
    for k in range(1,121):d[k]=mm(d[k-1],A);d[-k]=mm(d[-k+1],inv)
    return d

def run():
    assert add(add(mm(mm(T,T),T),scale(-10,T)),scale(10,ID))==[[0]*3 for _ in range(3)]
    p1,p2=powers(E1),powers(E2);hits=[];digest=hashlib.sha256()
    for a in range(-120,121):
        for b in range(-120,121):
            A,B,C=[sum(p1[a][i][k]*p2[b][k][0] for k in range(3)) for i in range(3)]
            digest.update(f'{a},{b}:{A},{B},{C}\n'.encode())
            if 5*B==11*C and C%5==0:
                v=-C//5;q=A-18*v
                assert q**3-46*v*q*q+312*v*v*q-338*v**3==1
                hits.append([a,b,q,v])
    assert hits==[[0,0,1,0]],hits
    return {'status':'PASS_INDEPENDENT_MATRIX_ENDPOINT','range':[-120,120],
      'checked':241**2,'hits':hits,'full_sequence_sha256':digest.hexdigest()}
if __name__=='__main__':print(json.dumps(run(),indent=2))
