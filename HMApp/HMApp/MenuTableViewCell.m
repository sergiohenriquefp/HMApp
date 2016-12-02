//
//  MenuTableViewCell.m
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "MenuTableViewCell.h"

@implementation MenuTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)populateWithObject:(HMMenu *)obj{

    [self.ivIcon setImage:[UIImage imageNamed:obj.imageName]];
    [self.lTitle setText:obj.title];
    
    if (![obj.number isEqualToString:@""]) {
        [self.lNumber setHidden:NO];
        [self.lNumber setText:[NSString stringWithFormat:@" %@  ",obj.number]];
    }
    else{
        [self.lNumber setHidden:YES];
    }
    
    if (obj.highlighted) {
        [self.vBackGround setBackgroundColor:[ColorUtils colorFromRGB:kGray1Color]];
        [self.lTitle setTextColor:[ColorUtils colorFromRGB:kGray2Color]];
    }
    else{
        [self.vBackGround setBackgroundColor:[UIColor whiteColor]];
        [self.lTitle setTextColor:[UIColor blackColor]];
    }
    
    [self updateConstraints];
    
}

@end
