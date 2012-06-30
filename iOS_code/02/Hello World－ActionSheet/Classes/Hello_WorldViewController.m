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
	UIActionSheet *actionSheet = [[UIActionSheet alloc] 
								  initWithTitle:@"您确认清除文本框中的数据吗？" 
								  delegate:self 
								  cancelButtonTitle:@"取消" 
								  destructiveButtonTitle:@"确定" 
								  otherButtonTitles:nil];

	
	[actionSheet showInView:self.view];
	[actionSheet release];	
}

-(void)actionSheet:(UIActionSheet *)actionSheet 
			didDismissWithButtonIndex:(NSInteger)buttonIndex {
	if (buttonIndex == [actionSheet destructiveButtonIndex]) {
		txtField.text = @"触摸确定按钮";	
	} else if (buttonIndex == [actionSheet cancelButtonIndex]){
        txtField.text = @"触摸取消按钮";	
    }
}


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
