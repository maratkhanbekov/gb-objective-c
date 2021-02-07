//
//  ViewController.m
//  fourthLesson
//
//  Created by Marat Khanbekov on 07.02.2021.
//

#import "ViewController.h"

#import "Student.h"

//1. Создать программу, которая будет выводить список студентов. Для этого необходимо создать класс Студент, а значения свойств устанавливать, используя собственный конструктор.

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Student *student1 = [[Student alloc] initWith:@"Lupa" and:@"Lupovna" and: [NSNumber numberWithInt:18]];
    
    Student *student2 = [[Student alloc] initWith:@"Pupa" and:@"Pupovna" and: [NSNumber numberWithInt:21]];
    
    [student1 description];
    student1.name = @"Dupa";
    NSLog(@"%@", student1.fullName);
    
    [student2 description];
    [student2 increaseAgeWith: [NSNumber numberWithInt:2]];
    [student2 description];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}


@end
