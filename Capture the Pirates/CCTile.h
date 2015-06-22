//
//  CCTile.h
//  Capture the Pirates
//
//  Created by Vinay Hegde on 6/21/15.
//
//

#import <Foundation/Foundation.h>
#import "CCWeapon.h"
#import "CCArmor.h"


@interface CCTile : NSObject

@property (strong, nonatomic)NSString *story;
@property (strong, nonatomic)UIImage *backgroundImage;
@property (strong, nonatomic)NSString *actionButtonName;
@property (strong, nonatomic)CCWeapon *weapon;
@property (strong, nonatomic)CCArmor *armor;
@property (nonatomic)int healthEffect;


@end
