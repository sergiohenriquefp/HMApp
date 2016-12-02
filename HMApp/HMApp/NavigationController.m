//
//  NavigationController.m
//  HMApp
//
//  Created by Sergio Freire on 01/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "NavigationController.h"

@implementation NavigationController

- (BOOL)shouldAutorotate {
    return YES;
}

- (BOOL)prefersStatusBarHidden {
    return (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation) && UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    return UIStatusBarAnimationNone;
}

@end
