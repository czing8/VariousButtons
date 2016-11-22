//
//  VerifyCodeButton.h
//  ProjectControls
//
//  Created by Vols on 2015/11/21.
//  Copyright © 2015年 vols. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VerifyCodeButton : UIButton


+ (instancetype)buttonWithFrame:(CGRect)rect clickHandler:(void(^)(VerifyCodeButton* btn))clickHandler;


@end
