//
//  HMMenu.m
//  HMApp
//
//  Created by Sergio Freire on 02/12/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "HMMenu.h"

@implementation HMMenu


+ (NSMutableArray *)getListMenu{
    
    NSMutableArray *arrayObj = [NSMutableArray array];
    
    HMMenu *objDashboard = [[HMMenu alloc] init];
    objDashboard.imageName = @"ico_dashboard";
    objDashboard.title = NSLocalizedString(@"DASHBOARD", @"Dashboard");
    objDashboard.number = @"";
    objDashboard.highlighted = NO;
    [arrayObj addObject:objDashboard];
    
    HMMenu *objMySales = [[HMMenu alloc] init];
    objMySales.imageName = @"ico_minhas_vendas_menu";
    objMySales.title = NSLocalizedString(@"MY_SALES", @"My Sales");
    objMySales.number = @"";
    objMySales.highlighted = NO;
    [arrayObj addObject:objMySales];
    
    HMMenu *objAffiliated = [[HMMenu alloc] init];
    objAffiliated.imageName = @"ico_afiliados";
    objAffiliated.title = NSLocalizedString(@"AFFILIATES", @"Affiliates");
    objAffiliated.number = @"121";
    objAffiliated.highlighted = NO;
    [arrayObj addObject:objAffiliated];
    
    HMMenu *objMessages = [[HMMenu alloc] init];
    objMessages.imageName = @"ico_mensagem_menu";
    objMessages.title = NSLocalizedString(@"MESSAGES", @"Messages");
    objMessages.number = @"+50";
    objMessages.highlighted = YES;
    [arrayObj addObject:objMessages];
    
    HMMenu *objNotifications = [[HMMenu alloc] init];
    objNotifications.imageName = @"ico_notificacoes_menu";
    objNotifications.title = NSLocalizedString(@"NOTIFICATIONS", @"Notifications");
    objNotifications.number = @"15";
    objNotifications.highlighted = YES;
    [arrayObj addObject:objNotifications];
    
    HMMenu *objMyAccount = [[HMMenu alloc] init];
    objMyAccount.imageName = @"ico_minha_conta";
    objMyAccount.title = NSLocalizedString(@"MY_ACCOUNT", @"My Account");
    objMyAccount.number = @"";
    objMyAccount.highlighted = NO;
    [arrayObj addObject:objMyAccount];
    
    HMMenu *objAbout = [[HMMenu alloc] init];
    objAbout.imageName = @"ico_sobre_o_app";
    objAbout.title = NSLocalizedString(@"ABOUT", @"About the App");
    objAbout.number = @"";
    objAbout.highlighted = NO;
    [arrayObj addObject:objAbout];
    
    return arrayObj;

}

@end
