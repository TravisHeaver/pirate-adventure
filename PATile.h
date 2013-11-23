//
//  PATile.h
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAArmor.h"
#import "PAWeapon.h"
@interface PATile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroudImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) PAArmor *armor;
@property (strong, nonatomic) PAWeapon *weapon;
@property (nonatomic) int healthEffect;
@property (nonatomic) int tileNumber;
@property (nonatomic) BOOL completed;
@property (nonatomic) BOOL isBoss;

@end
