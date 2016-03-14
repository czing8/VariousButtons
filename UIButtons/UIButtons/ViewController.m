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

#import "VFlatButton.h"


#import "VCustomButton.h"
#import "VExtendTextButton.h"
#import "VGradientColorButton.h"


#define RGB(r, g, b)        [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

@interface ViewController ()

@property (nonatomic, strong) VLineButton * button;
@property (nonatomic, strong) VLineButton * anotherButton;

@property (nonatomic, strong) LocationBtn * locationBtn;
@property (nonatomic, strong) VCustomButton * customBtn;

@property (nonatomic, strong) VFlatButton * firFlatButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    
    [self.view addSubview:self.locationBtn];
    [self.view addSubview:self.customBtn];
    
    [self.view addSubview:self.button];
    [self.view addSubview:self.anotherButton];
    
    [self.view addSubview:self.firFlatButton];

    [self setGradientButton];
    [self displayUI];
}


- (void)displayUI{
    
    NSArray * buttonImages = @[@"bowl", @"location1"];
    NSArray * buttonTitles = @[@"行动", @"位置"];
    
    for (int i = 0; i < 2; i ++) {
        VExtendTextButton * tagButton = [[VExtendTextButton alloc] init];
        
        tagButton.frame = CGRectMake(20, 100+30*i, 160, 30);
//        tagButton.center = (CGPoint){self.view.center.x, 60+50*i};
        tagButton.tag = 2000 + i;
        tagButton.backgroundColor = [UIColor clearColor];
        [tagButton setImage:[UIImage imageNamed:buttonImages[i]] forState:UIControlStateNormal];
        [tagButton setTitle:buttonTitles[i] forState:UIControlStateNormal];
        [tagButton addTarget:self action:@selector(tagMenuAction:) forControlEvents:UIControlEventTouchUpInside];
        [tagButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [self.view addSubview:tagButton];
    }
}



- (void)setGradientButton{

    NSMutableArray * colors = [@[RGB(76, 72, 250), RGB(260, 180, 200)] mutableCopy];
    
    VGradientColorButton *btn = [[VGradientColorButton alloc]initWithFrame:CGRectMake(20, 200, 150, 50) colors:colors gradientType:topToBottom];
    [btn setTitle:@"Title" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
    NSMutableArray * colors2 = [@[RGB(153, 70, 250), RGB(260, 180, 200)] mutableCopy];
    VGradientColorButton *btn1 = [[VGradientColorButton alloc]initWithFrame:CGRectMake(20, 260, 150, 50) colors:colors2 gradientType:leftToRight];
    [btn1 setTitle:@"Title1" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    
    NSMutableArray * colors3 = [@[RGB(0, 0, 1), RGB(255, 255, 255)] mutableCopy];
    VGradientColorButton *btn2 = [[VGradientColorButton alloc]initWithFrame:CGRectMake(20, 320, 150, 50) colors:colors3 gradientType:upleftTolowRight];
    [btn2 setTitle:@"Title1" forState:UIControlStateNormal];
    [self.view addSubview:btn2];

}

#pragma mark - actions

- (void)locationAction:(UIButton *)button{
    NSLog(@"%s", __FUNCTION__);

}

- (void)clickAction:(id)sender{
    NSLog(@"%s", __FUNCTION__);
}

- (void)tagMenuAction:(UIButton *)button{
    
}




#pragma mark - properities

- (LocationBtn *)locationBtn{
    if (!_locationBtn) {
        
        _locationBtn = [[LocationBtn alloc] init];
        
        _locationBtn.frame = CGRectMake(20, 60, 160, 40);
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
        
        _customBtn.frame = CGRectMake(20, 30, 160, 40);
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
        _button.frame = CGRectMake(200, 60, 100, 40);
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
        _anotherButton.frame = CGRectMake(200, 120, 100, 30);
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


#pragma mark - properties

- (VFlatButton *)firFlatButton{
    if (!_firFlatButton) {
        _firFlatButton = [VFlatButton buttonWithType:UIButtonTypeCustom];
        _firFlatButton.frame = CGRectMake(20, 400, 200, 60);
        _firFlatButton.faceColor = [UIColor colorWithRed:86.0/255.0 green:161.0/255.0 blue:217.0/255.0 alpha:1.0];
        _firFlatButton.sideColor = [UIColor colorWithRed:79.0/255.0 green:127.0/255.0 blue:179.0/255.0 alpha:1.0];
        _firFlatButton.radius = 8.0;
        _firFlatButton.margin = 4.0;
        _firFlatButton.depth = 1.0;
        
        [_firFlatButton addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        
        _firFlatButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [_firFlatButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_firFlatButton setTitle:@"Button" forState:UIControlStateNormal];
    }
    return _firFlatButton;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
