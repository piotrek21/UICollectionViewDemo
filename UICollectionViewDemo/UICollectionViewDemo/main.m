//
//  main.m
//  UICollectionViewDemo
//
//  Created by Piotrek on 28.03.2013.
//  Copyright (c) 2013 AppUnite. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        int retVal;
        @try {
            retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        }
        @catch (NSException *exception) {
            NSLog(@"%@", [exception callStackSymbols]);
            @throw exception;
        }
        return retVal;
    }
}
