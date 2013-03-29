//
//  PhotoCollectionViewCell.h
//  UICollectionViewDemo
//
//  Created by Piotrek on 28.03.2013.
//  Copyright (c) 2013 AppUnite. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface PhotoCollectionViewCell : UICollectionViewCell {
    UIImageView * _imageView;
}

- (void)setImageNamed:(NSString*)imageNamed;

@end
