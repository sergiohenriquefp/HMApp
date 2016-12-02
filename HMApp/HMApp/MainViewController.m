//
//  MainViewController.m
//  HMApp
//
//  Created by Sergio Freire on 30/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "MainViewController.h"
#import "MessagesViewController.h"
#import "SalesViewController.h"

@interface MainViewController ()

@property (strong, nonatomic) LeftMenuViewController *leftMenuViewController;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewWillAppear:(BOOL)animated{

    UIStoryboard *storyBoardDashboard = [UIStoryboard storyboardWithName:@"Dashboard" bundle:nil];
    UINavigationController *navigationController = [storyBoardDashboard instantiateViewControllerWithIdentifier:@"nav dashboard"];
    self.rootViewController = navigationController;
    
    UIStoryboard *storyBoardLeftMenu = [UIStoryboard storyboardWithName:@"LeftMenu" bundle:nil];
    self.leftMenuViewController = (LeftMenuViewController *)[storyBoardLeftMenu instantiateViewControllerWithIdentifier:@"LeftMenuViewController"];
    
    self.vTab.layer.shadowColor = [UIColor blackColor].CGColor;
    self.vTab.layer.masksToBounds = NO;
    self.vTab.layer.shadowOffset = CGSizeMake(0, 2);
    self.vTab.layer.shadowOpacity = 0.5;
    [self.view bringSubviewToFront:self.vTab];
    
    [self setLeftViewEnabledWithWidth:290.f
                    presentationStyle:LGSideMenuPresentationStyleSlideAbove
                 alwaysVisibleOptions:LGSideMenuAlwaysVisibleOnNone];
    
    self.leftViewStatusBarStyle = UIStatusBarStyleLightContent;
    self.leftViewStatusBarVisibleOptions = LGSideMenuStatusBarVisibleOnNone;
    
    self.leftViewBackgroundColor = [UIColor colorWithWhite:1.f alpha:0.9];
}

- (void)viewDidAppear:(BOOL)animated{

    [self.leftView addSubview:self.leftMenuViewController.view];
}

- (void)leftViewWillLayoutSubviewsWithSize:(CGSize)size
{
    [super leftViewWillLayoutSubviewsWithSize:size];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedSales:(id)sender{

    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Sales" bundle:nil];
    SalesViewController*viewController = (SalesViewController *)[storyBoard instantiateViewControllerWithIdentifier:@"SalesViewController"];
    [(UINavigationController *)self.rootViewController setViewControllers:@[viewController] animated:NO];
    [[self sideMenuController] hideLeftViewAnimated:YES completionHandler:nil];
}

- (IBAction)clickedMessages:(id)sender{
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Messages" bundle:nil];
    MessagesViewController*viewController = (MessagesViewController *)[storyBoard instantiateViewControllerWithIdentifier:@"MessagesViewController"];
    [(UINavigationController *)self.rootViewController setViewControllers:@[viewController] animated:NO];
    [[self sideMenuController] hideLeftViewAnimated:YES completionHandler:nil];
}

@end
