//
//  MainMenu.h
//  wouso
//
//  Created by student6 on 7/16/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainMenu : UIViewController
{
    IBOutlet UIButton *challenges, *messages, *bazaar, *wq, *mo, *lavatar;
    IBOutlet UIImageView *imageView;
    IBOutlet UILabel *nume, *puncte, *bani, *level;
}

@property (retain) IBOutlet UIButton *challenges, *messages, *bazaar, *wq, *mo, *lavatar;
@property (retain) IBOutlet UIImageView *imageView;
@property (retain) IBOutlet UILabel *nume, *puncte, *bani, *level;

-(void) logout;
+(void) show: (UINavigationController *) control;



-(IBAction)logoTouched: (UIButton *) sender;
-(IBAction)avatarTouched:(UIButton *) sender;


@end
