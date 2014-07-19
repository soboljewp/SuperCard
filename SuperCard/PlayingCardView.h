//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Patrick Dawson on 17.07.14.
//  Copyright (c) 2014 Patrick Dawson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) BOOL faceUp;

- (void)pinch:(UIPinchGestureRecognizer *)pinchGesture;

@end
