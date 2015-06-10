//
//  ViewController.m
//  VLineButton
//
//  Created by Vols on 15/6/10.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "ViewController.h"
#import "VLineButton.h"

@interface ViewController ()

@property (nonatomic, strong) VLineButton * button;
@property (nonatomic, strong) VLineButton * anotherButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.button];
    [self.view addSubview:self.anotherButton];
}


- (VLineButton *)button{
    if (!_button) {
        _button = [[VLineButton alloc] init];
        _button.frame = CGRectMake(60, 100, 200, 60);
        //    _button.titleLabel.font = [UIFont fontWithName:@"Avenir-Black" size:18.0];
        [_button setTitle:@"Button One" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
        [_button addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        [_button setTitleColor:[UIColor colorWithRed:0.330 green:0.744 blue:0.714 alpha:1.000] forState:UIControlStateNormal];
    }
    return _button;
}

- (VLineButton *)anotherButton{
    if (!_anotherButton) {
        _anotherButton = [[VLineButton alloc] init];
        _anotherButton.frame = CGRectMake(100, 200, 120, 60);
//        _anotherButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Black" size:18.0];
        [_anotherButton setTitle:@"Button" forState:UIControlStateNormal];
        [_anotherButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
        [_anotherButton addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        
        [_anotherButton setTitleColor:[UIColor colorWithHue:arc4random() % 256 / 256.0 saturation:1.0 brightness:1.0 alpha:1.0] forState:UIControlStateNormal];
        
        _anotherButton.enabled = arc4random() % 2;
        _anotherButton.bold = arc4random() % 2;
    }
    return _anotherButton;
}


- (void)clickAction:(id)sender{
    NSLog(@"%s", __FUNCTION__);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
