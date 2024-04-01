#include <stdio.h>
#include <stdlib.h>

int main (int argc, char *argv[]){
    int N,H,W,idx=0,check=0;
    scanf("%d %d %d",&N,&H,&W);
    char input[10][1001]={0,};
    char word[101];
    int flag[101]={0,};
    for(int i=0; i<H; i++) {
        scanf("%s",input[i]);
    }
    for(int i=0; i<H; i++){
        for(int k=0; k<W*N; k++){
            check++;
            if(input[i][k]!='?') {
                word[idx]=input[i][k];
                flag[idx]=1;
            }
            
            if(check==W) {
                check=0;
                idx++;
            }
        }
        idx=0;
        check=0;
    }
    for(int i=0; i<N; i++){
        if(flag[i]==0)printf("?");
        else printf("%c",word[i]);
    }
    printf("\n");
    return 0;
}