//
//  SuperCardViewController.m
//  SuperCard
//
//  Created by Patrick Dawson on 17.07.14.
//  Copyright (c) 2014 Patrick Dawson. All rights reserved.
//

#import "SuperCardViewController.h"
#import "PlayingCardView.h"

@interface SuperCardViewController ()

@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;

@end

@implementation SuperCardViewController

#pragma mark - predefined methods

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.playingCardView.suit = @"♥️";
    self.playingCardView.rank = 8;
}

@end
