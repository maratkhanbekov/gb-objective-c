
#import <Foundation/Foundation.h>

//1. Создать калькулятор на основе практической задачи 3.
//2. Улучшить калькулятор благодаря выводу результата, а также переменных в консоль одной строкой (как в практической задаче 2)
void calculatorFunction() {
    // Создаем переменную char до записи ввода с консоли
    char inputExpression[100];
    
    // Записываем введенное выражение
    NSLog(@"Введите выражение для расчета:");
    scanf("%s", inputExpression);

    // Переводим в NSString
    NSString *stringExpression = [NSString stringWithFormat:@"%s", inputExpression];
    // Переводим в NSExpression
    NSExpression *expression = [NSExpression expressionWithFormat: stringExpression];
    // Производим расчет
    NSNumber *result = [expression expressionValueWithObject:nil context:nil];
    
    NSLog(@"Результат: %@", result);
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

