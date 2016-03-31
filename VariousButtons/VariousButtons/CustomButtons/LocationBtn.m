//
//  LocationBtn.m
//  UIButtons
//
//  Created by Vols on 15/12/8.
//  Copyright © 2015年 Vols. All rights reserved.
//

#import "LocationBtn.h"

#define ICON_WH                     (16.0)
#define ICON_TITLE_MARGIN                 (8.0)

@implementation LocationBtn


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel.font = [UIFont systemFontOfSize:13];
        [self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    }
    return self;
}


- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    return CGRectMake(5, (CGRectGetHeight(contentRect) - ICON_WH)/2.0, ICON_WH, ICON_WH);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    return CGRectMake(ICON_WH + ICON_TITLE_MARGIN, 0,
                      CGRectGetWidth(contentRect) - ICON_WH - ICON_WH,
                      CGRectGetHeight(contentRect));
}



@end
