//
//  Event.m
//  Assignment2
//
//  Created by Ian MacDonald on 2016-02-10.
//  Copyright © 2016 Sebastian Lenczewski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Event.h"


@implementation Event



-(int)timesTen:(int)number{
    NSLog(@"You passed in the value %i", number);
    return number * 10;
}

-(int)addNumber:(int)a toNumber:(int)b {
    return a + b;
}

// print method


-(void)bringEventTitle:(NSString *) eventTitle bringEventDescription:(NSString *)eventDescription bringEventId:(int) eventId bringEventDate:(NSDate *) eventDate{
    _eventTitle = eventTitle;
    _eventDate = eventDate;
    _eventId = eventId;
    _eventDescription = eventDescription;

    
    
}


-(void)logEvent
{
    NSLog(@"\nThe event title is: %@\nThe event description is: %@\nThe event id: %i\nThe date: %@",_eventTitle,_eventDescription, _eventId, _eventDate);
    
}


 -(NSString*) getEventText {

     
     NSString* strEventId = [NSString stringWithFormat:@"%i", _eventId];
     
     NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
     [formatter setFormatterBehavior:NSDateFormatterBehavior10_4];
     [formatter setDateStyle:NSDateFormatterShortStyle];
     [formatter setTimeStyle:NSDateFormatterNoStyle];
     NSString *strEventDate = [formatter stringFromDate:_eventDate];
     
     NSString* stringEverntInfoReturn = [NSString stringWithFormat:@"\nThe event title is: %@\nThe event description is: %@\nThe event id: %@\nThe date: %@",_eventTitle ,_eventDescription, strEventId, strEventDate];

     return stringEverntInfoReturn;

 }




@end






