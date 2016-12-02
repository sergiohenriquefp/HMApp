//
//  DashboardViewController.m
//  HMApp
//
//  Created by Sergio Freire on 30/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "DashboardViewController.h"
#import "SalesTableViewCell.h"
#import "MessageCollectionViewCell.h"

@interface DashboardViewController ()

@property (strong, nonatomic) IBOutlet UILabel *lViewTitle;
@property (strong, nonatomic) IBOutlet UILabel *lCurrentBalance;
@property (strong, nonatomic) IBOutlet UILabel *lRecentMessages;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *listObjectsTable;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSMutableArray *listObjectsCollection;

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.lViewTitle setText:NSLocalizedString(@"DASHBOARD", @"Dashboard")];
    [self.lCurrentBalance setText:NSLocalizedString(@"CURRENT_BALANCE", @"Current balance")];
    [self.lRecentMessages setText:NSLocalizedString(@"RECENT_MESSAGES", @"Recent Messages")];
    
    self.listObjectsTable = [NSMutableArray arrayWithArray:[HMSale getListSaleFake]];
    [self.tableView reloadData];
    
    self.listObjectsCollection = [NSMutableArray arrayWithArray:[HMUser getListUserFake]];
    [self.collectionView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.listObjectsTable count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    HMSale *obj = (HMSale *)[self.listObjectsTable objectAtIndex:indexPath.row];
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

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.listObjectsCollection.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    HMUser *obj = (HMUser *)[self.listObjectsCollection objectAtIndex:indexPath.row];
    
    MessageCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"MessageCollectionViewCell" forIndexPath:indexPath];
    [cell populateWithObject:obj];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
