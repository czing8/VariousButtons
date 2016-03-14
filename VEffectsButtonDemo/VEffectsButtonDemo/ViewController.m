//
//  ViewController.m
//  VEffectsButtonDemo
//
//  Created by Vols on 15/7/21.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "ViewController.h"

#import "VEffectsButton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet VEffectsButton *testButton;

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_testButton configureViewWithImage:[UIImage imageNamed:@"like"]];
    _testButton.selected = YES;
    
    _testButton.clickHandle = ^(){
        
    };
    
    [self displayUI];
}


- (void)displayUI{
    float width = (self.view.frame.size.width - 44) / 4;
    float x = width / 2;
    float y = self.view.frame.size.height / 2 - 22;
    
    // star button
    VEffectsButton *starButton = [[VEffectsButton alloc] initWithFrame:CGRectMake(x, y, 44, 44) image: [UIImage imageNamed:@"star"]];
    [self.view addSubview:starButton];
    x += width;
    
    // heart button
    VEffectsButton *heartButton = [[VEffectsButton alloc] initWithFrame:CGRectMake(x, y, 44, 44) image: [UIImage imageNamed:@"heart"]];
    heartButton.imageColorOn = [UIColor colorWithRed:254/255.0f green:110/255.0f blue:111/255.0f alpha:1.0];
    heartButton.circleColor = [UIColor colorWithRed:254/255.0f green:110/255.0f blue:111/255.0f alpha:1.0];
    heartButton.lineColor = [UIColor colorWithRed:226/255.0f green:96/255.0f blue:96/255.0f alpha:1.0];
    [self.view addSubview:heartButton];
    x += width;
    
    // heart button
    VEffectsButton *likeButton = [[VEffectsButton alloc] initWithFrame:CGRectMake(x, y, 44, 44) image: [UIImage imageNamed:@"like"]];
    likeButton.imageColorOn = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0];
    likeButton.circleColor = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0];
    likeButton.lineColor = [UIColor colorWithRed:41/255.0f green:128/255.0f blue:185/255.0f alpha:1.0];
    likeButton.duration = 2;
    [self.view addSubview:likeButton];
    x += width;
    
    // heart button
    VEffectsButton *smileButton = [[VEffectsButton alloc] initWithFrame:CGRectMake(x, y, 44, 44) image: [UIImage imageNamed:@"smile"]];
    smileButton.imageColorOn = [UIColor colorWithRed:45/255.0f green:204/255.0f blue:112/255.0f alpha:1.0];
    smileButton.circleColor = [UIColor colorWithRed:45/255.0f green:204/255.0f blue:112/255.0f alpha:1.0];
    smileButton.lineColor = [UIColor colorWithRed:45/255.0f green:195/255.0f blue:106/255.0f alpha:1.0];
    smileButton.duration = 5;
    [self.view addSubview:smileButton];
    x += width;
    
    starButton.selected = YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
