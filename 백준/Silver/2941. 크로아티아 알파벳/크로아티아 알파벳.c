#include <stdio.h>
#include <string.h>

int main(){
    char arr[50];
    int num = 0;
    scanf("%s",arr);
    
    for(int i=1; i<strlen(arr); i++){
        if(arr[i]=='='){
            if(arr[i-1]=='c'||arr[i-1]=='s'){
                arr[i]='0';
                arr[i-1]='0';
                num++;
            }
            else if(arr[i-1]=='z'){
                if(arr[i-2]=='d') {
                    arr[i-2]='0';
                    arr[i]='0';
                    arr[i-1]='0';
                    num++;
                }
                else {
                    arr[i]='0';
                    arr[i-1]='0';
                    num++;
                }
            }
        }
        else if(arr[i]=='j'&&(arr[i-1]=='l'||arr[i-1]=='n')){
                arr[i]='0';
                arr[i-1]='0';
                num++;
        }
        else if(arr[i]=='-'&&(arr[i-1]=='c'||arr[i-1]=='d')){
                arr[i]='0';
                arr[i-1]='0';
                num++;
        }
    }
    for(int i=0; i<strlen(arr); i++){
        if(arr[i]!='0') num++;
    }
    
    printf("%d\n",num);
    return 0;
}