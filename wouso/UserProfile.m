//
//  UserProfile.m
//  wouso
//
//  Created by student6 on 7/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "UserProfile.h"

@implementation UserProfile

@synthesize firstName, lastName, avatar, levelID, levelImage, levelName, levelNo, levelTitle, levelPercent, levelPercents, race, group, email, nextLevel, pointsGained, pointsLeft, points, gold;

+ (UserProfile *) getFromDictionary: (NSDictionary *) dic
{
    if(dic == nil)
        return nil;
    UserProfile *pf = [[UserProfile alloc] init];
    pf.firstName = [dic objectForKey:@"first_name"];
    pf.lastName = [dic objectForKey:@"last_name"];
    pf.avatar = [dic objectForKey:@"avatar"];
    pf.levelNo = [dic objectForKey:@"level_no"];
    pf.race = [dic objectForKey:@"race"];
    pf.group = [dic objectForKey:@"group"];
    pf.email = [dic objectForKey:@"email"];
    pf.points = [dic objectForKey:@"points"];
    pf.gold = [dic objectForKey:@"gold"];
    
    NSDictionary *lvd = [dic objectForKey:@"level"];
    pf.levelName = [lvd objectForKey:@"name"];
    pf.levelTitle = [lvd objectForKey:@"title"];
    pf.levelImage = [lvd objectForKey:@"image"];
    pf.levelPercents = [lvd objectForKey:@"percents"];
    pf.levelID = [lvd objectForKey:@"id"];
    
    NSDictionary *lpd = [dic objectForKey:@"level_progress"];
    pf.levelPercent = [lpd objectForKey:@"percent"];
    pf.nextLevel = [lpd objectForKey:@"next_level"];
    pf.pointsGained = [lpd objectForKey:@"points_gained"];
    pf.pointsLeft = [lpd objectForKey:@"points_left"];
    
    return pf;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

@end
