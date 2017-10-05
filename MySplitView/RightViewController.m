//
//  RightViewController.m
//  MySplitView
//
//  Created by Dev on 5/10/17.
//  Copyright © 2017 ITE. All rights reserved.
//

#import "RightViewController.h"

@interface RightViewController ()

@end

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (self.splitViewController.displayMode == UISplitViewControllerDisplayModePrimaryHidden)
    {
        self.navBarItem.leftBarButtonItem =
            [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                     style:self.splitViewController.displayModeButtonItem.style
                    target:self.splitViewController.displayModeButtonItem.target
                    action:self.splitViewController.displayModeButtonItem.action];
    }
    else
    {
        self.navBarItem.leftBarButtonItem = nil;
    }
}


-(void)splitViewController:(UISplitViewController *)svc willChangeToDisplayMode:(UISplitViewControllerDisplayMode)displayMode
{
    if (displayMode == UISplitViewControllerDisplayModePrimaryHidden)
    {
        // Portrait Mode
        self.navBarItem.leftBarButtonItem =
            [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                     style:self.splitViewController.displayModeButtonItem.style
                    target:self.splitViewController.displayModeButtonItem.target
                    action:self.splitViewController.displayModeButtonItem.action];
    }
    else
    {
        // Landscape Mode
        self.navBarItem.leftBarButtonItem = nil;
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
