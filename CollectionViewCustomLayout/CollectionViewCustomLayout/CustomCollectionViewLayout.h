//
//  CustomCollectionViewLayout.h
//  CollectionViewCustomLayout
//
//  Created by Rajkumar Pachaiyappan on 12/30/13.
//  Copyright (c) 2013 tringapps, inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomCollectionViewLayout;
@protocol CustomCollectionViewLayout <UICollectionViewDelegate>
- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(CustomCollectionViewLayout *)collectionViewLayout
 heightForItemAtIndexPath:(NSIndexPath *)indexPath;
@optional
- (CGFloat)collectionView:(UICollectionView *)collectionView
  heightForHeaderInLayout:(CustomCollectionViewLayout *)collectionViewLayout;
- (CGFloat)collectionView:(UICollectionView *)collectionView
  heightForFooterInLayout:(CustomCollectionViewLayout *)collectionViewLayout;
@end


@interface CustomCollectionViewLayout : UICollectionViewLayout
@property (nonatomic, weak) IBOutlet id<CustomCollectionViewLayout> delegate;
@property (nonatomic, assign) NSUInteger columnCount; // How many columns
@property (nonatomic, assign) CGFloat itemWidth; // Width for every column
@property (nonatomic, assign) UIEdgeInsets sectionInset; // The margins used to lay out content in a section
@property (nonatomic, assign) CGFloat verticalItemSpacing; // Spacing between items vertically
@end
