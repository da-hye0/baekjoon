#include <stdio.h>
int check(int n,int *bar){
    for(;;){
        if(n>=*bar) return *bar;
        *bar/=2;
        if(*bar<=n) return *bar;
    }
}
int main(int argc, char* argv[]){
    int n,num=0,bar=64;
    scanf("%d",&n);
    while(1){
        if(n==0)break;
        n -= check(n,&bar);
        num++;
    }
    printf("%d\n",num);
    return 0;
}