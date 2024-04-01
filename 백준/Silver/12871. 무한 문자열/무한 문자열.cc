#include <stdio.h>
#include <string.h>

int GCD(int a, int b){
    return (a%b==0?b:GCD(b,a%b));
}
int LCM(int a, int b){
    return (a*b)/GCD(a,b);
}
int main(int argc, const char * argv[]) {
    char s[50]={0,},t[50]={0,};
    int slen,tlen,n;
    scanf("%s %s",s,t);
    
    slen=strlen(s);
    tlen=strlen(t);
    n=LCM(slen,tlen);
    
    char sroof[5000]={0,},troof[50300]={0,};
    
    for(int i=0; i<n; i+=slen){strcat(sroof,s);}
    for(int i=0; i<n; i+=tlen){strcat(troof,t);}
    
    if(strcmp(sroof,troof)==0) printf("1\n");
    else printf("0\n");
    
    return 0;
}
