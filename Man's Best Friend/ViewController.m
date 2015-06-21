//
//  ViewController.m
//  Man's Best Friend
//
//  Created by Vinay Hegde on 6/19/15.
//  Copyright (c) 2015 Vinay Hegde. All rights reserved.
//

#import "ViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Pappu";
    myDog.breed = @"It's own";
    myDog.age = 6;
    myDog.image = [UIImage imageNamed:@"laikastamp-606x376.jpg"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    self.currentIndex = 0;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Jimmy";
    secondDog.breed = @"Lab";
    secondDog.image = [UIImage imageNamed:@"dog2.jpg"];
    
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"Tommy";
    thirdDog.breed = @"golden retriever";
    thirdDog.image = [UIImage imageNamed:@"dog5.jpg"];
    
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"Vicky";
    fourthDog.breed = @"Husky";
    fourthDog.image = [UIImage imageNamed:@"dog-how-to-select-your-new-best-friend-thinkstock99062463.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    NSLog(@"%@",self.myDogs);
    
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    //[littlePuppy givePuppyEyes];
    [littlePuppy bark];
    littlePuppy.name = @"Jiniee";
    littlePuppy.breed = @"Espanyol";
    littlePuppy.image = [UIImage imageNamed:@"puppy.jpg"];
    
    [self.myDogs addObject:littlePuppy];
    
    
    //NSLog(@"My dog is named %@ and it's age is %i and the breed is %@",myDog.name, myDog.age, myDog.breed);
    //[myDog barkANumberOfTimes:5];
    //NSLog(@"%@",myDog.breed);
    //[myDog changeBreedToWereWolf];
    //NSLog(@"%@",myDog.breed);
    //[myDog barkANumberOfTimes:3 loudly:YES];
    //int dogYears = [myDog ageInDogYearsFromAge:3];
    //NSLog(@"Age in dog years is %i",dogYears);
    //[self printAllWholeNumbersBelow:5];
    //[self printIntegers:10 secondInteger:5];
    //int answer = [self factorial:5];
    //NSLog(@"%i", answer);
}





/*
- (void)printAllWholeNumbersBelow:(int)number
{
    if (number > 0)
    {
        for (int i = number; i > 0; i --) {
            NSLog(@"%i",i);
        }
    }
}


-(void)printIntegers:(int)firstInteger secondInteger:(int)secondInteger
{
        if (firstInteger == secondInteger)
        {
            NSLog(@"Numbers are equal");
        }
    
        else if ( firstInteger > secondInteger)
        {
            for( int i = firstInteger; i >= secondInteger; i --)
            {
                NSLog(@"%i",i);
            }
        }
        else
        {
            for (int i = secondInteger; i>= firstInteger; i--)
            {
                NSLog(@"%i",i);
            }
        }
}

-(int)factorial:(int)number
{
    int answer = number;
    for(int i = answer; i > 1; i --)
    {
        answer = answer * (i - 1);
        
    }
    return answer;
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0)
    {
        randomIndex ++;
    }
    else if (self.currentIndex == randomIndex)
    {
        NSLog(@"+++++++++++");
        randomIndex --;
    }
    self.currentIndex = randomIndex;
    
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    

//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    [UIView transitionWithView: self.view duration: 2.5 options: UIViewAnimationOptionTransitionCrossDissolve animations: ^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    sender.title = @"And Another";
    
}
@end
