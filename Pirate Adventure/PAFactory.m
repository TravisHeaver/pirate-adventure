//
//  PAFactory.m
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import "PAFactory.h"
#import "PATile.h"
#import "PAArmor.h"
#import "PAWeapon.h"

@implementation PAFactory

-(NSArray *)returnArmorArray
{
    PAArmor *woolShirt = [[PAArmor alloc] init];
    woolShirt.armorName = @"Wool Shirt";
    woolShirt.healthBonous = 0;
    
    PAArmor *leatherShirt = [[PAArmor alloc] init];
    leatherShirt.armorName = @"leather shirt";
    leatherShirt.healthBonous = 2;
    
    PAArmor *thickLeatherShirt = [[PAArmor alloc] init];
    thickLeatherShirt.armorName = @"Thick Leather Shirt";
    thickLeatherShirt.healthBonous = 10;
    
    
    return  [[NSArray alloc] initWithObjects:woolShirt, leatherShirt, thickLeatherShirt, nil];
}
-(NSArray *)returnWeapnArray
{
    PAWeapon *twoFists = [[PAWeapon alloc] init];
    twoFists.weaponName = @"Two Fists";
    twoFists.damage = 1;
    
    PAWeapon *tableKnife = [[PAWeapon alloc] init];
    tableKnife.weaponName = @"Table Knife";
    tableKnife.damage = 5;
    
    PAWeapon *shortSword = [[PAWeapon alloc] init];
    shortSword.weaponName = @"Short Sword";
    shortSword.damage = 10;
    
    
    return [[NSArray alloc] initWithObjects:twoFists, tableKnife, shortSword, nil];

}

-(NSArray *)creatTiles
{
    //All the weapons
    self.weaponArray = [self returnWeapnArray];
    self.armorArray = [self returnArmorArray];
    
    self.tile1 = [[PATile alloc] init];
    self.tile1.tileNumber = 1;
    self.tile1.story = @"Shall we play a game?";
    self.tile1.backgroudImage = [UIImage imageNamed:@"PirateStart.jpg"];
    self.tile1.actionButtonName = @"...";
//    self.tile1.armor = [self.armorArray objectAtIndex:0];
//    self.tile1.weapon = [self.weaponArray objectAtIndex:0];
//    self.tile1.healthEffect = 0;
    
    self.tile2 = [[PATile alloc] init];
    self.tile2.tileNumber = 2;
    self.tile2.story = @"Square two nice! You came across a new table knife and leather shirt!";
    self.tile2.backgroudImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    self.tile2.actionButtonName = @"pick up?";
    self.tile2.armor = [self.armorArray objectAtIndex:1];
    self.tile2.weapon = [self.weaponArray objectAtIndex:1];
//    self.tile2.healthEffect = 5;
    
    self.tile3 = [[PATile alloc] init];
    self.tile3.tileNumber = 3;
    self.tile3.story = @"Square three nice! you came across a short sword";
    self.tile3.backgroudImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    self.tile3.actionButtonName = @"Change weapon?";
//    self.tile3.armor = [self.armorArray objectAtIndex:2];
    self.tile3.weapon = [self.weaponArray objectAtIndex:2];
//    self.tile3.healthEffect = 0;
    
    self.tile4 = [[PATile alloc] init];
    self.tile4.tileNumber = 4;
    self.tile4.story = @"Square four nice! you came accross a thick leather shirt!";
    self.tile4.backgroudImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    self.tile4.actionButtonName = @"Change armor?";
    self.tile4.armor = [self.armorArray objectAtIndex:2];
//    self.tile4.weapon = [self.weaponArray objectAtIndex:0];
//    self.tile4.healthEffect = 0;
    
    self.tile5 = [[PATile alloc] init];
    self.tile5.tileNumber = 5;
    self.tile5.story = @"Square five nice! You came accross a red berry!";
    self.tile5.backgroudImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    self.tile5.actionButtonName = @"eat?";
//    self.tile5.armor = [self.armorArray objectAtIndex:0];
//    self.tile5.weapon = [self.weaponArray objectAtIndex:0];
    self.tile5.healthEffect = 10;

    self.tile6 = [[PATile alloc] init];
    self.tile6.tileNumber = 6;
    self.tile6.story = @"Square six nice! you came accross a black berry!";
    self.tile6.backgroudImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    self.tile6.actionButtonName = @"eat?";
//    self.tile6.armor = [self.armorArray objectAtIndex:0];
//    self.tile6.weapon = [self.weaponArray objectAtIndex:0];
    self.tile6.healthEffect = -20;

    self.tile7 = [[PATile alloc] init];
    self.tile7.tileNumber = 7;
    self.tile7.story = @"Square seven nice!";
    self.tile7.backgroudImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    self.tile7.actionButtonName = @"seven";
//    self.tile7.armor = [self.armorArray objectAtIndex:0];
//    self.tile7.weapon = [self.weaponArray objectAtIndex:0];
//    self.tile7.healthEffect = 0;
    
    self.tile8 = [[PATile alloc] init];
    self.tile8.tileNumber = 8;
    self.tile8.story = @"Square eight nice!";
    self.tile8.backgroudImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    self.tile8.actionButtonName = @"eight";
//    self.tile8.armor = [self.armorArray objectAtIndex:0];
//    self.tile8.weapon = [self.weaponArray objectAtIndex:0];
//    self.tile8.healthEffect = 0;
    
    self.tile9 = [[PATile alloc] init];
    self.tile9.tileNumber = 9;
    self.tile9.story = @"Square nine nice!";
    self.tile9.backgroudImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    self.tile9.actionButtonName = @"nine";
//    self.tile9.armor = [self.armorArray objectAtIndex:0];
//    self.tile9.weapon = [self.weaponArray objectAtIndex:0];
//    self.tile9.healthEffect = 0;
    
    self.tile10 = [[PATile alloc] init];
    self.tile10.tileNumber = 10;
    self.tile10.story = @"Square ten nice!";
    self.tile10.backgroudImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    self.tile10.actionButtonName = @"ten";
//    self.tile10.armor = [self.armorArray objectAtIndex:0];
//    self.tile10.weapon = [self.weaponArray objectAtIndex:0];
//    self.tile10.healthEffect = 0;
    
    self.tile11 = [[PATile alloc] init];
    self.tile11.tileNumber = 11;
    self.tile11.story = @"Square eleven nice!";
    self.tile11.backgroudImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    self.tile11.actionButtonName = @"eleven";
//    self.tile11.armor = [self.armorArray objectAtIndex:0];
//    self.tile11.weapon = [self.weaponArray objectAtIndex:0];
//    self.tile11.healthEffect = 0;

    
    self.tile12 = [[PATile alloc] init];
    self.tile12.tileNumber = 12;
    self.tile12.story = @"Boss!";
    self.tile12.backgroudImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    self.tile12.actionButtonName = @"Attack!";
//    self.tile12.armor = [self.armorArray objectAtIndex:0];
//    self.tile12.weapon = [self.weaponArray objectAtIndex:0];
    self.tile12.healthEffect = -5;
    self.tile12.isBoss = true;

    
    self.column1Array = [[NSArray alloc] initWithObjects:self.tile1, self.tile2, self.tile3, nil];
    self.column2Array = [[NSArray alloc] initWithObjects:self.tile4, self.tile5, self.tile6, nil];
    self.column3Array = [[NSArray alloc] initWithObjects:self.tile7, self.tile8, self.tile9, nil];
    self.column4Array = [[NSArray alloc] initWithObjects:self.tile10, self.tile11, self.tile12, nil];
    
    self.tilesArray = [[NSArray alloc] initWithObjects:self.column1Array,self.column2Array,self.column3Array,self.column4Array, nil];
    return self.tilesArray;
}

-(PATile *)returntile : (int) xLocation
                    y : (int) yLocation
{
    return [[self.tilesArray objectAtIndex:xLocation] objectAtIndex:yLocation];
}
@end


//@property (strong, nonatomic) NSString *story;
//@property (strong, nonatomic) UIImage *backgroudImage;
//@property (strong, nonatomic) NSString *actionButtonName;
//@property (strong, nonatomic) PAArmor *armor;
//@property (strong, nonatomic) PAWeapon *weapon;
//@property (nonatomic) int healthEffect;