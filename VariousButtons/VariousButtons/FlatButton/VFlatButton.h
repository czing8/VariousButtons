//
//  VFlatButton.h
//  FlatButton
//
//  Created by Vols on 14-7-26.
//  Copyright (c) 2014年 Vols. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VFlatButton : UIButton

@property (nonatomic, strong) UIColor * faceColor;
@property (nonatomic, strong) UIColor * sideColor;

@property (nonatomic, assign) CGFloat radius;
@property (nonatomic, assign) CGFloat margin;
@property (nonatomic, assign) CGFloat depth;

- (void)setFaceColor:(UIColor *)faceColor forState:(UIControlState)state;
- (void)setSideColor:(UIColor *)sideColor forState:(UIControlState)state;

- (UIColor *)faceColorForState:(UIControlState)state;
- (UIColor *)sideColorForState:(UIControlState)state;

@end
