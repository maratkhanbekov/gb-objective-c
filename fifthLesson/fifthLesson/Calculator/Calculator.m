//
//  Calculator.m
//  fifthLesson
//
//  Created by Marat Khanbekov on 11.02.2021.
//

#import "Calculator.h"
#import "MyCGFloatValue.m"

@implementation Calculator

- (CGFloat)additionOperation: (NSNumber*)value1 with:(NSNumber*)value2 {
    [value1 retain];
    [value2 retain];
    CGFloat result = [value1 myCGFloatValue] + [value2 myCGFloatValue];
    [value1 release];
    [value2 release];
    return result;
}

- (CGFloat)substractionOperation: (NSNumber*)value1 with:(NSNumber*)value2 {
    [value1 retain];
    [value2 retain];
    CGFloat result = [value1 myCGFloatValue] - [value2 myCGFloatValue];
    [value1 release];
    [value2 release];
    return result;
}

- (CGFloat)multiplicationOperation: (NSNumber*)value1 with:(NSNumber*)value2 {
    [value1 retain];
    [value2 retain];
    CGFloat result = [value1 myCGFloatValue] * [value2 myCGFloatValue];
    [value1 release];
    [value2 release];
    return result;
}

- (CGFloat)divisionOperation: (NSNumber*)value1 with:(NSNumber*)value2 {
    [value1 retain];
    [value2 retain];
    CGFloat result = [value1 myCGFloatValue] / [value2 myCGFloatValue];
    [value1 release];
    [value2 release];
    return result;
}

- (CGFloat)calculate: (CalculationMethod)method with:(NSNumber*)value1 and:(NSNumber*)value2 {
    switch (method) {
        case Addition:
            return [self additionOperation: value1 with: value2];
        case Substraction:
            return [self substractionOperation: value1 with: value2];
        case Division:
            return [self divisionOperation: value1 with: value2];
        case Multipliation:
            return [self multiplicationOperation: value1 with: value2];
        default:
            return 0;
    }
}

- (void)dealloc
{
    NSLog(@"Calculator deallocated");
    [super dealloc];
}
@end
