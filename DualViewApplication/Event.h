//
//  Event.h
//  Assignment2
//
//  Created by Ian MacDonald on 2016-02-10.
//  Copyright © 2016 Sebastian Lenczewski. All rights reserved.
//

#ifndef Event_h
#define Event_h

#import <Foundation/Foundation.h>

@interface Event : NSObject


@property (nonatomic, strong) NSString * eventTitle;

@property (nonatomic, strong) NSString * eventDescription;

@property int  eventId;

@property (nonatomic, strong) NSDate * eventDate;



-(void)bringEventTitle:(NSString *) eventTitle bringEventDescription:(NSString *)eventDescription bringEventId:(int) eventId bringEventDate:(NSDate *) eventDate;

//-(void)logEvent;

-(NSString*)getEventText;

@end

#endif /* Event_h */
