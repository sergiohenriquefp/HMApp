//
//  HMUser.h
//  HMApp
//
//  Created by Sergio Freire on 01/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMUser : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *imageName;
@property (readwrite) BOOL hasAlert;

+ (NSMutableArray *)getListUserFake;

@end
