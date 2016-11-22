//
//  VActivityButton.h
//  VariousButtons
//
//  Created by Vols on 2016/11/22.
//  Copyright © 2016年 Vols. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VActivityButtonDelegate;

@interface VActivityButton : UIButton

+ (instancetype)buttonWithFrame:(CGRect)frame;

- (void)setBorderColor:(UIColor*)color;
- (void)setBorderWidth:(CGFloat)width;

- (void)startAnimation;
- (void)stopAnimation;

@property (nonatomic, weak) id <VActivityButtonDelegate> delegate;

@end



@protocol VActivityButtonDelegate <NSObject>

/**
 *  动画开始回调
 */
- (void)activityButtonDidStartAnimation:(VActivityButton*)activityButton;

/**
 *  动画将要结束时回调
 */
-(void)activityButtonWillFinishAnimation:(VActivityButton *)activityButton;

/**
 *  动画结束时回调
 */
- (void)activityButtonDidFinishAnimation:(VActivityButton *)activityButton;


@end
