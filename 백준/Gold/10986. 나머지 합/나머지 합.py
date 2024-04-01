import sys

input = sys.stdin.readline
n, m = map(int, input().split())  
num = list(map(int, input().split())) + [0] 
r = [0] * m  

for i in range(n):
    num[i] += num[i - 1] 
    r[num[i] % m] += 1 

cnt = r[0]  

for i in r:
    cnt += i * (i - 1) // 2

print(cnt)