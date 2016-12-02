//
//  DashboardViewController.h
//  HMApp
//
//  Created by Sergio Freire on 30/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardViewController : GeneralViewController <UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UILabel *lViewTitle;
@property (strong, nonatomic) IBOutlet UILabel *lCurrentBalance;
@property (strong, nonatomic) IBOutlet UILabel *lRecentMessages;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *listObjectsTable;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSMutableArray *listObjectsCollection;

@end
