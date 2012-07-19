//
//  ProfileList.m
//  wouso
//
//  Created by student6 on 7/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ProfileList.h"

@implementation ProfileList

@synthesize msearchBar;

- (NSInteger) numberOfSectionsInTableView:(UITableView *) tableview
{
    tableview.hidden = YES;
    return 0;
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    NSLog(@"CLICKY CLICK!");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
