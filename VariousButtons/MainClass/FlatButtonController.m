//
//  FlatButtonController.m
//  VariousButtons
//
//  Created by Vols on 14/3/30.
//  Copyright © 2014年 Vols. All rights reserved.
//

#import "FlatButtonController.h"
#import "VNumberButton.h"

@interface FlatButtonController ()

@end

@implementation FlatButtonController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupNumButton];
}

- (void)setupNumButton {
    VNumberButton *num1Btn = [VNumberButton numberButtonWithFrame:CGRectMake(20, 60, 110, 30)];
    num1Btn.enableShake = YES;
    num1Btn.minValue = 0;
    num1Btn.maxValue = 10;
    num1Btn.inputFieldFont = 20;
    num1Btn.increaseTitle = @"＋";
    num1Btn.decreaseTitle = @"－";
    num1Btn.numberHandler = ^(NSString *num){
        NSLog(@"%@",num);
    };
    
    
    VNumberButton *num2Btn = [VNumberButton numberButtonWithFrame:CGRectMake(20, 100, 100, 30)];
    num2Btn.borderColor = [UIColor grayColor];
    num2Btn.enableShake = YES;
    num2Btn.increaseTitle = @"＋";
    num2Btn.decreaseTitle = @"－";
    num2Btn.numberHandler = ^(NSString *num){
        NSLog(@"%@",num);
    };
    
    
    VNumberButton *num3Btn = [VNumberButton numberButtonWithFrame:CGRectMake(20, 150, 100, 30)];
    num3Btn.enableShake = YES;
    num3Btn.increaseImage = [UIImage imageNamed:@"increase_taobao"];
    num3Btn.decreaseImage = [UIImage imageNamed:@"decrease_taobao"];
    num3Btn.numberHandler = ^(NSString *num){
        NSLog(@"%@",num);
    };
    
    
    VNumberButton *num4Btn = [VNumberButton numberButtonWithFrame:CGRectMake(20, 210, 100, 30)];
    num4Btn.isHideDecrease = YES;
    num4Btn.increaseImage = [UIImage imageNamed:@"increase_meituan"];
    num4Btn.decreaseImage = [UIImage imageNamed:@"decrease_meituan"];
    num4Btn.numberHandler = ^(NSString *num){
        NSLog(@"%@",num);
    };
    
    
    [self.view addSubview:num1Btn];
    [self.view addSubview:num2Btn];
    [self.view addSubview:num3Btn];
    [self.view addSubview:num4Btn];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
