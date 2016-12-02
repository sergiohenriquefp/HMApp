//
//  LeftMenuViewController.h
//  HMApp
//
//  Created by Sergio Freire on 30/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMUser.h"

@interface LeftMenuViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *listObjects;
@property (weak, nonatomic) IBOutlet UIView *vMenu;

@end
