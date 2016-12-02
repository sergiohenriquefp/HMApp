//
//  HMMenu.h
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMMenu : NSObject

@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *number;
@property (readwrite) BOOL highlighted;

+ (NSMutableArray *)getListMenu;

@end
