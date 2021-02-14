//
//  Wing.m
//  obj-c
//
//  Created by 18316629 on 11.02.2021.
//

#import "Wing.h"

@implementation Wing
-(instancetype) initWithSide: (NSString*) side {
    self = [super init];
    if (self) {
        [side retain];
        _side = side;
        [side release];
        NSLog(@"%@ wing initialized", _side);
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"%@ wing dealloc", _side);
    [_side release];
    [super dealloc];
}
@end
