//
//  GameView.m
//  asteriodsample
//
//  Created by michael on 6/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameView.h"


@implementation GameView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGAffineTransform trans = CGContextGetCTM(context);
    trans = CGAffineTransformInvert(trans);
    CGContextConcatCTM(context, trans);
    CGContextBeginPath(context);
    CGContextSetRGBFillColor(context, 0, 0, 200, 200);
    CGContextAddRect(context, CGRectMake(0, 0, 100, 200));
    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFill);
    CGContextRestoreGState(context);
}


- (void)dealloc
{
    [super dealloc];
}

@end
