//
//  VCircleActivityView.h
//  VariousButtons
//
//  Created by Vols on 2015/11/22.
//  Copyright © 2015年 Vols. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCircleActivityView : UIView

+ (instancetype)viewWithButton:(UIButton *)button;

- (void)startAnimation;

@end
