//
//  ProfileList.h
//  wouso
//
//  Created by student6 on 7/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileList : UIViewController
{
    IBOutlet UISearchBar *msearchBar;
}

@property (retain) IBOutlet UISearchBar *msearchBar;

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar;

- (NSInteger) numberOfSectionsInTableView:(UITableView *) tableview;

@end
