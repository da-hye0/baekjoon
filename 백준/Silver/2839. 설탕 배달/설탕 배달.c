#include <stdio.h>

int main(){
    int kg,box=0,flag=0;
    scanf("%d",&kg);
    while(1){
        if(kg%5==0){box += kg/5;break;}
        kg = kg-3;
        box++;
        if(kg<0){flag=1;break;}
    }
    if(flag==0)printf("%d\n",box);
    else printf("-1\n");
    return 0;
}