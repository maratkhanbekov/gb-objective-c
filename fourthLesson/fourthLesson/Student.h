//
//  Student.h
//  fourthLesson
//
//  Created by Marat Khanbekov on 07.02.2021.
//





#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

//2. У студента должно быть свойство age (возраст), оно должно быть только для чтения
@property (nonatomic, strong, readonly) NSNumber *age;

//3. У студента должны быть свойства name, surname и fullName. Первые два должны быть обычными свойствами, а fullName должно возвращать строку состоящую из склеенных name и surname.
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong) NSString *fullName;

-(void)description;
-(void)increaseAgeWith: (NSNumber *)increment;

- (instancetype)initWith: (NSString*)name and:(NSString*)surname and:(NSNumber*)age;

@end

NS_ASSUME_NONNULL_END
