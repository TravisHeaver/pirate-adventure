//
//  PACharecter.m
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import "PACharecter.h"

@implementation PACharecter

-(void) setWeaponHolding:(PAWeapon *)weaponHolding
{
    _weaponHolding = weaponHolding;
}
-(PAWeapon *) weaponHolding
{
    return _weaponHolding;
}

-(void) setArmorWearing:(PAArmor *)armorWearing
{
    _armorWearing = armorWearing;
}
-(PAArmor *) armorWearing
{
    return _armorWearing;
}

@end
