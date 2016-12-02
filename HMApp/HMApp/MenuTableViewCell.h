//
//  MenuTableViewCell.h
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMMenu.h"

@interface MenuTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIView *vBackGround;
@property (strong, nonatomic) IBOutlet UIImageView *ivIcon;
@property (strong, nonatomic) IBOutlet UILabel *lTitle;
@property (strong, nonatomic) IBOutlet UILabel *lNumber;

- (void)populateWithObject:(HMMenu *)obj;

@end
