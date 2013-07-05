//
//  RootViewController.h
//  FireRocket
//
//  Created by BigMac on 7/4/13.
//  Copyright (c) 2013 MobiPlay Studio Sdn Bhd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;
- (IBAction)showFuelBase:(UIButton *)sender;

@end
