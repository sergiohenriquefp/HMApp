//
//  SalesViewController.m
//  HMApp
//
//  Created by Sergio Freire on 30/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "SalesViewController.h"
#import "SalesTableViewCell.h"

@interface SalesViewController ()

@end

@implementation SalesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.lViewTitle setText:NSLocalizedString(@"MY_SALES", @"My Sales")];
    
    self.listObjects = [NSMutableArray arrayWithArray:[HMSale getListSaleFake]];
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
    
    HMSale *obj = (HMSale *)[self.listObjects objectAtIndex:indexPath.row];
    SalesTableViewCell *cellExample = [self.tableView dequeueReusableCellWithIdentifier:@"SalesTableViewCell"];
    
    [cellExample populateWithObject:obj];
    
    if (indexPath.row % 2 == 0) {
        [cellExample.vBackGround setBackgroundColor:[ColorUtils colorFromRGB:kGray1Color]];
    }
    else{
        [cellExample.vBackGround setBackgroundColor:[UIColor whiteColor]];
    }
    
    return cellExample;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 90.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
