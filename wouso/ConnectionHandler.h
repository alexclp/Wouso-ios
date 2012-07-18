//
//  ConnectionHandler.h
//  wouso
//
//  Created by student6 on 7/13/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConnectionHandler : NSObject

+ (void) setUsername: (NSString *) newUsername;
+ (void) setPassword: (NSString *) newPassword;
+ (NSString *) username;
+ (NSString *) password;
+ (NSString *) baseAPI;
+ (NSString *) userInfoAPI;
+ (void) attemptLogin: (NSString *)username withPassword: (NSString *)password andNav: (UINavigationController *) nav;

+ (NSData *) getURL: (NSString *) urls;

+ (NSDictionary *) getJSONURL: (NSString *) urls;


@end
