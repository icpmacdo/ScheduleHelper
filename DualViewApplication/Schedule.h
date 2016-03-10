//
//  Schedule.h
//  Assignment2
//
//  Created by Ian MacDonald on 2016-02-28.
//  Copyright © 2016 Sebastian Lenczewski. All rights reserved.
//

#ifndef Schedule_h
#define Schedule_h

#import <Foundation/Foundation.h>
#import "Event.h"

@interface Schedule : NSObject


@property int idIndex;

@property (nonatomic, strong) NSMutableArray * scheduledEvents;




-(NSString*)getAllEventText;


/*
-(void)addNewEventWithTitle :  *eventTitle (NSString) : (NSDate)* eventDate : (NSString)* eventDescription;

*/

-(void)addNewEvent:(Event*)newEvent;


@end
#endif /* Schedule_h */
