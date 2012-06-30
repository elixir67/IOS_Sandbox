#import "ButtonsBackgroundViewController.h"

@implementation ButtonsBackgroundViewController

@synthesize clearButton;
@synthesize smallButton;

- (IBAction) disableBut: (id) sender {
	if(clearButton.enabled == YES) {
		clearButton.enabled = NO;
		smallButton.enabled = NO;
		[((UIButton *) sender) setTitle:@"Enable" forState:UIControlStateNormal];
	}
	else {
		clearButton.enabled = YES;
		smallButton.enabled = YES;
		[((UIButton *) sender) setTitle:@"Disable" forState:UIControlStateNormal];
	}
}

- (void)dealloc {
	[clearButton release];
	[smallButton release];
	[super dealloc];
}

@end
