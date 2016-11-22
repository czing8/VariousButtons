//
//  VActivityButton.m
//  VariousButtons
//
//  Created by Vols on 2016/11/22.
//  Copyright © 2016年 Vols. All rights reserved.
//

#import "VActivityButton.h"
#import "VCircleActivityView.h"

const static NSTimeInterval startDuration   = 0.3;
const static NSTimeInterval endDuration     = 0.5;

@interface VActivityButton ()

@property (nonatomic, strong) VCircleActivityView   * circleView;
@property (nonatomic, assign) CGRect origionRect;

@end

@implementation VActivityButton

+ (instancetype)buttonWithFrame:(CGRect)frame{
    VActivityButton* button = [VActivityButton buttonWithType:UIButtonTypeCustom];
    
    button.frame = frame;
    button.layer.cornerRadius = frame.size.height / 2;
    button.layer.masksToBounds = YES;
    button.clipsToBounds = NO;
    button.origionRect = button.frame;
    return button;
}

- (void)setBorderColor:(UIColor *)color{
    self.layer.borderColor = color.CGColor;
    
}

- (void)setBorderWidth:(CGFloat)width{
    self.layer.borderWidth = width;
}


- (void)startAnimation{
    CGPoint center = self.center;
    CGFloat width = self.layer.cornerRadius * 2;
    CGFloat height = self.frame.size.height;
    CGRect desFrame = CGRectMake(center.x - width / 2, center.y - height / 2, width, height);
    
    self.userInteractionEnabled = NO;
    
    if ([self.delegate respondsToSelector:@selector(activityButtonDidStartAnimation:)]) {
        [self.delegate activityButtonDidStartAnimation:self];
    }
    
    [UIView animateWithDuration:startDuration animations:^{
        self.titleLabel.alpha = .0f;
        self.frame = desFrame;
    } completion:^(BOOL finished) {
        [self.circleView startAnimation];
    }];
}

- (void)stopAnimation{
    self.userInteractionEnabled = YES;
    
    if ([self.delegate respondsToSelector:@selector(activityButtonWillFinishAnimation:)]) {
        [self.delegate activityButtonWillFinishAnimation:self];
    }
    
    [self.circleView removeFromSuperview];
    self.circleView = nil;
    [UIView animateWithDuration:endDuration animations:^{
        self.frame = self.origionRect;
        self.titleLabel.alpha = 1.0f;
    } completion:^(BOOL finished) {
        if ([self.delegate respondsToSelector:@selector(activityButtonDidFinishAnimation:)]) {
            [self.delegate activityButtonDidFinishAnimation:self];
        }
    }];
}


#pragma mark - Properties

- (VCircleActivityView *)circleView {
    if (!_circleView) {
        _circleView = [VCircleActivityView viewWithButton:self];
        [self addSubview:_circleView];
    }
    return _circleView;
}

@end
