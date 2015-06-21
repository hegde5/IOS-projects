//
//  ViewController.h
//  Man's Best Friend
//
//  Created by Vinay Hegde on 6/19/15.
//  Copyright (c) 2015 Vinay Hegde. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;



@property (strong, nonatomic) IBOutlet UIImageView *myImageView;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

@property (strong, nonatomic) IBOutlet UILabel *breedLabel;

@property (strong, nonatomic) NSMutableArray *myDogs;

@property (nonatomic) int currentIndex;

@end

