//
//  MBFPuppy.m
//  Man's Best Friend
//
//  Created by Vinay Hegde on 6/21/15.
//  Copyright (c) 2015 Vinay Hegde. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy

-(void)givePuppyEyes
{
    NSLog(@":(");
}

-(void)bark
{
    [super bark];
    NSLog(@"wuh wuh!");
    [self givePuppyEyes];
}
@end
