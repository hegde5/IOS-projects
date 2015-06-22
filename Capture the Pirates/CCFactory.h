//
//  CCFactory.h
//  Capture the Pirates
//
//  Created by Vinay Hegde on 6/21/15.
//
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCFactory : NSObject

-(NSArray *)tiles;
-(CCCharacter *)character;
-(CCBoss *)boss;

@end
