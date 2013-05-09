//
//  EJFirstTopViewController.m
//  RollinTigerTheViral
//
//  Created by oiojin831 on 5/8/13.
//  Copyright (c) 2013 rollintiger. All rights reserved.
//

#import "EJFirstTopViewController.h"

@interface EJFirstTopViewController ()

@end

@implementation EJFirstTopViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // shadowPath, shadowOffset, and rotation is handled by ECSlidingViewController.
    // You just need to set the opacity, radius, and color.
    self.view.layer.shadowOpacity = 0.75f;
    self.view.layer.shadowRadius = 10.0f;
    self.view.layer.shadowColor = [UIColor blackColor].CGColor;
    
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[EJMenuViewController class]]) {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    }
    
    if (![self.slidingViewController.underRightViewController isKindOfClass:[EJRightMenuViewController class]]) {
        self.slidingViewController.underRightViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"UnderRight"];
    }
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
    //iad
    [[LARSAdController sharedManager] addAdContainerToViewInViewController:self];
}


- (IBAction)revealRightMenu:(id)sender {
    [self.slidingViewController anchorTopViewTo:ECLeft];

}

- (IBAction)revealMenu:(id)sender {
    [self.slidingViewController anchorTopViewTo:ECRight];

}
@end
