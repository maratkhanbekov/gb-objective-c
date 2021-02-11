//
//  ViewController.m
//  secondLesson
//
//  Created by Marat Khanbekov on 30.01.2021.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

NSString *alphabet = @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
// 1. Создать функцию, которая будет проверять, входит ли переданная буква в английский алфавит.
- (BOOL)isInAlphabet: (NSString *)letter {
    if ([alphabet rangeOfString: letter].location == NSNotFound) {
        return false;
    }
    return true;
}

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



// 2. Разделение метода calculate (из практической задачи 2) на несколько методов (отдельно сложение, вычитание, умножение и деление)
- (CGFloat)calculate: (NSString *)method with:(CGFloat)value1 and:(CGFloat)value2 {
    if ([method isEqualToString: @"+"]) {
        return [self additionOperation: value1 with: value2];
    } else if ([method isEqualToString: @"-"]) {
        return [self substractionOperation: value1 with: value2];
    } else if ([method isEqualToString: @"/"]) {
        return [self divisionOperation: value1 with: value2];
    } else if ([method isEqualToString: @"*"]) {
        return [self multiplicationOperation: value1 with: value2];
    }
    
    return 0;
}


 
- (void)viewDidLoad {
    [super viewDidLoad];
    // 1
    NSLog(@"%s", [self isInAlphabet: @"a"] ? "true" : "false");
    NSLog(@"%s", [self isInAlphabet: @"C"] ? "true" : "false");
    NSLog(@"%s", [self isInAlphabet: @"Ф"] ? "true" : "false");
    
    // 2
    NSLog(@"%f", [self calculate:@"+" with:4 and:2]);
    NSLog(@"%f", [self calculate:@"/" with:4 and:2]);
    NSLog(@"%f", [self calculate:@"-" with:4 and:2]);
    NSLog(@"%f", [self calculate:@"*" with:4 and:2]);
}
@end
