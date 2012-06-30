#import "SegmentViewController.h"

@implementation SegmentViewController

- (IBAction) handleSegment: (id) sender {
	UISegmentedControl * myseg = (UISegmentedControl *) sender;
	if(myseg.selectedSegmentIndex == 0) {
		NSLog(@"selected zero index...");
	}
	else if(myseg.selectedSegmentIndex == 1) {
		NSLog(@"selected one index...");
	}
	else {
		NSLog(@"selected two index...");
	}
}

- (void)dealloc {
	[super dealloc];
}

@end
