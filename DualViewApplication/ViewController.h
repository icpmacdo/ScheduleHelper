//
//  ViewController.h
//  DualViewApplication
//
//  Created by Seb L on 2016-02-23.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "Schedule.h"
@interface ViewController : UIViewController <SecondViewControllerDelegate>



@property Schedule* mySchedule;

@end

