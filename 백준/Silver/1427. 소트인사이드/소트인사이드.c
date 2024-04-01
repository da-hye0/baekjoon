#include <stdio.h>
#include <stdlib.h>
int main(){
    int num,index=0,tmp,n;
    scanf("%d",&num);
    int *arr;
    n=num;
    for(index=0; n!=0; index++) n/=10;
    arr = (int*)malloc(sizeof(int)*index);
    for(int i=0; i<index; i++){
        arr[i]=num%10;
        num/=10;
    }
    for(int i=0; i<index; i++){
            for(int j=0; j<index; j++){
                if(arr[i]>arr[j]){
                    tmp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = tmp;
                }
            }
        }
    for(int i=0; i<index; i++) printf("%d",arr[i]);

    return 0;
}