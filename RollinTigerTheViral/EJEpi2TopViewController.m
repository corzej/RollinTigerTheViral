//
//  EJEpi2TopViewController.m
//  RollinTigerTheViral
//
//  Created by oiojin831 on 5/8/13.
//  Copyright (c) 2013 rollintiger. All rights reserved.
//

#import "EJEpi2TopViewController.h"

@interface EJEpi2TopViewController ()

@end

@implementation EJEpi2TopViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[EJMenuViewController class]]) {
        self.slidingViewController.underLeftViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    }
    self.slidingViewController.underRightViewController = nil;
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
    
    //iad
    [[LARSAdController sharedManager] addAdContainerToViewInViewController:self];

}


- (IBAction)revealMenu:(id)sender {
        [self.slidingViewController anchorTopViewTo:ECRight];
}
@end
