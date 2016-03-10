//
//  ViewController.m
//  DualViewApplication
//
//  Created by Seb L on 2016-02-23.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textOut;

@end

@implementation ViewController


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _mySchedule = [[Schedule alloc]init];
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //Pointer to Scheudle Object
    
    //Schedule *mySchedule = [[Schedule alloc] init];

    //Loop through object to fill text view
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Second View

- (void)secondViewControllerDidFinish:(SecondViewController *)controller
{
    if(controller.myEvent != nil)
    {
        [self.mySchedule addNewEvent:controller.myEvent];
        _textOut.text = [_mySchedule getAllEventText];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showSecond"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
