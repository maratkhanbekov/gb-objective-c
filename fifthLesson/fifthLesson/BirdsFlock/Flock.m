//
//  Flock.m
//  fifthLesson
//
//  Created by Marat Khanbekov on 13.02.2021.
//

#import "Flock.h"

@implementation Flock
-(instancetype)initWithBirds:(NSArray *)birds {
    self = [super self];
    if (self) {
        [birds retain];
        _birds = birds;
        [birds release];
    }
    return self;
}

-(void)remove {
    
    for (Bird *bird in _birds) {
        [bird release];
    }
    
    [_birds release];
    
}

- (void)dealloc
{
    [self remove];
    
    NSLog(@"Flock deallocated");
    [super dealloc];
}
@end
