//FizzBuzz - Common Interview Question
#include <stdio.h>

int main()
{
    for (int n = 1; n <= 100; n++)
    {
        int fizz = 0;
        int buzz = 0;
        
        //Fizz
        if ((n % 3)==0)
        {
            fizz=1;
        }
        if ((n % 5)==0)
        {
            buzz=1;
        }
        
        if (fizz==1 && buzz==0)
        {
            printf("Fizz\n");
            continue;
        }
        if (fizz==0 && buzz==1)
        {
            printf("Buzz\n");
            continue;
        }
        if (fizz==1 && buzz==1)
        {
            printf("FizzBuzz\n");
            continue;
        }
        printf("%d\n",n);
            }
    return 0;
}
