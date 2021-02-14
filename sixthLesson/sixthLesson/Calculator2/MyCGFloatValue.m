//
//  MyCGFloatValue.m
//  fifthLesson
//
//  Created by Marat Khanbekov on 11.02.2021.
//

#import <Foundation/Foundation.h>

@interface NSNumber (MyCGFloatValue)
-(CGFloat)myCGFloatValue;
@end

@implementation NSNumber (MyCGFloatValue)
-(CGFloat)myCGFloatValue{
    CGFloat result;
    CFNumberGetValue((__bridge CFNumberRef)(self), kCFNumberCGFloatType, &result);
    return result;
}
@end
