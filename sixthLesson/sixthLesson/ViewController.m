//
//  ViewController.m
//  sixthLesson
//
//  Created by Marat Khanbekov on 14.02.2021.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    dispatch_queue_t backQueue = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0);
    dispatch_async(backQueue, ^{
        NSLog(@"Расчеты в фоновом потоке:");
        [Calculator calculate:Addition with:[NSNumber numberWithInt:1] and:[NSNumber numberWithInt:1]];
    });
    
    
    
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    dispatch_async(mainQueue, ^{
        NSLog(@"Расчеты в главном потоке:");
        NSLog(@"%f", [Calculator calculate:Addition with:[NSNumber numberWithInt:1] and:[NSNumber numberWithInt:1]]);
    });
    
    
    dispatch_group_t calculationGroup = dispatch_group_create();
    dispatch_queue_t utilityQueue = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
    
    dispatch_group_async(calculationGroup, utilityQueue, ^{
        NSLog(@"%f", [Calculator calculate:Division with:[NSNumber numberWithInt:567111] and:[NSNumber numberWithInt:3]]);
        [NSThread sleepForTimeInterval: 3];
    });
    
    dispatch_group_async(calculationGroup, utilityQueue, ^{
        NSLog(@"%f", [Calculator calculate:Multipliation with:[NSNumber numberWithInt:100] and:[NSNumber numberWithInt:241]]);
    });
    
    dispatch_group_notify(calculationGroup, utilityQueue, ^{
        NSLog(@"Расчеты группы закончились, теперь посчитаем окончательное выражение");
        NSLog(@"%f", [Calculator calculate:Division with:[NSNumber numberWithInt:10] and:[NSNumber numberWithInt:5]]);
    });
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}


@end
