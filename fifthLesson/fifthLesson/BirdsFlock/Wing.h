//
//  Wing.h
//  obj-c
//
//  Created by 18316629 on 11.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Wing : NSObject
-(instancetype)initWithSide: (NSString*) side;
@property (nonatomic, strong) NSString* side;
@end

NS_ASSUME_NONNULL_END
