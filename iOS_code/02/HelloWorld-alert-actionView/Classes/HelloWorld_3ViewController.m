//
//  HelloWorld_3ViewController.m
//  HelloWorld-3
//
//  Created by tony on 11-4-20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorld_3ViewController.h"

@implementation HelloWorld_3ViewController

@synthesize txtName;

-(IBAction)textFieldDoneEditing:(id)sender {
	
	[sender resignFirstResponder];
}

-(IBAction)backgroundTap:(id)sender {
	[txtName resignFirstResponder];
}

-(IBAction)testAlert {
	
//	NSString *str = [[NSString alloc] initWithFormat:@"Hello, %@",txtName.text];
//	
//	UIAlertView *alert = [[UIAlertView alloc] 
//						  initWithTitle:@"提示" message:str 
//						  delegate:self 
//						  cancelButtonTitle:@"Ok" 
//						  otherButtonTitles:nil];
    
    NSString *str = [[NSString alloc] initWithFormat:@"Hello, %@", txtName.text];
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Prompt" message:str delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	
	[str release];
	
	[alert show];
	[alert release];

}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
	NSLog(@"%@",@"Ok" );
}

-(IBAction)testActionSheet {
	
	NSString *str = [[NSString alloc] initWithFormat:@"Hello, %@",txtName.text];
	
	
	UIActionSheet *action = [[UIActionSheet alloc] initWithTitle:@"提示" 
														delegate:self 
											   cancelButtonTitle:@"取消" 
										  destructiveButtonTitle:@"确定" 
											   otherButtonTitles:nil];
	[str release];
	[action showInView:self.view];
	[action release];

}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
	
	if (buttonIndex == [actionSheet destructiveButtonIndex]) {
		NSLog(@"%@",@"确定" );
	} else if (buttonIndex == [actionSheet cancelButtonIndex]) {
		NSLog(@"%@",@"取消" );
	}
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
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
	self.txtName = nil;
}


- (void)dealloc {
	[txtName  release];
    [super dealloc];
}

@end
