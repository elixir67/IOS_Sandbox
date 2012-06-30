//
//  Hello_WorldViewController.m
//  Hello World
//
//  Created by tony on 10-8-28.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "Hello_WorldViewController.h"

@implementation Hello_WorldViewController

@synthesize txtField;

-(IBAction)onClickButton:(id)sender {
	
	//txtField.text = @"Hello World.";
	NSString *str = [[NSString alloc] initWithFormat:@"Hello. %@", txtField.text];
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello!" 
										message:str delegate:self 
										cancelButtonTitle:@"Done" 
										otherButtonTitles:nil];
	[alert show];
	[alert release];
	[str release];
	
}

-(IBAction)textFieldDoneEditing:(id)sender {
	[sender resignFirstResponder];	
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
	self.txtField = nil;
}


- (void)dealloc {
	[txtField dealloc];
    [super dealloc];
}

@end
