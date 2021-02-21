//
//  Calculator.h
//  fifthLesson
//
//  Created by Marat Khanbekov on 11.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

typedef enum CalculationMethod {
    Addition,
    Substraction,
    Division,
    Multipliation
} CalculationMethod;

typedef int(^CalculationBlock) (int a, int b);

+ (CGFloat)calculate: (CalculationMethod)method with:(NSNumber*)value1 and:(NSNumber*)value2;


@end

NS_ASSUME_NONNULL_END
