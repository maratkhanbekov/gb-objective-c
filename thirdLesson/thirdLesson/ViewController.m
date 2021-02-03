//
//  ViewController.m
//  thirdLesson
//
//  Created by Marat Khanbekov on 03.02.2021.
//

#import "ViewController.h"

@implementation ViewController

//    2. Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния.

enum CalculationMethod {
    Addition,
    Substraction,
    Division,
    Multipliation
};

typedef enum CalculationMethod CalculationMethod;



- (CGFloat)additionOperation: (int)value1 with:(int)value2 {
    CGFloat result = value1 + value2;
    return result;
}

- (CGFloat)substractionOperation: (int)value1 with:(int)value2 {
    CGFloat result = value1 - value2;
    return result;
}

- (CGFloat)multiplicationOperation: (int)value1 with:(int)value2 {
    CGFloat result = value1*value2;
    return result;
}

- (CGFloat)divisionOperation: (int)value1 with:(int)value2 {
    CGFloat result = value1/value2;
    return result;
}


- (CGFloat)calculate: (CalculationMethod)method with:(CGFloat)value1 and:(CGFloat)value2 {
    
    if (method == Addition) {
        return [self additionOperation: value1 with: value2];
    } else if (method == Substraction) {
        return [self substractionOperation: value1 with: value2];
    } else if (method == Division){
        return [self divisionOperation: value1 with: value2];
    } else if (method == Multipliation) {
        return [self multiplicationOperation: value1 with: value2];
    }
    
    return 0;
}

//    3. *Создать приложение, которое будет добавлять и выводить список пользователей, которые были добавлены путем введения имени в консоль (scanf). Все имена необходимо хранить в структуре пользователя.

enum UserAgeSegment {
    Child,
    Teenager,
    Adult,
    MiddleAged,
    Elder
};

typedef enum UserAgeSegment UserAgeSegment;

struct User {
    NSString *name;
    CGFloat age;
    UserAgeSegment userAgeSegment;
};

typedef struct User User;


- (void)createUserProfile: (NSString*)name with:(CGFloat)age and:(UserAgeSegment)userAgeSegment {
    User user;
    
    user.name = name;
    user.age = age;
    user.userAgeSegment = userAgeSegment;

    NSLog(@"name: %@", user.name);
    NSLog(@"age: %f", user.age);
    NSLog(@"userAgeSegment: %u", user.userAgeSegment);
};

- (void)userProfilesProcessing {
    [self createUserProfile:@"Карл" with:29 and:Adult];
    [self createUserProfile:@"Украл" with:15 and:Teenager];
    [self createUserProfile:@"У" with:5 and:Child];
    [self createUserProfile:@"Клары" with:55 and:MiddleAged];
    [self createUserProfile:@"Коралы" with:77 and:Elder];
};

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1
    NSLog(@"%f", [self calculate:Addition with:3 and:3]);
    NSLog(@"%f", [self calculate:Division with:3 and:3]);
    NSLog(@"%f", [self calculate:Multipliation with:3 and:3]);
    NSLog(@"%f", [self calculate:Substraction with:3 and:3]);
    
    // 2
    [self userProfilesProcessing];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}


@end
