//
//  CurrencyUtils.h
//  Hoppy
//
//  Created by Sergio Freire on 30/05/16.
//  Copyright © 2016 HMAPP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CurrencyUtils : NSObject

+ (NSString *)getNumberFormatted:(int)intAmount;

+ (NSString *)getCurrency:(double)doubleAmount;

+ (NSString *)getCurrency:(double)doubleAmount withCode:(NSString *)code;

@end
