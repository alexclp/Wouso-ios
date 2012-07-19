//
//  UserProfile.h
//  wouso
//
//  Created by student6 on 7/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserProfile : NSObject
{
    NSString *firstName, *lastName, *avatar;
    NSString *levelName, *levelTitle, *levelImage, *levelPercents, *levelID;
    NSNumber *levelNo, *levelPercent, *nextLevel, *pointsGained, *pointsLeft;
    NSString *race, *group, *email;
    NSNumber *points, *gold;
}

+ (UserProfile *) getFromDictionary: (NSDictionary *) dic;

@property (copy) NSString *firstName, *lastName, *avatar, *levelName, *levelTitle, *levelImage, *levelPercents, *levelID, *race, *group, *email;

@property (retain) NSNumber *levelNo, *levelPercent, *nextLevel, *pointsGained, *pointsLeft, *points, *gold;

@end
