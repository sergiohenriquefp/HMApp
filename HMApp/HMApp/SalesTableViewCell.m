//
//  SalesTableViewCell.m
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "SalesTableViewCell.h"
#import "DateUtils.h"
#import "CurrencyUtils.h"

@implementation SalesTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)populateWithObject:(HMSale *)obj{

    [self.lTitle setText:obj.title];
    [self.lIdent setText:obj.identification];
    [self.lDate setText:[NSDateFormatter localizedStringFromDate:obj.date
                                                       dateStyle:NSDateFormatterShortStyle
                                                       timeStyle:NSDateFormatterNoStyle]];
    [self.lPrice setText:[CurrencyUtils getCurrency:obj.price withCode:@"R$"]];

    if (obj.hasAlert) {
        [self.ivIcon setHidden:NO];
    }
    else{
        [self.ivIcon setHidden:YES];
    }
}

@end
