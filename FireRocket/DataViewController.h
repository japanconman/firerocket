//
//  DataViewController.h
//  FireRocket
//
//  Created by BigMac on 7/4/13.
//  Copyright (c) 2013 MobiPlay Studio Sdn Bhd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;
- (IBAction)showFuelBase:(UIButton *)sender;

@end
