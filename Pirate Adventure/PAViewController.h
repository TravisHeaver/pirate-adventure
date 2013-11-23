//
//  PAViewController.h
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PATile.h"
#import "PACharecter.h"
#import "PAArmor.h"
#import "PAWeapon.h"
#import "PAFactory.h"
#import "PABoss.h"

@interface PAViewController : UIViewController

@property (nonatomic) CGPoint startingPoint;
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) PATile *currentTile;
@property (strong, nonatomic) PACharecter *mainCharecter;
@property (strong, nonatomic) PACharecter *man;
@property (strong, nonatomic) NSArray *armorList;
@property (strong, nonatomic) NSArray *weaponList;
@property (strong, nonatomic) IBOutlet UIButton *actionButtonLabel;

@property (strong, nonatomic) PAFactory *factory;

@property (strong, nonatomic) IBOutlet UILabel *storyLabel;

@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UILabel *currentLocationLabel;
@property (strong, nonatomic) IBOutlet UITextField *charecterHealthLabel;
@property (strong, nonatomic) IBOutlet UITextField *charecterDamageLabel;
@property (strong, nonatomic) IBOutlet UITextField *charecterWeaponLabel;
@property (strong, nonatomic) IBOutlet UITextField *charecterArmorLabel;
@property (strong, nonatomic) IBOutlet UILabel *charecterNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *bossHealthLabel;

@property (strong, nonatomic) PABoss *boss;

-(void) setButtonHiddenState : (UIButton *) input
                       state : (BOOL) visible;

- (IBAction)northButtonPress:(id)sender;
- (IBAction)southButtonPress:(id)sender;
- (IBAction)eastButtonPress:(id)sender;
- (IBAction)westButtonPress:(id)sender;

- (IBAction)restButtonPressed:(id)sender;
- (IBAction)actionButtonPressed:(id)sender;


-(void) updateViewData;
@end
