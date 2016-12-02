//
//  MessageCollectionViewCell.h
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMUser.h"

@interface MessageCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *ivPhoto;
@property (strong, nonatomic) IBOutlet UIImageView *ivIcon;
@property (strong, nonatomic) IBOutlet UIView *vBackLetter;
@property (strong, nonatomic) IBOutlet UILabel *lLetter;
@property (strong, nonatomic) IBOutlet UILabel *lName;

- (void)populateWithObject:(HMUser *)obj;

@end
