//
//  ConnectionHandler.m
//  wouso
//
//  Created by student6 on 7/13/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ConnectionHandler.h"
#import "Reachability.h"
#import "ASIHTTPRequest.h"
#import "MainMenu.h"
#import "SBJson.h"


@implementation ConnectionHandler

static NSString *username, *password;

+ (NSString *) username { return username; }
+ (void) setUsername: (NSString *) newUsername { username = [newUsername copy]; }
+ (NSString *) password { return password; }
+ (void) setPassword: (NSString *) newPassword { password = [newPassword copy]; }

+ (NSString *)baseURL
{
    return @"wouso-next.rosedu.org";
}

+ (NSString *) baseAPI
{
    return [@"http://" stringByAppendingString: [[self baseURL] stringByAppendingString:@"/api"]];
}

+ (NSString *)userInfoAPI
{
    return [[self baseAPI] stringByAppendingString:@"/info"];
}

+ (NSData *) getURL: (NSString *) urls
{
    NSURL *url = [NSURL URLWithString:urls];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL: url];
    [request startSynchronous];
    return [request responseData];
}

+ (NSDictionary *) getJSONURL: (NSString *) urls
{
    NSData *dt = [self getURL:urls];
    if(dt == nil)
        return nil;
    SBJsonParser *parser = [[SBJsonParser alloc] init];
    return [parser objectWithData:dt];
}

+ (void) attemptLogin: (NSString *)username withPassword: (NSString *)password andNav: (UINavigationController *) controller
{
    self.username = username;
    self.password = password;
    Reachability *rec = [Reachability reachabilityWithHostName: [ConnectionHandler baseURL]];
    NetworkStatus status = [rec currentReachabilityStatus];
    if(status == NotReachable) {
        UIAlertView *view = [[UIAlertView alloc] initWithTitle:@"Could not connect to API" message:@"Please check your internet!" delegate:self cancelButtonTitle:@"Back" otherButtonTitles: nil];
        [view show];
        [view release];
    } else {
        //TODO waiting on web api for auth :)
        [MainMenu show: controller];
        
    }   
    
}

- (id)init
{
    return nil;
}

@end
