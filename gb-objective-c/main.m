
#import <Foundation/Foundation.h>
#import "homework-2.m"

//1. Создать калькулятор на основе практической задачи 3.
//2. Улучшить калькулятор благодаря выводу результата, а также переменных в консоль одной строкой (как в практической задаче 2)
void sumFunc(int first, int second) {
    NSLog(@"Результат: %d", first + second);
}

void substractionFunc(int first, int second) {
    NSLog(@"Результат: %d", first - second);
}

void multiplicationFunc(int first, int second) {
    NSLog(@"Результат: %d", first * second);
}

void divisionFunc(int first, int second) {
    NSLog(@"Результат: %d", first / second);
}

void calculatorFunction() {
    int first = 0;
    int second = 0;
    int operator = 0;
  
    printf("Введите первое число: ");
    scanf("%d", &first);
    
    printf("Введите второе число: ");
    scanf("%d", &second);
    
    printf("Введите оператор (1 для +, 2 для -, 3 для *, 4 для /): ");
    scanf("%d", &operator);

    if (operator == 1) {
        sumFunc(first, second);
    }
    else if (operator == 2) {
        substractionFunc(first, second);
    }
    else if (operator == 3) {
        multiplicationFunc(first, second);
    }
    else if (operator == 4) {
        divisionFunc(first, second);
    }
}

//3. *Создать приложение, которое будет вычислять среднее число из трех переменных без применения специальных функций.

void averageFunction() {
    
    int number1 = 0;
    int number2 = 0;
    int number3 = 0;
    
    NSLog(@"Введите число №1:");
    scanf("%d", &number1);
    NSLog(@"Введите число №2:");
    scanf("%d", &number2);
    NSLog(@"Введите число №3:");
    scanf("%d", &number3);
    
    NSLog(@"%d", (number1+number2+number3)/3);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int numberOfProgram;
        
        NSLog(@"Выберите номер задания (1 или 3):");
        scanf("%d", &numberOfProgram);
        if (numberOfProgram == 1) {
            calculatorFunction();
        }
        else if (numberOfProgram == 3) {
            averageFunction();
        }
    }
    return 0;
}

