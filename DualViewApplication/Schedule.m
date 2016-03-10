//
//  Schedule.m
//  Assignment2
//
//  Created by Ian MacDonald on 2016-02-28.
//  Copyright © 2016 Sebastian Lenczewski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Schedule.h"



@implementation Schedule

- (instancetype)init
{
    self = [super init];
    if (self) {
        _idIndex = 0;
        _scheduledEvents = [[NSMutableArray alloc]init];
    }
    return self;
}
/*
 -(void)addNewEventWithTitle : (NSString *) eventTitle bringEventDescription:(NSString *)eventDescription bringEventDate:(NSDate *) eventDate{
    
    [ self.scheduledEvents: eventTitle, eventDescription, eventDate];
    
}
*/

-(NSString*)getAllEventText{
    
    NSString *strReturnAllEvents = [_scheduledEvents componentsJoinedByString:@"\n "];

    for (Event* e in self.scheduledEvents)
    {
        strReturnAllEvents = [strReturnAllEvents stringByAppendingString:[e getEventText]];
        
        //NSMutableString *strReturnAllEvents = [strReturnAllEvents stringByAppendingString:@" "];

        
    }
    
    return strReturnAllEvents;
}


-(void)addNewEvent:(Event*)newEvent
{
    _idIndex += 1;
    [newEvent setEventId:_idIndex];
    [self.scheduledEvents addObject: newEvent];
}


@end