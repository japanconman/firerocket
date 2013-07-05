//
//  FuelBaseViewController.m
//  FireRocket
//
//  Created by BigMac on 7/5/13.
//  Copyright (c) 2013 MobiPlay Studio Sdn Bhd. All rights reserved.
//

#import "FuelBaseViewController.h"
#import <stdlib.h>

@interface FuelBaseViewController ()

@end

@implementation FuelBaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIBarButtonItem * endlessButton = [[UIBarButtonItem alloc] initWithTitle:@"Endless" style:UIBarButtonItemStyleBordered target:self action:@selector(endlessLoop:)];
    self.navigationItem.rightBarButtonItem = endlessButton;
    self.navigationController.navigationBar.tintColor = self.view.backgroundColor;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

#pragma mark - Test Methods
-(void)endlessLoop:(id)sender{
    FuelBaseViewController * vc = [[FuelBaseViewController alloc] initWithNibName:@"FuelBaseViewController" bundle:nil];
    double r = arc4random() % 255;
    UIColor * randomColor = [UIColor colorWithRed:0.6 green:r/255.0f blue:r/255.0f alpha:1.0];
    vc.view.backgroundColor = randomColor;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - Rotation Handling
- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}
@end
