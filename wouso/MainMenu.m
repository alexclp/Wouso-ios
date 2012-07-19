//
//  MainMenu.m
//  wouso
//
//  Created by student6 on 7/16/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MainMenu.h"
#import "ResourceDownloader.h"
#import "ConnectionHandler.h"
#import "UserProfile.h"
#import "ProfileList.h"

@implementation MainMenu

@synthesize lavatar, challenges, messages, bazaar, wq, imageView, nume, puncte, bani, level, mo;

static MainMenu *i;

- (void) logout
{
    
    [[self navigationController] popViewControllerAnimated:NO];
    i=nil;
}

+ (void) show:(UINavigationController *)control
{
    if(i == nil) {
        i = [[MainMenu alloc] init];
    }
    
    [control pushViewController:i animated:NO];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    UIFont *myFont =  [UIFont fontWithName:@"Hand Of Sean" size:20];
    [self.challenges.titleLabel setFont: myFont];
    [self.wq.titleLabel setFont: myFont];
    [self.bazaar.titleLabel setFont: myFont];
    self.navigationController.navigationBarHidden = YES;
    [self.messages.titleLabel setFont: myFont];
    
    //Start parsing json to get personal data on the screen
    NSString *iurl = [ConnectionHandler userInfoAPI];
    NSString *authKey = [@"?user=" stringByAppendingString:[ConnectionHandler username]];
    NSString *ss = [iurl stringByAppendingString:authKey];
    UserProfile *up = [UserProfile getFromDictionary:[ConnectionHandler getJSONURL:ss]];
    if(up == nil) {
        [self logout];
        UIAlertView *view = [[UIAlertView alloc] initWithTitle:@"Invalid username/password!" message:@"Please try again" delegate:self cancelButtonTitle:@"Back" otherButtonTitles: nil];
        [view show];
        [view release];
        return;
    }
    [[ResourceDownloader getInstance] handleImage:lavatar fromURL:up.avatar];    
    self.nume.text = up.lastName;
    self.level.text = up.levelTitle;
    self.puncte.text = [NSString stringWithFormat:@"%@",up.points];
    self.bani.text = [NSString stringWithFormat:@"%@",up.gold];
}

- (void) logoTouched:(UIButton *)sender
{
    [self logout];
}

- (void) avatarTouched: (UIButton *) sender
{
    [self.navigationController pushViewController:[[ProfileList alloc] init] animated:YES];
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
