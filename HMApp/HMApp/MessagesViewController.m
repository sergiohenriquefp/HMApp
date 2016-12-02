//
//  MessagesViewController.m
//  HMApp
//
//  Created by Sergio Freire on 30/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "MessagesViewController.h"
#import "MessageCollectionViewCell.h"

@interface MessagesViewController ()

@property (strong, nonatomic) IBOutlet UILabel *lViewTitle;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSMutableArray *listObjects;

@end

@implementation MessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.lViewTitle setText:NSLocalizedString(@"MESSAGES", @"Messages")];
    
    self.listObjects = [NSMutableArray arrayWithArray:[HMUser getListUserFake]];
    [self.collectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.listObjects.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    HMUser *obj = (HMUser *)[self.listObjects objectAtIndex:indexPath.row];
    
    MessageCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"MessageCollectionViewCell" forIndexPath:indexPath];
    [cell populateWithObject:obj];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}


- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
