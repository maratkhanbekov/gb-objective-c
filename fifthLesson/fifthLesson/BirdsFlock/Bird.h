//
//  Bird.h
//  obj-c
//
//  Created by 18316629 on 11.02.2021.
//

#import <Foundation/Foundation.h>
#import "Wing.h"
#import "Beak.h"

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject
@property (nonatomic, strong) Beak *beak;
@property (nonatomic, strong) NSArray *wings;
-(instancetype)initWithAttributes: (Beak*) beak and: (NSArray*) wings;
@end

NS_ASSUME_NONNULL_END
