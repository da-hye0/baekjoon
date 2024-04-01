#include <stdio.h>
#include <stdlib.h>
int compare(const void* a, const void* b) { //내림차 큐솔트
    return (*(int*)a) - (*(int*)b);
}
int main (int argc, char *argv[]){
    int w,h,cut,num1,num2,aIndex=1,bIndex=1;
    int arr[2][101]={0,}, result[2][101]={0,}; //단순히 자를 좌표 저장
    
    scanf("%d %d",&w,&h);
    scanf("%d",&cut);
    
    for(int i=0; i<cut; i++){
        scanf("%d %d",&num1,&num2);
        if(num1==0){ //가로자름일때 a에 좌표저장
            arr[0][aIndex]=num2;
            aIndex++;
        }
        else if(num1 ==1){ //세로자름일때 b에 좌표저장
            arr[1][bIndex]=num2;
            bIndex++;
        }
    }
    arr[0][aIndex] = h;
    arr[1][bIndex] = w;
    aIndex++;
    bIndex++;
    
    qsort(arr[0], aIndex, sizeof(int), compare);
    qsort(arr[1], bIndex, sizeof(int), compare);
    int amax=0,bmax=0;
    for(int i=0; i<aIndex-1; i++){
        result[0][i] = arr[0][i+1]-arr[0][i];
        if(result[0][i]>amax)amax=result[0][i];
    }
    for(int j=0; j<bIndex-1; j++){
        result[1][j] = arr[1][j+1]-arr[1][j];
        if(result[1][j]>bmax)bmax=result[1][j];
    }
    printf("%d\n",amax*bmax);

    
    return 0;
}