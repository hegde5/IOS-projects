//
//  CCFactory.m
//  Capture the Pirates
//
//  Created by Vinay Hegde on 6/21/15.
//
//

#import "CCFactory.h"
#import "CCTile.h"

@implementation CCFactory

-(NSArray *)tiles
{

    CCTile *tile1 = [[CCTile alloc]init];
    tile1.story = @"Captain, we need a fearless leader like yourself to undertake a voyage. You just stop the evil pirate boss. Would you like a sword to get started";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    CCWeapon *sword = [[CCWeapon alloc]init];
    sword.name = @"Sword";
    sword.damage = 12;
    tile1.weapon = sword;
    tile1.actionButtonName = @"Take the Sword!!";
    
    
    CCTile *tile2 = [[CCTile alloc]init];
    tile2.story = @"You have come across an aromery. Would you like to upgrade your armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    CCArmor *metalArmor = [[CCArmor alloc]init];
    metalArmor.name = @"Metal Armor";
    metalArmor.health = 10;
    tile2.armor = metalArmor;
    tile2.actionButtonName = @"Take the Armor";

    
    CCTile *tile3 = [[CCTile alloc]init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the Dock";
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    CCTile *tile4 = [[CCTile alloc]init];
    tile4.story = @"You have found a parrot. Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    CCArmor *parrotArmor = [[CCArmor alloc]init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot";
    tile4.actionButtonName = @"Adopt Parrot";
    
    CCTile *tile5 = [[CCTile alloc]init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    CCWeapon *pistol = [[CCWeapon alloc]init];
    pistol.name = @"Pistol";
    pistol.damage = 18;
    tile5.actionButtonName = @"Use Pistol!";
    
    CCTile *tile6 = [[CCTile alloc]init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -30;
    tile6.actionButtonName = @"Show no fear";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    CCTile *tile7 = [[CCTile alloc]init];
    tile7.story = @"You have sighted a pirate battle off the coast. Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 10;
    tile7.actionButtonName = @"Fight Them!";
    
    CCTile *tile8 = [[CCTile alloc]init];
    tile8.story = @"The legend of the deep. The mighty Kraken  appears.";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -45;
    tile8.actionButtonName = @"Abandon Ship";
    
    CCTile *tile9 = [[CCTile alloc]init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasures.";
    tile9.backgroundImage =  [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Find Treasure";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    CCTile *tile10 = [[CCTile alloc]init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the Invaders";
    
    
    
    CCTile *tile11 = [[CCTile alloc]init];
    tile11.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim Deeper";
    
    CCTile *tile12 = [[CCTile alloc]init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";

    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn,nil];
    return tiles;

}

-(CCCharacter *)character
{
    CCCharacter *character = [[CCCharacter alloc] init];
    character.health = 100;
    CCArmor *armor = [[CCArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    CCWeapon *weapon = [[CCWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    return character;
}

-(CCBoss *)boss
{
    CCBoss  *boss = [[CCBoss alloc]init];
    boss.health = 65;
    return boss;
}





@end
