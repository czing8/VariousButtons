//
//  EffectsButtonController.m
//  VariousButtons
//
//  Created by Vols on 14/3/30.
//  Copyright © 2014年 Vols. All rights reserved.
//

#import "EffectsButtonController.h"
#import "VEffectsButton.h"
#import "VActivityButton.h"
#import "VRippleButton.h"

#import "V1NavigationController.h"

@interface EffectsButtonController () <VActivityButtonDelegate>

@property (weak, nonatomic) IBOutlet VEffectsButton *effectsButton;
@property (nonatomic, weak) VActivityButton * activityButton;

@end

@implementation EffectsButtonController

- (void)viewDidLoad {
    [super viewDidLoad];

    [_effectsButton configureViewWithImage:[UIImage imageNamed:@"like"]];
    _effectsButton.backgroundColor = [UIColor clearColor];
//    _effectsButton.selected = YES;
    
    _effectsButton.clickHandle = ^(){
        NSLog(@"%s", __FUNCTION__);
    };
    
    [self setEffectsButton];
    [self setRippleButton];
    [self setupActivityButton];
}

- (void)setRippleButton{
    VRippleButton * rippleButton = [[VRippleButton alloc] initWithImage:[UIImage imageNamed:@"green"] frame:CGRectMake(144, 300, 80, 80) target:@selector(clickAction:) parent:self];
    
    [rippleButton setRippeEffectEnabled:YES];
    [rippleButton setRippleEffectWithColor:[UIColor colorWithRed:240/255.f green:159/255.f blue:10/255.f alpha:1]];
    [self.view addSubview:rippleButton];
}


- (void)setEffectsButton{
    float width = (self.view.frame.size.width - 44) / 4;
    float x = width / 2;
    float y = 20;
    
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


- (void)setupActivityButton {
    
    for (int i = 0; i < 2; i ++) {
        VActivityButton * activityBtn = [VActivityButton buttonWithFrame:CGRectMake(30, 120+i*60, self.view.bounds.size.width - 2 * 30, 50)];
        activityBtn.delegate = self;
        activityBtn.tag = 1000 + i;
        [activityBtn setTitle:@"Login" forState:UIControlStateNormal];
        [activityBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [activityBtn setBackgroundColor:[UIColor whiteColor]];
        [activityBtn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];

        [self.view addSubview:activityBtn];
    }
}



#pragma mark - Actions

- (void)clickAction:(id)sender{
    if ([sender isKindOfClass:[VActivityButton class]]) {
        [sender startAnimation];
    }
}




#pragma mark JMAnimationButtonDelegate
- (void)activityButtonDidStartAnimation:(VActivityButton *)activityButton{
    NSLog(@"start");
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.8 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [activityButton stopAnimation];
    });
}

- (void)activityButtonDidFinishAnimation:(VActivityButton *)activityButton {
    NSLog(@"stop");
}

- (void)activityButtonWillFinishAnimation:(VActivityButton *)activityButton {
    if (activityButton.tag == 1001) {
        
        UIViewController* vc = [[UIViewController alloc] init];
        vc.view.backgroundColor = [UIColor orangeColor];
        [((V1NavigationController*)self.navigationController) pushViewController:vc centerButton:activityButton];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
