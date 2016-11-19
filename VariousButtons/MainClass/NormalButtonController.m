//
//  NormalButtonController.m
//  VariousButtons
//
//  Created by Vols on 14/3/30.
//  Copyright © 2014年 Vols. All rights reserved.
//

#import "NormalButtonController.h"

#import "VFlatButton.h"
#import "VExtendTextButton.h"
#import "VGradientColorButton.h"

@interface NormalButtonController ()

@property (nonatomic, strong) VFlatButton * firFlatButton;

@end

@implementation NormalButtonController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.firFlatButton];
    
    [self setGradientButton];
    [self setExtendTextButton];
}


- (void)setExtendTextButton{
    
    NSArray * buttonImages = @[@"bowl", @"location"];
    NSArray * buttonTitles = @[@"行动", @"位置"];
    
    for (int i = 0; i < 2; i ++) {
        VExtendTextButton * tagButton = [[VExtendTextButton alloc] init];
        
        tagButton.frame = CGRectMake(20, 100+30*i, 160, 30);
        //        tagButton.center = (CGPoint){self.view.center.x, 60+50*i};
        tagButton.tag = 2000 + i;
        tagButton.backgroundColor = [UIColor clearColor];
        [tagButton setImage:[UIImage imageNamed:buttonImages[i]] forState:UIControlStateNormal];
        [tagButton setTitle:buttonTitles[i] forState:UIControlStateNormal];
        [tagButton addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        [tagButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [self.view addSubview:tagButton];
    }
}



- (void)setGradientButton{
    
    NSMutableArray * colors = [@[kRGB(76, 72, 250), kRGB(260, 180, 200)] mutableCopy];
    
    VGradientColorButton *btn = [[VGradientColorButton alloc]initWithFrame:CGRectMake(20, 200, 100, 40) colors:colors gradientType:topToBottom];
    [btn setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    NSMutableArray * colors2 = [@[kRGB(153, 70, 250), kRGB(260, 180, 200)] mutableCopy];
    VGradientColorButton *btn1 = [[VGradientColorButton alloc]initWithFrame:CGRectMake(20, 250, 100, 40) colors:colors2 gradientType:leftToRight];
    [btn1 setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    
    NSMutableArray * colors3 = [@[kRGB(0, 0, 1), kRGB(255, 255, 255)] mutableCopy];
    VGradientColorButton *btn2 = [[VGradientColorButton alloc]initWithFrame:CGRectMake(20, 300, 100, 40) colors:colors3 gradientType:upleftTolowRight];
    [btn2 setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:btn2];
}

#pragma mark - Actions

- (void)clickAction:(id)sender{
    NSLog(@"%s", __FUNCTION__);
}


#pragma mark - Properties

- (VFlatButton *)firFlatButton{
    if (!_firFlatButton) {
        _firFlatButton = [VFlatButton buttonWithType:UIButtonTypeCustom];
        _firFlatButton.frame = CGRectMake(20, 400, 200, 60);
        _firFlatButton.faceColor = [UIColor colorWithRed:86.0/255.0 green:161.0/255.0 blue:217.0/255.0 alpha:1.0];
        _firFlatButton.sideColor = [UIColor colorWithRed:79.0/255.0 green:127.0/255.0 blue:179.0/255.0 alpha:1.0];
        _firFlatButton.radius = 8.0;
        _firFlatButton.margin = 4.0;
        _firFlatButton.depth = 1.0;
        _firFlatButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [_firFlatButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_firFlatButton setTitle:@"Button" forState:UIControlStateNormal];
        
        [_firFlatButton addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _firFlatButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
