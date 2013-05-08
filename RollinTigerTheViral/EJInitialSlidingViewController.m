//
//  EJViewController.m
//  RollinTigerTheViral
//
//  Created by oiojin831 on 5/8/13.
//  Copyright (c) 2013 rollintiger. All rights reserved.
//

#import "EJInitialSlidingViewController.h"

@interface EJInitialSlidingViewController ()

@end

@implementation EJInitialSlidingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIStoryboard *storyboard;
//if you don do this NSInvalidArgumentException...... object cannot be nil error will occur
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    }
    
    self.topViewController = [storyboard instantiateViewControllerWithIdentifier:@"FirstTop"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
