//
//  HMSale.h
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMSale : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *identification;
@property (strong, nonatomic) NSDate *date;
@property (readwrite) double price;
@property (readwrite) BOOL hasAlert;

+ (NSMutableArray *)getListSaleFake;

@end
