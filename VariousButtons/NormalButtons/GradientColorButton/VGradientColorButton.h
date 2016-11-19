//
//  VGradientColorButton.h
//  GradientColorButton
//
//  Created by Vols on 14-9-29.
//  Copyright (c) 2014年 Vols. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, GradientType) {
    topToBottom = 0,        //从上到小
    leftToRight = 1,        //从左到右
    upleftTolowRight = 2,   //左上到右下
    uprightTolowLeft = 3,   //右上到左下
};


@interface VGradientColorButton : UIButton

//建议颜色设置为2个相近色为佳，设置3个相近色能形成拟物化的凸起感
- (id)initWithFrame:(CGRect)frame colors:(NSMutableArray*)colors gradientType:(GradientType)gradientType;

@end
