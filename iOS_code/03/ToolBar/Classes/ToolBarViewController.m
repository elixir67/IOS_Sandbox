//
//  ToolBarViewController.m
//  ToolBar
//
//  Created by tony on 10-9-2.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "ToolBarViewController.h"

@implementation ToolBarViewController

@synthesize myActivityView;

-(IBAction)onClickStartButton: (id)sender {
	if ([myActivityView isAnimating]) {
		[myActivityView stopAnimating];			
	} else {
		[myActivityView startAnimating];
	}
}

-(IBAction)onClickOpenButton: (id)sender {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示信息" 
									message:@"您点击了打开按钮" delegate:self 
									cancelButtonTitle:@"Done" 
									otherButtonTitles:nil];
	[alert show];
	[alert release];
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


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


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
}


- (void)dealloc {
	[myActivityView release];
    [super dealloc];
}

@end
