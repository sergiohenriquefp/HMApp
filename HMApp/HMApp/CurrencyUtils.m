//
//  CurrencyUtils.m
//  Hoppy
//
//  Created by Sergio Freire on 30/05/16.
//  Copyright © 2016 ZXVentures. All rights reserved.
//

#import "CurrencyUtils.h"
#import "StringUtils.h"

@implementation CurrencyUtils

+ (NSString *)getNumberFormatted:(int)intAmount{
    
    NSNumberFormatter * formatter = [self getFormatterNormal];
    
    NSDecimalNumber* amount = [[NSDecimalNumber alloc] initWithInt:intAmount];
    
    NSString* stringAmount = [formatter stringFromNumber:amount];
    
    return stringAmount;
}

+ (NSString *)getCurrency:(double)doubleAmount{

    return [self getCurrency:doubleAmount withCode:nil];
}

+ (NSString *)getCurrency:(double)doubleAmount withCode:(NSString *)code{
    
    NSNumberFormatter * formatter = [self getFormatterCurrency];
    
    NSDecimalNumber* amount = [[NSDecimalNumber alloc] initWithDouble:doubleAmount];
    
    NSString* stringAmount = [formatter stringFromNumber:amount];
    NSString* amountWithoutDollarSign = [stringAmount stringByReplacingOccurrencesOfString:@"R$" withString:@""];
    
    if ([StringUtils isStringEmpty:code]) {
        return amountWithoutDollarSign;
    }
    
    return [NSString stringWithFormat:@"%@ %@",code, amountWithoutDollarSign];
}

+ (NSNumberFormatter *)getFormatterCurrency{

    NSNumberFormatter *form = [[NSNumberFormatter alloc] init];
    [form setNumberStyle:NSNumberFormatterCurrencyStyle];
    [form setRoundingMode:NSNumberFormatterRoundUp];
    [form setMaximumFractionDigits:2];
    NSLocale *localizableIdentifier = [[NSLocale alloc] initWithLocaleIdentifier:@"pt_BR"];
    [form setLocale:localizableIdentifier];
    
    return form;
}

+ (NSNumberFormatter *)getFormatterNormal{
    
    NSNumberFormatter *form = [[NSNumberFormatter alloc] init];
    [form setNumberStyle:NSNumberFormatterDecimalStyle];
    [form setRoundingMode:NSNumberFormatterRoundUp];
    [form setMaximumFractionDigits:0];
    NSLocale *localizableIdentifier = [[NSLocale alloc] initWithLocaleIdentifier:@"pt_BR"];
    [form setLocale:localizableIdentifier];
    
    return form;
}

@end
