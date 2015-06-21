//
//  ViewController.m
//  Control Flow
//
//  Created by Vinay Hegde on 6/19/15.
//  Copyright (c) 2015 Vinay Hegde. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int truckSpeed = 45;
    int lamboSpeed = 120;
    int mySpeed = lamboSpeed;
    if (mySpeed < 70){
        NSLog(@"Keep Cruising");
        
    }
    else{
        NSLog(@"Slow down");
    }
    
    BOOL isTelOn = YES;
    
    if (isTelOn == YES) {
        NSLog(@"Turn it off");
    }
    else{
        NSLog(@"Take a break");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
