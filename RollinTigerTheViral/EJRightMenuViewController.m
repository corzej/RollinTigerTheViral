//
//  EJRightMenuViewController.m
//  RollinTigerTheViral
//
//  Created by oiojin831 on 5/8/13.
//  Copyright (c) 2013 rollintiger. All rights reserved.
//

#import "EJRightMenuViewController.h"

@interface EJRightMenuViewController ()
@property (nonatomic, assign) CGFloat peekLeftAmount;
@end

@implementation EJRightMenuViewController
@synthesize peekLeftAmount;

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
    self.peekLeftAmount = 40.0f;
    [self.slidingViewController setAnchorLeftPeekAmount:self.peekLeftAmount];
    self.slidingViewController.underRightWidthLayout = ECVariableRevealWidth;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
