//
//  HMSale.m
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "HMSale.h"

@implementation HMSale

+ (NSMutableArray *)getListSaleFake{
    
    NSMutableArray *arrayObj = [NSMutableArray array];
    
    HMSale *obj1 = [[HMSale alloc] init];
    obj1.title = @"Como decorar uma festa infantil maravilhosa...";
    obj1.identification = @"id 30294080";
    obj1.date = [NSDate new];
    obj1.price = 1035,00;
    obj1.hasAlert = YES;
    
    HMSale *obj2 = [[HMSale alloc] init];
    obj2.title = @"Como decorar uma festa infantil maravilhosa...";
    obj2.identification = @"id 30294080";
    obj2.date = [NSDate new];
    obj2.price = 1035,00;
    obj2.hasAlert = NO;
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    
    return arrayObj;
}


@end
