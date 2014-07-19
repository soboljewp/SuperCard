//
//  SuperCardViewController.m
//  SuperCard
//
//  Created by Patrick Dawson on 17.07.14.
//  Copyright (c) 2014 Patrick Dawson. All rights reserved.
//

#import "SuperCardViewController.h"
#import "PlayingCardView.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface SuperCardViewController ()

@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;
@property (nonatomic, strong) Deck *deck;

@end

@implementation SuperCardViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

#pragma mark - Gestures

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    self.playingCardView.faceUp = !self.playingCardView.faceUp;
    
    if (self.playingCardView.faceUp) {
        Card *randomCard = [self.deck drawRandomCard];
        if ([randomCard isKindOfClass:[PlayingCard class]]) {
            PlayingCard *playingCard = (PlayingCard *)randomCard;
            self.playingCardView.suit = playingCard.suit;
            self.playingCardView.rank = playingCard.rank;
        }
    }
    
}

#pragma mark - predefined methods

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.playingCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc]
                                                initWithTarget:self.playingCardView
                                                action:@selector(pinch:)]];
}

@end
