//
//  EZSprite.h
//  asteriodsample
//
//  Created by michael on 6/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface EZSprite : NSObject {
    
    CGFloat x;
    CGFloat y;
    CGFloat red;
    CGFloat blue;
    CGFloat green;
    CGFloat alpha;
    CGFloat speed;
    CGFloat angle;
    CGFloat rotation;
    CGFloat witdh;
    CGFloat height;
    CGFloat scale;
    int frame;
    CGFloat cosTheta;
    CGFloat sinTheta;
    CGRect boundingBox;
    BOOL rendering;
    BOOL outOfView;
    
}

@property (assign) BOOL rendering, outOfView;
@property (assign) CGFloat x, y, red, blue, green, alpha, speed, angle, rotation, width, height, scale;
@property (assign) CGRect boundingBox;
@property (assign) int frame;

- (BOOL) checkCollision: (CGRect)rect;
- (void) moveTo: (CGPoint)somePoint;
- (void) scaleTo:(CGFloat)someSize;
- (void) draw: (CGContextRef)context;
- (void) outlinePath: (CGContextRef)context;
- (void) drawBody: (CGContextRef)context;



@end
