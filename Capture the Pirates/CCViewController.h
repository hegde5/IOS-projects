//
//  CCViewController.h
//  Capture the Pirates
//
//  Created by Vinay Hegde on 6/21/15.
//
//

#import <UIKit/UIKit.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCViewController : UIViewController


//instance varibles
@property (nonatomic) CGPoint currentPoint;

@property (strong, nonatomic) NSArray *tiles;

@property (strong, nonatomic) CCCharacter *character;

@property (strong, nonatomic) CCBoss *boss;

//IBOutlet
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;


@property (strong, nonatomic) IBOutlet UILabel *healthLabel;

@property (strong, nonatomic) IBOutlet UILabel *damageLabel;


@property (strong, nonatomic) IBOutlet UILabel *WeaponLabel;


@property (strong, nonatomic) IBOutlet UILabel *armorLabel;


@property (strong, nonatomic) IBOutlet UILabel *storyLabel;


@property (strong, nonatomic) IBOutlet UIButton *actionButton;


@property (strong, nonatomic) IBOutlet UIButton *northButton;


@property (strong, nonatomic) IBOutlet UIButton *eastButton;


@property (strong, nonatomic) IBOutlet UIButton *southButton;


@property (strong, nonatomic) IBOutlet UIButton *westButton;

//IBActions

- (IBAction)actionButtonPressed:(UIButton *)sender;

- (IBAction)northButtonPressed:(UIButton *)sender;

- (IBAction)eastButtonPressed:(UIButton *)sender;

- (IBAction)southButtonPressed:(UIButton *)sender;

- (IBAction)westButtonPressed:(UIButton *)sender;

- (IBAction)resetButtonPressed:(UIButton *)sender;


@end
