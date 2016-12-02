//
//  LeftMenuViewController.m
//  HMApp
//
//  Created by Sergio Freire on 30/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "MenuTableViewCell.h"
#import "DashboardViewController.h"
#import "SalesViewController.h"
#import "MessagesViewController.h"

@interface LeftMenuViewController ()

@end

@implementation LeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.listObjects = [NSMutableArray arrayWithArray:[HMMenu getListMenu]];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.listObjects count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    HMMenu *obj = (HMMenu *)[self.listObjects objectAtIndex:indexPath.row];
    MenuTableViewCell *cellExample = [self.tableView dequeueReusableCellWithIdentifier:@"MenuTableViewCell"];
    
    [cellExample populateWithObject:obj];
    
    return cellExample;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
            [self goToDashboard];
            break;
        case 1:
            [self goToSales];
            break;
        case 3:
            [self goToMessages];
            break;
            
        default:
            break;
    }
    
}

- (void)goToDashboard{
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Dashboard" bundle:nil];
    DashboardViewController*viewController = (DashboardViewController *)[storyBoard instantiateViewControllerWithIdentifier:@"DashboardViewController"];
    [(UINavigationController *)[self sideMenuController].rootViewController setViewControllers:@[viewController] animated:YES];
    [[self sideMenuController] hideLeftViewAnimated:YES completionHandler:nil];
}

- (void)goToSales{

    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Sales" bundle:nil];
    SalesViewController*viewController = (SalesViewController *)[storyBoard instantiateViewControllerWithIdentifier:@"SalesViewController"];
    [(UINavigationController *)[self sideMenuController].rootViewController setViewControllers:@[viewController] animated:YES];
    [[self sideMenuController] hideLeftViewAnimated:YES completionHandler:nil];
}

- (void)goToMessages{

    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Messages" bundle:nil];
    MessagesViewController*viewController = (MessagesViewController *)[storyBoard instantiateViewControllerWithIdentifier:@"MessagesViewController"];
    [(UINavigationController *)[self sideMenuController].rootViewController setViewControllers:@[viewController] animated:YES];
    [[self sideMenuController] hideLeftViewAnimated:YES completionHandler:nil];
}

@end
