//
//  PAViewController.m
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import "PAViewController.h"
#import "PAFactory.h"
#import "PACharecter.h"
#import "PAWeapon.h"
#import "PAArmor.h"
#import "PABoss.h"

@interface PAViewController ()

@end

@implementation PAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    PAFactory *factory = [[PAFactory alloc] init];
    
    self.factory = factory;
    
    self.startingPoint  = CGPointMake(0, 0);
    self.currentPoint = self.startingPoint;
    
    //create tiles
    self.tiles = [self.factory creatTiles];
    self.currentPoint = self.startingPoint;
    self.currentTile = [self.factory returntile:0 y:0];

    //creat all the weapons
    self.weaponList = [self.factory returnWeapnArray];
    //create all the armor
    self.armorList = [self.factory returnArmorArray];
    
    
    //create charecter
    self.mainCharecter = [[PACharecter alloc] init];
    //create boss
    self.boss = [[PABoss alloc] init];
    
    [self initialConditions];

    [self updateViewData];
}

-(void)initialConditions
{
    self.currentPoint = self.startingPoint;
    self.currentTile = [self.factory returntile:0 y:0];
    self.mainCharecter.charecterName = @"Travis";
    self.mainCharecter.health = 100;
    self.mainCharecter.weaponHolding = [self.weaponList objectAtIndex:0];
    self.mainCharecter.armorWearing = [self.armorList objectAtIndex:0];
    
    self.boss.health = 50;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -Some information

-(void) updateViewData
{
    self.currentTile = [self.factory returntile:self.currentPoint.x y:self.currentPoint.y];
    self.backgroundImage.image = self.currentTile.backgroudImage;
    NSLog(@"%i", self.currentTile.tileNumber);
    self.storyLabel.text = self.currentTile.story;
    [self setAllButtons];
    [self setCurrentLabel];

    
    //character stats
    self.mainCharecter.damage = self.mainCharecter.weaponHolding.damage;
    //charecter stats label
    self.charecterHealthLabel.text = [NSString stringWithFormat:@"%i", self.mainCharecter.health];
    self.charecterWeaponLabel.text = [NSString stringWithFormat:@"%@", self.mainCharecter.weaponHolding.weaponName];
    self.charecterDamageLabel.text = [NSString stringWithFormat:@"%i", self.mainCharecter.weaponHolding.damage];
    self.charecterArmorLabel.text = [NSString stringWithFormat:@"%@", self.mainCharecter.armorWearing.armorName];
    self.charecterNameLabel.text = [NSString stringWithFormat:@"%@", self.mainCharecter.charecterName];
    
    //action bar
    [self.actionButtonLabel setTitle:self.currentTile.actionButtonName forState:UIControlStateNormal];
}

-(void) setButtonHiddenState : (UIButton *) input
                       state : (BOOL) visible {
    input.hidden = visible;
}

- (IBAction)northButtonPress:(id)sender {
    if (self.currentPoint.y < 2) {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    }
    [self updateViewData];
}

- (IBAction)southButtonPress:(id)sender {
    if (self.currentPoint.y > 0) {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    }
    [self updateViewData];
}

- (IBAction)eastButtonPress:(id)sender {
    if (self.currentPoint.x < 3) {
        self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    }
    [self updateViewData];
}

- (IBAction)westButtonPress:(id)sender {
    if (self.currentPoint.x > 0) {
        self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    }
    [self updateViewData];
}

- (IBAction)restButtonPressed:(id)sender {
    self.bossHealthLabel.text = @"";
    [self initialConditions];
    [self updateViewData];
}

- (IBAction)actionButtonPressed:(id)sender {
    //modify health if health modifier
    if (self.currentTile.healthEffect) {
        self.mainCharecter.health = self.mainCharecter.health + self.currentTile.healthEffect;
    }
    
    //change weapon if a weapon exists
    if (self.currentTile.armor)
    {
        self.mainCharecter.health = self.mainCharecter.health - self.mainCharecter.armorWearing.healthBonous;
        self.mainCharecter.armorWearing = self.currentTile.armor;
        self.mainCharecter.health = self.mainCharecter.health + self.mainCharecter.armorWearing.healthBonous;

    }
    //change armor if armor exists
    if (self.currentTile.weapon) {
        self.mainCharecter.weaponHolding = self.currentTile.weapon;
    }
    
    
    if (self.currentTile.isBoss)
    {
        self.boss.health = self.boss.health - self.mainCharecter.damage;
        self.bossHealthLabel.text = [NSString stringWithFormat:@"%i", self.boss.health];
    }
    
    [self updateViewData];
    if (self.mainCharecter.health <= 0) {
        UIAlertView *alertViewLoss = [[UIAlertView alloc] initWithTitle:@"Alert!" message:@"you have no health" delegate:nil cancelButtonTitle:@"Dang!" otherButtonTitles: nil];
        [alertViewLoss show];
    }
    else if(self.boss.health <= 0)
    {
        //display win
        UIAlertView *alertViewWin = [[UIAlertView alloc] initWithTitle:@"Winner!" message:@"You have won the game!" delegate:nil cancelButtonTitle:@"WOOOO!" otherButtonTitles: nil];
        [alertViewWin show];
    }
}

-(void)setCurrentLabel {
    int xLocation = self.currentPoint.x;
    int yLocation = self.currentPoint.y;
    NSString *text = [NSString stringWithFormat:@"(%i, %i) tile: %i", xLocation, yLocation, self.currentTile.tileNumber];
    self.currentLocationLabel.text = text;
}
-(void)setAllButtons {
    [self setButtonHiddenState:self.northButton state:![self checkRange:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)]];
    [self setButtonHiddenState:self.southButton state:![self checkRange:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)]];
    [self setButtonHiddenState:self.eastButton state:![self checkRange:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)]];
    [self setButtonHiddenState:self.westButton state:![self checkRange:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)]];
}

-(BOOL) checkRange : (CGPoint) inputpoint {
    if (inputpoint.x < 0 || inputpoint.y < 0 || inputpoint.x > 3 || inputpoint.y > 2)
    {
        return false;
    }
    else{
        return true;
    }
}

@end
