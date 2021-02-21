//
//  Calculator.m
//  fifthLesson
//
//  Created by Marat Khanbekov on 11.02.2021.
//

#import "Calculator.h"
#import "MyCGFloatValue.m"

@implementation Calculator
CalculationBlock sum = ^(int a, int b) {
    return a + b;
};

CalculationBlock substraction = ^(int a, int b) {
    return a - b;
};

CalculationBlock multiplication = ^(int a, int b) {
    return a * b;
};

CalculationBlock division = ^(int a, int b) {
    return a / b;
};


+ (CGFloat)calculate: (CalculationMethod)method with:(NSNumber*)value1 and:(NSNumber*)value2 {
    switch (method) {
        case Addition:
            return sum([value1 myCGFloatValue], [value2 myCGFloatValue]);
            break;
        case Substraction:
            return substraction([value1 myCGFloatValue], [value2 myCGFloatValue]);
            break;
        case Division:
            return division([value1 myCGFloatValue], [value2 myCGFloatValue]);
            break;
        case Multipliation:
            return multiplication([value1 myCGFloatValue], [value2 myCGFloatValue]);
            break;
        default:
            return 0;
    }
}

@end
