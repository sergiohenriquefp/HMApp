//
//  HMUser.m
//  HMApp
//
//  Created by Sergio Freire on 01/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "HMUser.h"

@implementation HMUser


+ (NSMutableArray *)getListUserFake{

    NSMutableArray *arrayObj = [NSMutableArray array];
    
    HMUser *obj1 = [[HMUser alloc] init];
    obj1.name = @"Pedro Matos";
    obj1.imageName = @"people_placeholder";
    obj1.hasAlert = YES;
    
    HMUser *obj2 = [[HMUser alloc] init];
    obj2.name = @"Valéria Ciqueira";
    obj2.imageName = @"";
    obj2.hasAlert = NO;
    
    HMUser *obj3 = [[HMUser alloc] init];
    obj3.name = @"Maria Carol";
    obj3.imageName = @"";
    obj3.hasAlert = NO;
    
    HMUser *obj4 = [[HMUser alloc] init];
    obj4.name = @"Flávia de Alcântara";
    obj4.imageName = @"";
    obj4.hasAlert = NO;
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    [arrayObj addObject:obj3];
    [arrayObj addObject:obj4];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    [arrayObj addObject:obj3];
    [arrayObj addObject:obj4];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    [arrayObj addObject:obj3];
    [arrayObj addObject:obj4];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    [arrayObj addObject:obj3];
    [arrayObj addObject:obj4];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    [arrayObj addObject:obj3];
    [arrayObj addObject:obj4];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    [arrayObj addObject:obj3];
    [arrayObj addObject:obj4];
    
    [arrayObj addObject:obj1];
    [arrayObj addObject:obj2];
    [arrayObj addObject:obj3];
    [arrayObj addObject:obj4];
    
    return arrayObj;
}

@end
