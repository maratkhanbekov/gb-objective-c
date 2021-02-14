//
//  ViewController.m
//  fifthLesson
//
//  Created by Marat Khanbekov on 11.02.2021.
//

#import "ViewController.h"

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    Calculator *calculator = [Calculator alloc];
    NSLog(@"%f", [calculator calculate:Addition with:[NSNumber numberWithInt:1] and:[NSNumber numberWithInt:1]]);
    [calculator release];
    
    
    Wing *woodpeckerLeftWing = [[Wing alloc] initWithSide:@"Left"];
    Wing *woodpeckerRightWing = [[Wing alloc] initWithSide:@"Right"];
    Beak *woodpeckerBeak = [[Beak alloc] initWith:@"Red"];
    
    NSArray *woodpeckerWings = [[NSArray alloc] initWithObjects:woodpeckerLeftWing, woodpeckerRightWing, nil];
    
    Bird *woodpecker = [[Bird alloc] initWithAttributes:woodpeckerBeak and:woodpeckerWings];
    
    Wing *bullfinchLeftWing = [[Wing alloc] initWithSide:@"Left"];
    Wing *bullfinchRightWing = [[Wing alloc] initWithSide:@"Right"];
    Beak *bullfinchBeak = [[Beak alloc] initWith:@"Red"];
    
    NSArray *bullfinchWings = [[NSArray alloc] initWithObjects:bullfinchLeftWing, bullfinchRightWing, nil];
    
    Bird *bullfinch = [[Bird alloc] initWithAttributes:bullfinchBeak and:bullfinchWings];
    
    
    NSArray *birds = [[NSArray alloc] initWithObjects:woodpecker, bullfinch, nil];
    
    Flock *flockOfTwo = [[Flock alloc] initWithBirds:birds];
    
    [flockOfTwo release];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}


@end
