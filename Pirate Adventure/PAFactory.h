//
//  PAFactory.h
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PAFactory : NSObject

@property(strong, nonatomic) NSArray *column1Array;
@property(strong, nonatomic) NSArray *column2Array;
@property(strong, nonatomic) NSArray *column3Array;
@property(strong, nonatomic) NSArray *column4Array;

-(NSArray *)creatTiles;
@end
