//
//  CustomCollectionCell.m
//  CollectionViewCustomLayout
//
//  Created by Rajkumar Pachaiyappan on 12/30/13.
//  Copyright (c) 2013 tringapps, inc. All rights reserved.
//

#import "CustomCollectionCell.h"

@interface CustomCollectionCell ()

@property (nonatomic,strong) IBOutlet UIImageView *imageView;
@end

@implementation CustomCollectionCell


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
