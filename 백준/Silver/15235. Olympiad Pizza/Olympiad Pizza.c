#include <stdio.h>
#include <stdlib.h>

int main (int argc, char *argv[]){
    int n=0,*a,*b,sum=0,num=0;
    scanf("%d",&n);
    a = (int*)malloc(sizeof(int)*n);
    b = (int*)malloc(sizeof(int)*n);
    
    for(int i=0; i<n; i++) {
        scanf("%d",&a[i]);
        sum+=a[i];
        b[i]=0;
    }
    
    do{
       for(int i=0; i<n; i++){
           if (a[i]!=0) {
               a[i]--;
               num+=1;
           }
           if(a[i]==0&&b[i]==0) b[i]=num;
       }
    }while(sum!=num);
    
    for(int i=0; i<n; i++) printf("%d ",b[i]);
 return 0;
}