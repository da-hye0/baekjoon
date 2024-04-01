#include <stdio.h>
#include <stdlib.h>
int compare(const void* a, const void* b) {
    return (*(int*)a) - (*(int*)b);
}
int main(int argc, char* argv[]){
    int *A,*B,n=0,sum=0;
    scanf("%d",&n);
    A = (int*)malloc(sizeof(int)*n);
    B = (int*)malloc(sizeof(int)*n);
    for(int i=0; i<n; i++) scanf("%d",&A[i]);
    for(int i=0; i<n; i++) scanf("%d",&B[i]);
    qsort(A, n, sizeof(int), compare);
    qsort(B, n, sizeof(int), compare);
    for (int i = 0; i < n; i++) sum = sum + (A[i] * B[n-i-1]);
    printf("%d", sum);
    free(A);
    free(B);
    return 0;
}