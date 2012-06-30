//
//  DisclosureDetailController.m
//  NavTable
//
//  Created by tony on 10-9-12.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DisclosureDetailController.h"


@implementation DisclosureDetailController

@synthesize message;
@synthesize label;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewWillAppear:(BOOL)animated {
    label.text = message;
	[super viewWillAppear:animated];
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
	self.message = nil;
	self.label = nil;
}


- (void)dealloc {
	[message release];
	[label release];
    [super dealloc];
}


@end
