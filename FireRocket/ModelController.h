//
//  ModelController.h
//  FireRocket
//
//  Created by BigMac on 7/4/13.
//  Copyright (c) 2013 MobiPlay Studio Sdn Bhd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end
