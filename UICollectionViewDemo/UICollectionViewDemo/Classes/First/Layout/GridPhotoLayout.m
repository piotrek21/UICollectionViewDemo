//
//  GridPhotoLayout.m
//  UICollectionViewDemo
//
//  Created by Piotrek on 29.03.2013.
//  Copyright (c) 2013 AppUnite. All rights reserved.
//

#import "GridPhotoLayout.h"

@implementation GridPhotoLayout

- (id)init {
    self = [super init];
    if (self) {
        
        // Flow layout -> line oriented layout
        
        // Scroll direction
        [self setScrollDirection:UICollectionViewScrollDirectionVertical];
        
        // Space between two items
        [self setMinimumInteritemSpacing:10.0];
        
        // Space between two lines of items
        [self setMinimumLineSpacing:5.0];
        
        // Set item size
        [self setItemSize:CGSizeMake(320, 240)];
        
        // Set section inset
        [self setSectionInset:UIEdgeInsetsMake(10, 10, 100, 10)];
        
        // set header size
        [self setHeaderReferenceSize:CGSizeMake(0, 30)];
    }
    return self;
}

- (BOOL) shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return YES;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForSupplementaryViewOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewLayoutAttributes * attributes = [[UICollectionViewLayoutAttributes alloc] init];
    [attributes setAlpha:0.9];
    return  attributes;
}


@end
