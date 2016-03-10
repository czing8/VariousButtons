//
//  ViewController.m
//  UIButtons
//
//  Created by Vols on 15/12/8.
//  Copyright © 2015年 Vols. All rights reserved.
//

#import "ViewController.h"
#import "LocationBtn.h"
#import "VLineButton.h"

#import "VCustomButton.h"


@interface ViewController ()

@property (nonatomic, strong) VLineButton * button;
@property (nonatomic, strong) VLineButton * anotherButton;

@property (nonatomic, strong) LocationBtn * locationBtn;
@property (nonatomic, strong) VCustomButton * customBtn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    
    [self.view addSubview:self.locationBtn];
    [self.view addSubview:self.customBtn];
    
    [self.view addSubview:self.button];
    [self.view addSubview:self.anotherButton];
}

#pragma mark - actions

- (void)locationAction:(UIButton *)button{
    NSLog(@"%s", __FUNCTION__);

}

- (void)clickAction:(id)sender{
    NSLog(@"%s", __FUNCTION__);
}



#pragma mark - properities

- (LocationBtn *)locationBtn{
    if (!_locationBtn) {
        
        _locationBtn = [[LocationBtn alloc] init];
        
        _locationBtn.frame = CGRectMake(0, 60, 160, 40);
        _locationBtn.backgroundColor = [UIColor clearColor];
        [_locationBtn setImage:[UIImage imageNamed:@"location"] forState:UIControlStateNormal];
        [_locationBtn setTitle:@"石家庄石家庄石家庄石家庄石家庄" forState:UIControlStateNormal];
        
        [_locationBtn addTarget:self action:@selector(locationAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _locationBtn;
}


- (VCustomButton *)customBtn{
    if (!_customBtn) {
        
        _customBtn = [[VCustomButton alloc] init];
        
        _customBtn.frame = CGRectMake(0, 30, 160, 40);
        _customBtn.backgroundColor = [UIColor clearColor];
        [_customBtn setImage:[UIImage imageNamed:@"location"] forState:UIControlStateNormal];
        [_customBtn setTitle:@"石家庄" forState:UIControlStateNormal];
        
        [_customBtn addTarget:self action:@selector(locationAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _customBtn;
}


- (VLineButton *)button{
    if (!_button) {
        _button = [[VLineButton alloc] init];
        _button.frame = CGRectMake(60, 100, 100, 40);
        //    _button.titleLabel.font = [UIFont fontWithName:@"Avenir-Black" size:18.0];
        [_button setTitle:@"Button" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
        [_button addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        [_button setTitleColor:[UIColor colorWithRed:0.330 green:0.744 blue:0.714 alpha:1.000] forState:UIControlStateNormal];
    }
    return _button;
}

- (VLineButton *)anotherButton{
    if (!_anotherButton) {
        _anotherButton = [[VLineButton alloc] init];
        _anotherButton.frame = CGRectMake(100, 200, 120, 30);
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





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
