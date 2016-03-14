//
//  VGradientColorButton.m
//  GradientColorButton
//
//  Created by Vols on 14-9-29.
//  Copyright (c) 2014年 Vols. All rights reserved.
//

#import "VGradientColorButton.h"

@implementation VGradientColorButton

- (id)initWithFrame:(CGRect)frame colors:(NSMutableArray*)colors gradientType:(GradientType)gradientType{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        
        
        UIImage *backImage = [self buttonImageFromColors:colors gradientType:gradientType];
        [self setBackgroundImage:backImage forState:UIControlStateNormal];
        self.layer.cornerRadius = 4.0;
        self.layer.masksToBounds = YES;
    }
    return self;
}


- (UIImage*) buttonImageFromColors:(NSArray*)colors gradientType:(GradientType)gradientType{
    
    NSMutableArray *ar = [NSMutableArray array];
    for(UIColor *c in colors) {
        [ar addObject:(id)c.CGColor];
    }
    UIGraphicsBeginImageContextWithOptions(self.frame.size, YES, 1);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGColorSpaceRef colorSpace = CGColorGetColorSpace([[colors lastObject] CGColor]);
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (CFArrayRef)ar, NULL);
    CGPoint start;
    CGPoint end;
    switch (gradientType) {
        case 0:
            start = CGPointMake(0.0, 0.0);
            end = CGPointMake(0.0, self.frame.size.height);
            break;
        case 1:
            start = CGPointMake(0.0, 0.0);
            end = CGPointMake(self.frame.size.width, 0.0);
            break;
        case 2:
            start = CGPointMake(0.0, 0.0);
            end = CGPointMake(self.frame.size.width, self.frame.size.height);
            break;
        case 3:
            start = CGPointMake(self.frame.size.width, 0.0);
            end = CGPointMake(0.0, self.frame.size.height);
            break;
        default:
            break;
    }
    CGContextDrawLinearGradient(context, gradient, start, end, kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    return image;
}

@end
