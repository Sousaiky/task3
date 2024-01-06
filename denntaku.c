#include <stdio.h>

int main(void){
    double a, b, c;
    char s;
    printf("最初の数字を入力:");
    scanf("%lf", &a);

    while (1){
        printf("符号(+,-,*,/)と数字を入力:");
        scanf(" %c %lf", &s, &b);

        switch(s){
            case'+':
                c = a + b;
                break;

            case'-':
                c = a - b;
                break;

            case'*':
                c = a * b;
                break;

            case'/':
                if (b != 0) {
                    c = a / b;
                } else {
                    puts("エラー: 0で割ることはできません");
                    continue;  // ゼロでの割り算が発生した場合は無視して次の繰り返しへ
                }
                break;

             default:
                puts("計算できません");
                break;
		}

      printf("計算結果:%lf\n", c);
      a = c;
    }

    return 0;
}
