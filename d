#include <stdio.h>
#include <string.h>

int main(){
//initialize variables
    char m[127] = "4458596380555E5362696064595F5E80635358555D55805963806062556464698067555962548E ", u[255];
    int i;
    for(i = 0; i < strlen(m); i++)
        {
        if((m[i]==56)&& (m[i+1]==48))
        {
        printf(" ");
        
        i=i+1;
        }
        else if ((m[i]==56)&& (m[i+1]==55))
        {
        printf("'");
        }
        else if((m[i]==50)&&(m[i+1]==70))
        {
        printf("?");
        }
        else if((m[i]==56)&&(m[i+1]==49))
        {
        printf("!");
        }
        else{
        if((i%2==0 || i==0) && i!=1)
        {u[i]=m[i]-48;
    u[i]=u[i]*16;

        }
        else
        {
    if (m[i]=='A')
    u[i]=u[i-1]+10;
    else if (m[i]=='B')
    u[i]=u[i-1]+11;
    else if (m[i]=='C')
    u[i]=u[i-1]+12;
    else if (m[i]=='D')
    u[i]=u[i-1]+13;
    else if (m[i]=='E')
    u[i]=u[i-1]+14;
    else if (m[i]=='F')
    u[i]=u[i-1]+15;

    else
    {
    u[i]=m[i]-48;
    u[i]=u[i-1]+u[i];
    }
    m[i]=u[i]+16;


    if(m[i]>127)
    {
        m[i]=(m[i]-144)+32;
        printf("%c",m[i]);
    }
    else
    printf("%c",m[i]);
        }
        

        }
        }
}
