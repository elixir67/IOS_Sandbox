//
//  DatePickerViewController.m
//  MyPicker
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DatePickerViewController.h"

@implementation DatePickerViewController

@synthesize datePicker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"日期";
        self.tabBarItem.image = [UIImage imageNamed:@"clockicon"];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
	NSDate *now = [NSDate date];
	[datePicker setDate:now animated:YES];
}

- (void)viewDidUnload {
    [super viewDidUnload];
	self.datePicker = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [datePicker release];
    [super dealloc];
}

-(IBAction)onClickButton:(id)sender {
	NSDate *selected = [datePicker date];
	NSString *message = [[NSString alloc] initWithFormat:@"你选择的日期: %@", selected];
	UIAlertView *alert = [[UIAlertView alloc] 
						  initWithTitle:@"选择日期" 
						  message:message delegate:nil 
						  cancelButtonTitle:@"Ok" 
						  otherButtonTitles:nil];
	[alert show];
	[alert release];
	[message release];
}

@end
