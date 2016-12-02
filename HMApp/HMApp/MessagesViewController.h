//
//  MessagesViewController.h
//  HMApp
//
//  Created by Sergio Freire on 30/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessagesViewController : GeneralViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UILabel *lViewTitle;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSMutableArray *listObjects;

@end
