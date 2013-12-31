//
//  ViewController.m
//  CollectionViewCustomLayout
//
//  Created by Rajkumar Pachaiyappan on 12/30/13.
//  Copyright (c) 2013 tringapps, inc. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionCell.h"

#define kCellCount 50
#define kCellIdentifier @"customCollectionCell"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *cellHeights;
@end

@implementation ViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
    }
    return self;
}


- (NSMutableArray *)cellHeights {
    if (!_cellHeights) {
        _cellHeights = [NSMutableArray arrayWithCapacity:kCellCount];
        for (NSInteger i = 0; i < kCellCount; i++) {
            _cellHeights[i] = @(arc4random() % 100 * 2 + 100);
        }
    }
    return _cellHeights;
}

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self updateLayout];
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                         duration:(NSTimeInterval)duration {
    [super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation
                                            duration:duration];
    [self updateLayout];
}

- (void)updateLayout {
    CustomCollectionViewLayout *layout =
    (CustomCollectionViewLayout *)self.collectionView.collectionViewLayout;
    layout.columnCount = self.collectionView.bounds.size.width / 160.0;
    layout.itemWidth = 160;
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return kCellCount;
}

- (CustomCollectionCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionCell *cell =
    (CustomCollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:kCellIdentifier
                                                                                forIndexPath:indexPath];
    [cell setBackgroundColor:[UIColor blueColor]];
    return cell;
}



- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(CustomCollectionViewLayout *)collectionViewLayout
 heightForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [self.cellHeights[indexPath.item] floatValue];
}


@end
