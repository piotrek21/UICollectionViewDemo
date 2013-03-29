//
//  AlbumTitleReusableView.h
//  UICollectionViewDemo
//
//  Created by Piotrek on 29.03.2013.
//  Copyright (c) 2013 AppUnite. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumTitleReusableView : UICollectionReusableView {
    UILabel * _titleLabel;
}

- (void)setTitle:(NSString*)title;

@end
