#include <stdio.h>

int main(){
    int n,line=1;
    scanf("%d",&n);
    for(int i=1; n>line; i++){
            n = n - line;
            line++;
    }
    if(line%2==0) printf("%d/%d\n",n,line+1-n);
    else printf("%d/%d\n",line+1-n,n);
    return 0;
}