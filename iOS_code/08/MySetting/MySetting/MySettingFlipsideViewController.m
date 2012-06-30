//
//  MySettingFlipsideViewController.m
//  MySetting
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MySettingFlipsideViewController.h"

@implementation MySettingFlipsideViewController

@synthesize delegate;
@synthesize myPSToggleSwitchSpecifier;
@synthesize myPSSliderSpecifier;

- (void)viewDidLoad {
    
	[super viewDidLoad];
}

- (IBAction)done {
	[self.delegate flipsideViewControllerDidFinish:self];	
}

- (void)viewDidUnload {
	self.myPSSliderSpecifier = nil;
	self.myPSToggleSwitchSpecifier = nil;
}


- (void)dealloc {
	[myPSSliderSpecifier release];
	[myPSToggleSwitchSpecifier release];
    [super dealloc];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}



- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	NSString *text  = [[NSString alloc] initWithFormat: @"%f", 
					   [defaults floatForKey:@"slider_preference"]];
	myPSSliderSpecifier.text = text;
	[text release];
	myPSToggleSwitchSpecifier.text = [defaults stringForKey:@"enabled_preference"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
