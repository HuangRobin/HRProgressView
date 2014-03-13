//
//  HRProgressView.m
//  HRProgressView
//
//  Created by london on 14-3-13.
//  Copyright (c) 2014年 Huang_Robin. All rights reserved.
//

#import "HRProgressView.h"
#import <math.h>

@implementation HRProgressView
@synthesize progress;
@synthesize progressTintColor;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

-(void)setProgress:(float)aProgress{
    if (aProgress > 1) {
        progress = 1;
    }else if(aProgress < 0){
        progress = 0;
    }else
        progress = aProgress;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{

    CGContextRef context = UIGraphicsGetCurrentContext();
    
    float w = self.frame.size.width/2 - 3;
    float h = self.frame.size.height/2 - 3;
    float min = MIN(w, h);

    float radian = M_PI * progress * 2;
    CGPoint center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
    CGContextAddArc(context, center.x, center.y, min, - M_PI_2, - M_PI_2 + radian, 0);
    
    [[UIColor clearColor] setFill];
    
    if (!progressTintColor) {
        progressTintColor = [UIColor blueColor];
    }
    [progressTintColor setStroke];
    CGContextSetLineWidth(context, 3);
    CGContextSetLineCap(context,kCGLineCapRound);
    CGContextDrawPath(context, kCGPathFillStroke);
    
}

@end
