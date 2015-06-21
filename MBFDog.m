//
//  MBFDog.m
//  Man's Best Friend
//
//  Created by Vinay Hegde on 6/19/15.
//  Copyright (c) 2015 Vinay Hegde. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBFDog.h"

@implementation MBFDog : NSObject 

-(void)bark
{
    NSLog(@"Woof Woof!");
    
}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark++){
        [self bark];
    }
}

-(void)changeBreedToWereWolf
{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud)
    {
        for (int bark = 1; bark <= numberOfTimes; bark++)
            NSLog(@"yip yip");
    }
    else {
        for ( int bark = 1; bark <= numberOfTimes; bark++)
            NSLog(@"Ruff Ruff!");
    }
    
}

-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}

@end