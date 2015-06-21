//
//  MBFDog.h
//  Class Testing Ground
//
//  Created by Vinay Hegde on 6/21/15.
//  Copyright (c) 2015 Vinay Hegde. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject{
    NSString *_name;
}

//@property (strong,nonatomic) NSString *name;

-(void)setName:(NSString *)name;
-(NSString *)name;


@end
