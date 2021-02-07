//
//  Student.m
//  fourthLesson
//
//  Created by Marat Khanbekov on 07.02.2021.
//

#import "Student.h"

@implementation Student
- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@,%@", self.name, self.surname];
};

//4. Переопределите метод description чтобы при выводе объекта в NSLog выводилась информация по всем его свойствам.
- (void)description {
    NSLog(@"%@ %@ %@", self.name, self.surname, _age);
}

//5. Добавьте метод который будет увеличивать его возраст. (Да свойство age только для чтения).
- (void)increaseAgeWith: (NSNumber *)increment {
    NSNumber *newAge = @([_age intValue] + [increment intValue]);
    _age = newAge;
}

// Специальный конструктор для read-only свойства
- (instancetype)initWith: (NSString*)name and:(NSString*)surname and:(NSNumber*)age  {
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surname;
        _age = age;
    }
    return self;
}

@end





