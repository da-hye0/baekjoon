#include <stdio.h>
#include <stdlib.h>

int main (int argc, char *argv[]){
    int arr[101][101]={0,},sum=0;
    int x1,y1,x2,y2;
    for(int i=0; i<4; i++) {
        scanf("%d %d %d %d",&x1,&y1,&x2,&y2);
        for(int j=x1; j<x2; j++)
            for(int k=y1; k<y2; k++) arr[j][k]=1;
    }
    for(int i=0; i<101; i++){
        for(int j=0; j<101; j++){
            if(arr[i][j]==1) sum++;
        }
    }
    printf("%d\n",sum);
 return 0;
}