//
//  AlbumTitleReusableView.m
//  UICollectionViewDemo
//
//  Created by Piotrek on 29.03.2013.
//  Copyright (c) 2013 AppUnite. All rights reserved.
//

#import "AlbumTitleReusableView.h"

@implementation AlbumTitleReusableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _titleLabel = [[UILabel alloc] initWithFrame:self.bounds];
        _titleLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.0f];
        _titleLabel.textColor = [UIColor colorWithWhite:1.0f alpha:1.0f];
        _titleLabel.shadowColor = [UIColor colorWithWhite:0.0f alpha:0.7f];
        _titleLabel.shadowOffset = CGSizeMake(0.0f, 1.0f);
        
        [self addSubview:_titleLabel];
    }
    return self;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    
    _titleLabel.text = nil;
}

- (void)setTitle:(NSString *)title {
    [_titleLabel setText:title];
}
@end
