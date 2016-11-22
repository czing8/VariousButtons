//
//  V1NavAnimation.h
//  VariousButtons
//
//  Created by Vols on 2016/11/22.
//  Copyright © 2016年 Vols. All rights reserved.
//  转场动画

#import <Foundation/Foundation.h>

@interface V1NavAnimation : NSObject <UIViewControllerAnimatedTransitioning, CAAnimationDelegate>

@property (nonatomic, strong) UIButton* centerButton;

@end
