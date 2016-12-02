//
//  SalesTableViewCell.h
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMSale.h"

@interface SalesTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *lViewTitle;

@property (strong, nonatomic) IBOutlet UIView *vBackGround;
@property (strong, nonatomic) IBOutlet UILabel *lTitle;
@property (strong, nonatomic) IBOutlet UILabel *lIdent;
@property (strong, nonatomic) IBOutlet UILabel *lDate;
@property (strong, nonatomic) IBOutlet UILabel *lPrice;
@property (strong, nonatomic) IBOutlet UIImageView *ivIcon;

- (void)populateWithObject:(HMSale *)obj;

@end
