//
//  EZSprite.m
//  asteriodsample
//
//  Created by michael on 6/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EZSprite.h"
#define myPi 3.141592


@implementation EZSprite
@synthesize rendering, outOfView, x, y, red, blue, green, alpha, speed, angle, rotation, width, height, scale, boundingBox, frame;

- (void) setRotation: (CGFloat)degrees {
    rotation = degrees * myPi/180.0;
}

- (CGFloat) rotation { 
    return  rotation * 180.0/myPi;
}

// save processing
- (CGFloat) angle {
    return  rotation * 180.0/myPi;
}

- (void) setAngle: (CGFloat)degrees {
    rotation = degrees *3.141592/180.0;
    cosTheta = cos(rotation);
    sinTheta = sin(rotation);;
}

- (void) outlinePath: (CGContextRef) context {
    CGFloat widthHalf = boundingBox.size.width * 0.5;
    CGFloat heightHalf = boundingBox.size.height * 0.5;
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, -widthHalf, heightHalf);
    CGContextAddLineToPoint(context, widthHalf, heightHalf);
    CGContextAddLineToPoint(context, widthHalf, -heightHalf);
    CGContextAddLineToPoint(context, -widthHalf, heightHalf);
    CGContextAddLineToPoint(context, -widthHalf, heightHalf);
    CGContextClosePath(context);
}

- (void) drawBody: (CGContextRef)context {
    CGContextSetRGBFillColor(context, red, green, blue, alpha);
    [self outlinePath:context];
    CGContextDrawPath(context, kCGPathFill);
}

- (void) draw: (CGContextRef)context {
    CGContextSaveGState(context);
    CGAffineTransform ti = CGAffineTransformIdentity;
    ti = CGAffineTransformTranslate(ti, y + 160, 240 - x);
    ti = CGAffineTransformRotate(ti, rotation - myPi / 2.0);
    ti = CGAffineTransformScale(ti, scale, scale);
    CGContextConcatCTM(context, ti);
    [self drawBody: context];
    CGContextRestoreGState(context);
}

@end
