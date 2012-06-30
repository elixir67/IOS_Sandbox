//
//  ProgressViewViewController.m
//  ProgressView
//
//  Created by Abel on 9/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ProgressViewViewController.h"

@implementation ProgressViewViewController

@synthesize  Progress;
@synthesize timer;

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(IBAction)start{
	Progress.progress = 0.0;
	timer = [NSTimer 
			 scheduledTimerWithTimeInterval:1.0 
			 target:self 
			 selector:@selector(update) 
			 userInfo:nil repeats:YES];
}

-(void)update{
	Progress.progress = Progress.progress + 0.1;
	if (Progress.progress == 1.0) {
		[timer invalidate]; 
		UIAlertView *alert = [[UIAlertView alloc] 
							  initWithTitle:@"任务通知" 
							  message:@"硬盘格式化完成!" 
							  delegate:self 
							  cancelButtonTitle:@"OK" 
							  otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
}
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
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
	self.Progress = nil;
}


- (void)dealloc {
	[Progress release];
    [super dealloc];
}

@end
