//
//  Beak.m
//  obj-c
//
//  Created by 18316629 on 11.02.2021.
//

#import "Beak.h"

@implementation Beak
-(instancetype) initWith: (NSString*) color {
    
    self = [super self];
    if (self) {
        [color retain];
        _color = color;
        [color release];
        
        NSLog(@"%Beak initialized");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"%Beak deallocated");
    [_color release];
    [super dealloc];
}
@end
