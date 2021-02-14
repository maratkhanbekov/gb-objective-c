//
//  Bird.m
//  obj-c
//
//  Created by 18316629 on 11.02.2021.
//

#import "Bird.h"

@implementation Bird
-(instancetype) initWithAttributes: (Beak*) beak and: (NSArray*) wings {
    self = [super self];
    if (self) {
        [beak retain];
        _beak = beak;
        [beak release];
        
        [wings retain];
        _wings = wings;
        [wings release];
    }
    return self;
}

-(void)remove {
    
    for (Wing *wing in _wings) {
        [wing release];
    }
    
    [_beak release];
    [_wings release];

}

- (void)dealloc
{
    
    [self remove];
    NSLog(@"Bird deallocated");
    [super dealloc];
}
@end
