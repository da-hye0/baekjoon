#include <stdio.h>
#include <stdlib.h>
int compare(const void* a, const void* b) { //내림차 큐솔트
    return (*(int*)b) - (*(int*)a);
}

int main (int argc, char *argv[]){
    int N=0,*arr;
    double sum=0;
    scanf("%d",&N);
    arr = (int*)malloc(sizeof(int)*N);
    for(int i=0; i<N; i++) scanf("%d",&arr[i]);
    qsort(arr, N, sizeof(int), compare);
    sum=arr[0];
    for(int i=1; i<N; i++)sum+=(double)arr[i]/2;
    printf("%.1f\n",sum);
    return 0;
}