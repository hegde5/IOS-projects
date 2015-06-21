//
//  ViewController.h
//  Unit Converter
//
//  Created by Vinay Hegde on 6/19/15.
//  Copyright (c) 2015 Vinay Hegde. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *numberOfBillsLabel;
@property (strong, nonatomic) IBOutlet UITextField *numberofBillsTextField;
- (IBAction)convertUnits:(UIButton *)sender;

@end

