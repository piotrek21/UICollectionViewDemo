//
//  FirstViewController.h
//  UICollectionViewDemo
//
//  Created by Piotrek on 28.03.2013.
//  Copyright (c) 2013 AppUnite. All rights reserved.
//

/*
 
 More about custom layouts is here: http://skeuo.com/uicollectionview-custom-layout-tutorial#section8
 
*/

#import <UIKit/UIKit.h>

//Cell
#import "PhotoCollectionViewCell.h"

//Layout
#import "GridPhotoLayout.h"

//Views
#import "AlbumTitleReusableView.h"

@interface FirstViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate> {
    __weak UICollectionView * _collectionView;
   
    GridPhotoLayout * _gridPhotoLayout;
    
    NSMutableArray * _firstAlbumImages;
    NSMutableArray * _secondAlbumImages;
}

@end
