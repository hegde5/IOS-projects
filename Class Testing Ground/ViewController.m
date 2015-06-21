//
//  ViewController.m
//  Class Testing Ground
//
//  Created by Vinay Hegde on 6/21/15.
//  Copyright (c) 2015 Vinay Hegde. All rights reserved.
//

#import "ViewController.h"
#import "MBFDog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *myString = @"Manchester United reddevils";
    NSArray *wordsInSentence = [myString componentsSeparatedByString:@" "];
    //NSLog(@"%@", wordsInSentence);
    NSMutableArray *capitalizeWords = [[NSMutableArray alloc]init];
//    for(int word = 0; word < [wordsInSentence count]; word ++)
//    {
//        NSString *uncapitalizedWord = [wordsInSentence objectAtIndex:word];
//        NSString *capitalizedWord = [uncapitalizedWord capitalizedString];
//        [capitalizeWords addObject:capitalizedWord];
//        
//    }
//    NSLog(@"%@",capitalizeWords);
    MBFDog *dog = [[MBFDog alloc] init];
    [dog setName:@"Sparky"];
    NSString *mydogsName = [dog name];
    NSLog(@"%@",mydogsName);
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
