import sys

n=0
s = int(input())

while 1 :
  if s-n>0 :
    n+=1
    s=s-n
  else : 
    break
  
print(n)