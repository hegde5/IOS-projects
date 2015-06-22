//
//  CCCharacter.h
//  Capture the Pirates
//
//  Created by Vinay Hegde on 6/22/15.
//
//

#import <Foundation/Foundation.h>
#import "CCArmor.h"
#import "CCWeapon.h"


@interface CCCharacter : NSObject

@property (strong, nonatomic) CCArmor *armor;

@property(strong, nonatomic) CCWeapon *weapon;

@property(nonatomic) int damage;

@property(nonatomic) int health;

@end
