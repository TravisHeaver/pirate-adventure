//
//  PAViewController.m
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import "PAViewController.h"
#import "PAFactory.h"

@interface PAViewController ()
@property (strong,nonatomic) PAFactory *factory;
@end

@implementation PAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.startingPoint  = CGPointMake(0, 0);
    self.currentPoint = self.startingPoint;
    
    self.factory = [[PAFactory alloc] init];
    self.tiles = [self.factory creatTiles];
    [self setAllButtons];
    [self setCurrentLabel];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void) setButtonHiddenState : (UIButton *) input
                       state : (BOOL) visible
{
    input.hidden = visible;
}

- (IBAction)northButtonPress:(id)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self setAllButtons];
    [self setCurrentLabel];
}

- (IBAction)southButtonPress:(id)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self setAllButtons];
    [self setCurrentLabel];
}

- (IBAction)eastButtonPress:(id)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self setAllButtons];
    [self setCurrentLabel];
}

- (IBAction)westButtonPress:(id)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self setAllButtons];
    [self setCurrentLabel];
}

- (IBAction)restButtonPressed:(id)sender {
    self.currentPoint = CGPointMake(0, 0);
    [self setAllButtons];
    [self setCurrentLabel];
}

-(void)setCurrentLabel
{
    int xLocation = self.currentPoint.x;
    int yLocation = self.currentPoint.y;
    NSString *text = [NSString stringWithFormat:@"location: %i, %i", xLocation, yLocation];
    self.currentLocationLabel.text = text;
}
-(void)setAllButtons
{
    [self setButtonHiddenState:self.northButton state:![self checkRange:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)]];
    [self setButtonHiddenState:self.southButton state:![self checkRange:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)]];
    [self setButtonHiddenState:self.eastButton state:![self checkRange:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)]];
    [self setButtonHiddenState:self.westButton state:![self checkRange:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)]];
}

-(BOOL) checkRange : (CGPoint) inputpoint
{
    if (inputpoint.x < 0 || inputpoint.y < 0 || inputpoint.x > 4 || inputpoint.y > 3)
    {
        return false;
    }
    else{
        return true;
    }
}

@end
