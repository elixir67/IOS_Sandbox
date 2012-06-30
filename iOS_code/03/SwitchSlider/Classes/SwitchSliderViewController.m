//
//  SwitchSliderViewController.m
//  SwitchSlider
//
//  Created by tony on 10-9-1.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "SwitchSliderViewController.h"

@implementation SwitchSliderViewController

@synthesize mySwitch;

- (IBAction) handleSwitch: (id) sender {
	if( [((UISwitch *) sender) isOn] == YES){
		NSLog(@"It's on");
	} else {
		NSLog(@"It's off");
	}
} 

- (IBAction) handleSlider: (id) sender {
	NSLog(@"value: %f", ((UISlider *)sender).value);
	if( [((UISlider *) sender) value] == ((UISlider *) sender) .maximumValue) {
		[mySwitch setOn:YES animated:YES];
	}
}

- (void)dealloc {
	[mySwitch release]; 
	[super dealloc];
} 

@end
