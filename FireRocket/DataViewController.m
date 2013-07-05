//
//  DataViewController.m
//  FireRocket
//
//  Created by BigMac on 7/4/13.
//  Copyright (c) 2013 MobiPlay Studio Sdn Bhd. All rights reserved.
//

#import "DataViewController.h"
#import "FuelBaseViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

- (IBAction)showFuelBase:(UIButton *)sender {

    FuelBaseViewController * vc = [[FuelBaseViewController alloc] initWithNibName:@"FuelBaseViewController" bundle:nil];
    UINavigationController * navCon = [[UINavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:navCon animated:YES completion:^{
        
    }];
}

//#pragma mark - Rotation Handling
//- (NSUInteger)supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskPortrait;
//}
@end
