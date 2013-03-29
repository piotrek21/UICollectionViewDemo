//
//  FirstViewController.m
//  UICollectionViewDemo
//
//  Created by Piotrek on 28.03.2013.
//  Copyright (c) 2013 AppUnite. All rights reserved.
//

#import "FirstViewController.h"

static NSString * const PhotoCellIdentifier = @"PhotoCell";
static NSString * const AlbumTitleIdentifier = @"AlbumTitle";
static NSString * const AlbumTitleKind = @"AlbumTitleKind";

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)init {
    self = [super init];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)loadView {
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    UIView * view = [[UIView alloc] initWithFrame:frame];
    [view setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
    
    // UICollection view must be initalized with non-nil layout parameter
    
    GridPhotoLayout * gridPhotoLayout = [[GridPhotoLayout alloc] init];
    
    UICollectionView * collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:gridPhotoLayout];
    [collectionView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
    [collectionView setBackgroundColor:[UIColor colorWithWhite:0.8 alpha:1]];
    [view addSubview:collectionView];
    
    _collectionView = collectionView;
    
    self.view = view;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set delegate & datasource
    [_collectionView setDelegate:self];
    [_collectionView setDataSource:self];
    
    // Register cell class
    [_collectionView registerClass:[PhotoCollectionViewCell class] forCellWithReuseIdentifier:PhotoCellIdentifier];
    
    // Register supplementary view class
    [_collectionView registerClass:[AlbumTitleReusableView class] forSupplementaryViewOfKind:AlbumTitleKind withReuseIdentifier:AlbumTitleIdentifier];
 
}

#pragma mark - UICollectionViewDatasource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return (section == 0) ? 4 : 7;
}


- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
   
    // setup cell
    PhotoCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:PhotoCellIdentifier forIndexPath:indexPath];
  
    NSString * imageName = [NSString stringWithFormat:@"%i.jpg", indexPath.row % 8];
  
    [cell setImageNamed:imageName];
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath;
{
    // setup supplementary view
    AlbumTitleReusableView *titleView = [collectionView dequeueReusableSupplementaryViewOfKind:AlbumTitleKind withReuseIdentifier:AlbumTitleIdentifier forIndexPath:indexPath];
    
    [titleView setTitle:[NSString stringWithFormat:@"Album at section: %i", indexPath.section]];
    
    return titleView;
}

#pragma mark - UICollectionViewDelegate

- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Highlight cell :%@", indexPath);
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Select cell :%@", indexPath);
}

- (void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Unhighlight cell :%@", indexPath);
}

@end
