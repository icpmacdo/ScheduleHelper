//
//  SecondViewController.m
//  DualViewApplication
//
//  Created by Seb L on 2016-02-23.
//  Copyright © 2016 Algonquin College. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *eventTitle;
@property (weak, nonatomic) IBOutlet UITextView *eventDescription;
@property (weak, nonatomic) IBOutlet UIDatePicker *eventDate;

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (IBAction)addButton:(id)sender {
    if(![_eventTitle.text  isEqual: @""])
    {
    _myEvent = [[Event alloc]init];
    _myEvent.eventTitle = _eventTitle.text;
    _myEvent.eventDescription = _eventDescription.text;
    _myEvent.eventDate = _eventDate.date;
    
    
    [self.delegate secondViewControllerDidFinish:self];
    }
}

- (IBAction)done:(id)sender
{
    [self.delegate secondViewControllerDidFinish:self];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return true;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return YES;
    }
    
    return YES;
}


@end
