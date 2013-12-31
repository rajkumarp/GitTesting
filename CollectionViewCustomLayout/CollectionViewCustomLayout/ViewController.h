//
//  ViewController.h
//  CollectionViewCustomLayout
//
//  Created by Rajkumar Pachaiyappan on 12/30/13.
//  Copyright (c) 2013 tringapps, inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CustomCollectionViewLayout.h"

@interface ViewController : UICollectionViewController<CustomCollectionViewLayout>
@property (nonatomic,assign) CGFloat cellWidth;
@end
