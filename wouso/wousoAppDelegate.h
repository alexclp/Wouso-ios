//
//  wousoAppDelegate.h
//  wouso
//
//  Created by student6 on 7/13/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class wousoViewController;

@interface wousoAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet wousoViewController *viewController;

@end
