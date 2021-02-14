//
//  Beak.h
//  obj-c
//
//  Created by 18316629 on 11.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Beak : NSObject
@property (nonatomic, strong) NSString* color;
-(instancetype) initWith: (NSString*) color;
@end

NS_ASSUME_NONNULL_END
