#include <stdio.h>
double factorial(int a){
    if(a==0) return 1;
    return factorial(a-1)*a;
}
int main(){
    int T,N,M;
    scanf("%d",&T);
    for(int i=0; i<T; i++){
        scanf("%d %d",&N,&M);
        printf("%.lf\n",(factorial(M)/(factorial(N)*factorial(M-N))));
    }
    return 0;
}