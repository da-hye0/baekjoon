import heapq
import sys

input = sys.stdin.readline

T = int(input())

for _ in range(T):
    K = int(input())
    files = list(map(int, input().split()))
    heapq.heapify(files)
    
    total_cost = 0
    
    while len(files) > 1:
        file1 = heapq.heappop(files)
        file2 = heapq.heappop(files)
        
        current_cost = file1 + file2
        total_cost += current_cost
        heapq.heappush(files, current_cost)
        
    print(total_cost)
