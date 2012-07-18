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
    IBOutlet UIButton *challenges, *messages, *bazaar, *wq;
    IBOutlet UIImageView *imageView, *lavatar;
    IBOutlet UILabel *nume, *puncte, *bani, *level;
}

@property (retain) IBOutlet UIButton *challenges, *messages, *bazaar, *wq;
@property (retain) IBOutlet UIImageView *imageView, *lavatar;
@property (retain) IBOutlet UILabel *nume, *puncte, *bani, *level;

-(void) logout;
+(void) show: (UINavigationController *) control;

@end
