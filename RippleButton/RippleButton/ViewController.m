//
//  ViewController.m
//  RippleButton
//
//  Created by Vols on 14-9-17.
//  Copyright (c) 2014年 Vols. All rights reserved.
//

#import "ViewController.h"
#import "VRippleButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self displayUI];
}

- (void)displayUI{
    
    UIImageView *background = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"background.jpg"]];
    background.frame = self.view.frame;
    [self.view addSubview:background];
    self.view.backgroundColor = [UIColor colorWithWhite:0.2 alpha:0.9];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    

    VRippleButton * rippleButton = [[VRippleButton alloc] initWithImage:[UIImage imageNamed:@"pin.png"] frame:CGRectMake(144, 55, 32, 32) target:@selector(buttonTapped:) parent:self];
    
    [rippleButton setRippeEffectEnabled:YES];
    [rippleButton setRippleEffectWithColor:[UIColor colorWithRed:240/255.f green:159/255.f blue:10/255.f alpha:1]];
    

    VRippleButton * rippleButton1 = [[VRippleButton alloc] initWithImage:[UIImage imageNamed:@"green.png"] frame:CGRectMake(124, 150, 75, 75) target:@selector(buttonTapped:) parent:self];
    
    [rippleButton1 setRippeEffectEnabled:YES];
    [rippleButton1 setRippleEffectWithColor:[UIColor colorWithRed:240/255.f green:159/255.f blue:254/255.f alpha:1]];
    
    [self.view addSubview:rippleButton];
    [self.view addSubview:rippleButton1];
}


-(void)buttonTapped:(id)sender {
    NSLog(@"Button Tapped");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
