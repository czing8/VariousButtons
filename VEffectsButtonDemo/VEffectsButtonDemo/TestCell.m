//
//  TestCell.m
//  VEffectsButtonDemo
//
//  Created by Vols on 15/7/31.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "TestCell.h"

@implementation TestCell

- (void)awakeFromNib {
    [_thumbBtn configureViewWithImage:[UIImage imageNamed:@"like"]];
    _thumbBtn.selected = YES;
    
    _thumbBtn.clickHandle = ^(){
        NSLog(@"333");

    };
    
}


- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {

//        [_thumbBtn configureViewWithImage:[UIImage imageNamed:@"like"]];

    }
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
