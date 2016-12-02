//
//  MessageCollectionViewCell.m
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "MessageCollectionViewCell.h"

@implementation MessageCollectionViewCell


- (void)populateWithObject:(HMUser *)obj{

    [self.lName setText:obj.name];
    
    if (![obj.name isEqualToString:@""]) {
        [self.lLetter setText:[obj.name substringToIndex:1]];
    }
    
    NSArray *arrayColors = @[kGreenColor,kPurpleColor,kBlueColor,kPinkColor];
    
    NSUInteger randomIndex = arc4random() % [arrayColors count];
    
    [self.vBackLetter setBackgroundColor:[ColorUtils colorFromRGB:[arrayColors objectAtIndex:randomIndex]]];
    
    if ([obj.imageName isEqualToString:@""]) {
        [self.ivPhoto setHidden:YES];
    }
    else{
        [self.ivPhoto setHidden:NO];
        [self.ivPhoto setImage:[UIImage imageNamed:obj.imageName]];
    }
    
    if (obj.hasAlert) {
        [self.ivIcon setHidden:NO];
    }
    else{
        [self.ivIcon setHidden:YES];
    }
}

@end
