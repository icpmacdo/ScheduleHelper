//
//  SecondViewController.h
//  DualViewApplication
//
//  Created by Seb L on 2016-02-23.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"


@class SecondViewController;

@protocol SecondViewControllerDelegate
- (void)secondViewControllerDidFinish:(SecondViewController *)controller;
@end

@interface SecondViewController : UIViewController

@property (weak, nonatomic) id <SecondViewControllerDelegate> delegate;

@property Event * myEvent;

- (IBAction)done:(id)sender;

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;

@end