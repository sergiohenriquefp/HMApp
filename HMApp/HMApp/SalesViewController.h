//
//  SalesViewController.h
//  HMApp
//
//  Created by Sergio Freire on 30/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SalesViewController : GeneralViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UILabel *lViewTitle;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *listObjects;

@end
