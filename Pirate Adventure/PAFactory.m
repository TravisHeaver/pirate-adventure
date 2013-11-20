//
//  PAFactory.m
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import "PAFactory.h"
#import "PATile.h"
@implementation PAFactory


-(NSArray *)creatTiles
{
    PATile *tile1 = [[PATile alloc] init];
    PATile *tile2 = [[PATile alloc] init];
    PATile *tile3 = [[PATile alloc] init];
    PATile *tile4 = [[PATile alloc] init];
    PATile *tile5 = [[PATile alloc] init];
    PATile *tile6 = [[PATile alloc] init];
    PATile *tile7 = [[PATile alloc] init];
    PATile *tile8 = [[PATile alloc] init];
    PATile *tile9 = [[PATile alloc] init];
    PATile *tile10 = [[PATile alloc] init];
    PATile *tile11 = [[PATile alloc] init];
    PATile *tile12 = [[PATile alloc] init];
    
    self.column1Array = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    self.column2Array = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    self.column3Array = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    self.column4Array = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *tilesArray = [[NSArray alloc] initWithObjects:self.column1Array,self.column2Array,self.column3Array,self.column4Array, nil];
    return tilesArray;
}
@end
