//
//  VNumberButton.h
//  VariousButtons
//
//  Created by Vols on 2015/11/22.
//  Copyright © 2015年 Vols. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface VNumberButton : UIView

@property (nonatomic, copy) void(^numberHandler)(NSString *number);

@property (nonatomic, assign) BOOL enableShake;
@property (nonatomic, assign) BOOL isHideDecrease;     //是否隐藏减号

@property (nonatomic, strong) UIColor *borderColor;    // 设置边框颜色,没有设置就没有边框

@property (nonatomic, copy  ) NSString *currentNumber;
@property (nonatomic, assign) CGFloat inputFieldFont;
@property (nonatomic, assign) CGFloat buttonTitleFont;

@property (nonatomic, strong) UIImage *increaseImage;
@property (nonatomic, strong) UIImage *decreaseImage;
@property (nonatomic, copy  ) NSString *increaseTitle;
@property (nonatomic, copy  ) NSString *decreaseTitle;

@property (nonatomic, assign) NSInteger minValue;
@property (nonatomic, assign) NSInteger maxValue;

+ (instancetype)numberButtonWithFrame:(CGRect)frame;


@end


#pragma mark - NSString
@interface NSString (VNumberButton)
/**
 字符串 nil, @"", @"  ", @"\n" Returns NO;
 其他 Returns YES.
 */
- (BOOL)isNotBlank;

@end
