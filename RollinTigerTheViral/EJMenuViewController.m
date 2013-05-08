//
//  EJMenuViewController.m
//  RollinTigerTheViral
//
//  Created by oiojin831 on 5/8/13.
//  Copyright (c) 2013 rollintiger. All rights reserved.
//

#import "EJMenuViewController.h"

@interface EJMenuViewController ()
@property (nonatomic, strong) NSArray *menuItems;       //this will be the key
@property (nonatomic, strong) NSDictionary *menuItemsNames;
@end

@implementation EJMenuViewController
@synthesize menuItems;

- (void)awakeFromNib
{
    self.menuItems = [NSArray arrayWithObjects:@"The Viral", @"Episode 1", @"Episode 2", @"Episode 3", nil];
    self.menuItemsNames =[NSDictionary dictionaryWithObjects: [NSArray arrayWithObjects:@"First", @"Epi1",@"Epi2",@"Epi3",nil] forKeys:menuItems];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.slidingViewController setAnchorRightRevealAmount:280.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return self.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"MenuItemCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [self.menuItems objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier = [NSString stringWithFormat:@"%@Top",[self.menuItemsNames objectForKey:[self.menuItems objectAtIndex:indexPath.row]]];
    
    UIViewController *newTopViewController = [self.storyboard instantiateViewControllerWithIdentifier:identifier];
    
    [self.slidingViewController anchorTopViewOffScreenTo:ECRight animations:nil onComplete:^{
        CGRect frame = self.slidingViewController.topViewController.view.frame;
        self.slidingViewController.topViewController = newTopViewController;
        self.slidingViewController.topViewController.view.frame = frame;
        [self.slidingViewController resetTopView];
    }];
}
@end
