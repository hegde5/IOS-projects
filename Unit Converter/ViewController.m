//
//  ViewController.m
//  Unit Converter
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
    NSLog(@"Hello world");
    int x;
    x = 5;
    int y = 20;
    int z = -2;
    
    
    int add_ans = x + y;
    int mul_ans = y * z;
    float height = 16900.3;
    float height_1 = 29029;
    
    float dist_travel = height_1 - height;
    //NSLog(@"The value of x is : %i",x);
    //NSLog(@"Distance to travel : %f", height_1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"didReceiveMemoryWarning is evaulating");
}

- (IBAction)convertUnits:(UIButton *)sender {
    
    float numberOfBills = [self.numberofBillsTextField.text floatValue];
    float numberOfFootballFields = numberOfBills / 91440;
    self.numberOfBillsLabel.text = [NSString stringWithFormat:@"%f", numberOfFootballFields];
}
@end
