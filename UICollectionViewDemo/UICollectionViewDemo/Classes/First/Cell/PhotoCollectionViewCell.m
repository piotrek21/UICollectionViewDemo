//
//  PhotoCollectionViewCell.m
//  UICollectionViewDemo
//
//  Created by Piotrek on 28.03.2013.
//  Copyright (c) 2013 AppUnite. All rights reserved.
//

#import "PhotoCollectionViewCell.h"

@implementation PhotoCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self.contentView setBackgroundColor:[UIColor whiteColor]];
        
        self.layer.borderColor = [UIColor whiteColor].CGColor;
        self.layer.borderWidth = 3.0f;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowRadius = 3.0f;
        self.layer.shadowOffset = CGSizeMake(0.0f, 2.0f);
        self.layer.shadowOpacity = 0.5f;
        
        UIView * selectedBackgroundView = [[UIView alloc] init];
        [selectedBackgroundView setBackgroundColor:[UIColor blueColor]];
        [self setSelectedBackgroundView:selectedBackgroundView];
        
        _imageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_imageView];
    }
    return self;
}

- (void)layoutSubviews {
    [_imageView setFrame:CGRectInset(self.contentView.bounds, 3, 3)];
}

- (void)setImageNamed:(NSString *)imageNamed {
    [_imageView setImage:[UIImage imageNamed:imageNamed]];
    [_imageView setHighlightedImage:[UIImage imageNamed:@"first"]];
}

@end
