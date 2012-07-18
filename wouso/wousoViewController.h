//
//  wousoViewController.h
//  wouso
//
//  Created by student6 on 7/13/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface wousoViewController : UIViewController
{
    IBOutlet UIImageView *imageView;
    IBOutlet UIButton *login;
    IBOutlet UILabel *pleaseLogin;
    IBOutlet UITextField *user, *pass;
}

@property (retain) IBOutlet UIImageView *imageView;

@property (retain) IBOutlet UIButton *login;

@property (retain) IBOutlet UILabel *pleaseLogin;

@property (retain) IBOutlet UITextField *user, *pass;

- (IBAction) onButtonClicked:(UIButton *)sender;

@end
