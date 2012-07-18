//
//  wousoViewController.m
//  wouso
//
//  Created by student6 on 7/13/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "wousoViewController.h"
#import "ConnectionHandler.h"

@implementation wousoViewController

@synthesize imageView, login, pleaseLogin, user, pass;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    UIFont *myFont =  [UIFont fontWithName:@"Hand Of Sean" size:20];
    [self.login.titleLabel setFont: myFont];
    UIImage *pressed = [UIImage imageNamed:@"button_bg_pressed.png"];
    self.navigationController.navigationBarHidden = YES;
    [self.login setBackgroundImage:pressed forState:UIControlStateHighlighted];
    [self.pleaseLogin setFont:myFont];
    
}

- (IBAction) onButtonClicked:(UIButton *)sender
{
    [self.view endEditing:YES];
    [ConnectionHandler attemptLogin:user.text withPassword:pass.text andNav: self.navigationController];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
