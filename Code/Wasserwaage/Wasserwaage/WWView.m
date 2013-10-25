//
//  WWView.m
//  Wasserwaage
//
//  Created by Klaus Rodewig on 09.07.13.
//  Copyright (c) 2013 Foobar. All rights reserved.
//

#import "WWView.h"

@implementation WWView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (CGPoint)midPoint {
    CGRect theBounds = self.bounds;
    return CGPointMake(CGRectGetMidX(theBounds),
                       CGRectGetMidY(theBounds));
}

- (void)drawRect:(CGRect)rect
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    // Drawing code
    CGContextRef theContext = UIGraphicsGetCurrentContext();
    CGRect theBounds = self.bounds;
    CGContextSaveGState(theContext);
    
    CGContextSetRGBStrokeColor(theContext, 1.0, 1.0, 1.0, 1.0);
    CGContextSetLineWidth(theContext, 1.0);
    
    CGContextMoveToPoint(theContext, CGRectGetMidX(theBounds), CGRectGetMinY(theBounds));
    CGContextAddLineToPoint(theContext, CGRectGetMidX(theBounds), CGRectGetMaxY(theBounds));
    CGContextStrokePath(theContext);
    
    CGContextMoveToPoint(theContext, CGRectGetMinX(theBounds), CGRectGetMidY(theBounds));
    CGContextAddLineToPoint(theContext, CGRectGetMaxX(theBounds), CGRectGetMidY(theBounds));
    CGContextStrokePath(theContext);
    
    // Umrandung - Anfang
/*
    CGContextMoveToPoint(theContext, CGRectGetMinX(theBounds), CGRectGetMaxY(theBounds));
    CGContextAddLineToPoint(theContext, CGRectGetMaxX(theBounds), CGRectGetMaxY(theBounds));
    CGContextStrokePath(theContext);

    CGContextMoveToPoint(theContext, CGRectGetMinX(theBounds), CGRectGetMinY(theBounds));
    CGContextAddLineToPoint(theContext, CGRectGetMaxX(theBounds), CGRectGetMinY(theBounds));
    CGContextStrokePath(theContext);

    CGContextMoveToPoint(theContext, CGRectGetMinX(theBounds), CGRectGetMaxY(theBounds));
    CGContextAddLineToPoint(theContext, CGRectGetMinX(theBounds), CGRectGetMinY(theBounds));
    CGContextStrokePath(theContext);
    
    CGContextMoveToPoint(theContext, CGRectGetMaxX(theBounds), CGRectGetMaxY(theBounds));
    CGContextAddLineToPoint(theContext, CGRectGetMaxX(theBounds), CGRectGetMinY(theBounds));
    CGContextStrokePath(theContext);
*/
    // Umrandung - Ende
    
    CGContextSetLineWidth(theContext, 9.0);
    CGPoint theMidPoint = [self midPoint];

    NSNumber *theXPoint = [NSNumber numberWithDouble:(theMidPoint.x-self.xMotion*(CGRectGetMidX(theBounds)-CGRectGetMinX(theBounds)))];
    NSNumber *theYPoint = [NSNumber numberWithDouble:(theMidPoint.y+self.yMotion*(CGRectGetMidY(theBounds)-CGRectGetMinY(theBounds)))];
    
    CGContextAddArc(theContext, [theXPoint doubleValue], [theYPoint doubleValue], 10.0, 0, 2*M_PI, 0);
    CGContextStrokePath(theContext);
    
    CGContextRestoreGState(theContext);
}


@end
