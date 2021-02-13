//
//  Flock.h
//  fifthLesson
//
//  Created by Marat Khanbekov on 13.02.2021.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject
-(instancetype)initWithBirds: (NSArray*)birds;
@property (nonatomic, strong) NSArray *birds;
@end

NS_ASSUME_NONNULL_END
