//
//  PAViewController.h
//  Pirate Adventure
//
//  Created by Travis Heaver on 11/17/13.
//  Copyright (c) 2013 Travis Heaver. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PAViewController : UIViewController
@property (nonatomic) CGPoint startingPoint;
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;


@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UILabel *currentLocationLabel;

-(void) setButtonHiddenState : (UIButton *) input
                       state : (BOOL) visible;

- (IBAction)northButtonPress:(id)sender;
- (IBAction)southButtonPress:(id)sender;
- (IBAction)eastButtonPress:(id)sender;
- (IBAction)westButtonPress:(id)sender;

- (IBAction)restButtonPressed:(id)sender;

@end
