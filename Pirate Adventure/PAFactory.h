//
//  PAFactory.h
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PATile.h"

@interface PAFactory : NSObject

@property(strong, nonatomic) NSArray *tilesArray;
@property(strong, nonatomic) NSArray *column1Array;
@property(strong, nonatomic) NSArray *column2Array;
@property(strong, nonatomic) NSArray *column3Array;
@property(strong, nonatomic) NSArray *column4Array;
@property(strong, nonatomic) NSArray *weaponArray;
@property(strong, nonatomic) NSArray *armorArray;


@property(strong, nonatomic) PATile *tile1;
@property(strong, nonatomic) PATile *tile2;
@property(strong, nonatomic) PATile *tile3;
@property(strong, nonatomic) PATile *tile4;
@property(strong, nonatomic) PATile *tile5;
@property(strong, nonatomic) PATile *tile6;
@property(strong, nonatomic) PATile *tile7;
@property(strong, nonatomic) PATile *tile8;
@property(strong, nonatomic) PATile *tile9;
@property(strong, nonatomic) PATile *tile10;
@property(strong, nonatomic) PATile *tile11;
@property(strong, nonatomic) PATile *tile12;

-(NSArray *)creatTiles;
-(PATile *)returntile : (int) xLocation
                    y : (int) yLocation;
-(NSArray *)returnWeapnArray;
-(NSArray *)returnArmorArray;
@end
