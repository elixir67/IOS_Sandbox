//
//  MutilViewSwitchViewController.m
//  MutilViewSwitch
//
//  Created by tony on 10-9-2.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MutilViewSwitchViewController.h"

@implementation MutilViewSwitchViewController

@synthesize yellowViewController;
@synthesize blueViewController;

-(IBAction) switchViews:(id)sender {
	
	if (self.yellowViewController.view.superview == nil) {
		if (self.yellowViewController.view == nil) {
			YellowViewController *yellowController = [[YellowViewController alloc] 
												  initWithNibName:@"YellowViewController" bundle:nil];
			self.yellowViewController = yellowController;
			[yellowController release];
		}
		[blueViewController.view removeFromSuperview];
		[self.view insertSubview:yellowViewController.view atIndex:0];
	} else {
		if (self.blueViewController.view == nil) {
			BlueViewController *blueController = [[BlueViewController alloc] 
													  initWithNibName:@"BlueViewController" bundle:nil];
			self.blueViewController = blueController;
			[blueController release];
		}
		[yellowViewController.view removeFromSuperview];
		[self.view insertSubview:blueViewController.view atIndex:0];
	}
	
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	BlueViewController *blueController = [[BlueViewController alloc] 
										  initWithNibName:@"BlueViewController" bundle:nil];
	self.blueViewController = blueController;
	[self.view insertSubview:blueController.view atIndex:0];
	[blueController release];
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.yellowViewController = nil;
	self.blueViewController = nil;
}


- (void)dealloc {
	[yellowViewController release];
	[blueViewController release];
    [super dealloc];
}

@end
