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

- (CGFloat)calculate: (NSString *)method with:(CGFloat)value1 and:(CGFloat)value2 {
    
    if ([method isEqualToString: @"+"]) {
        CGFloat result = value1 + value2;
        return result;
    }
    
    return 0;
}
 
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%f", [self calculate:@"+" with:2 and:2]);
}
@end
