//
//  PACharecter.h
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAWeapon.h"
#import "PAArmor.h"

@interface PACharecter : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) int health;
@property (nonatomic) int damage;

@property (strong, nonatomic) PAWeapon *weaponHolding;
@property (strong, nonatomic) PAArmor *armorWearing;

@end
