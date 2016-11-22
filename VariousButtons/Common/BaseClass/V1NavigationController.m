//
//  V1NavigationController.m
//  VariousButtons
//
//  Created by Vols on 2015/11/22.
//  Copyright © 2015年 Vols. All rights reserved.
//

#import "V1NavigationController.h"
#import "V1NavAnimation.h"
#import "EffectsButtonController.h"

@interface V1NavigationController () <UINavigationControllerDelegate>

@property (nonatomic, strong) UIButton  * centerButton;

@end

@implementation V1NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)pushViewController:(UIViewController *)viewController centerButton:(UIButton*)button {

    self.centerButton = button;
    self.delegate = self;
    
    [super pushViewController:viewController animated:YES];
}

#pragma mark UINavigationControllerDelegate
- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    
    if (operation == UINavigationControllerOperationPush && [fromVC isKindOfClass:[EffectsButtonController
 class]] && [toVC isKindOfClass:[UIViewController class]]) {
//        XSQMasterViewController *masterViewController = (XSQMasterViewController *)fromVC;
//        return [[XSQExpandAnimatorObject alloc] initWithThumbView:masterViewController.thumbView];
        
        V1NavAnimation* animation = [V1NavAnimation new];
        animation.centerButton = self.centerButton;
        return animation;
    }
    return nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
