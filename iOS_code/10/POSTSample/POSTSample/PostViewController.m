//
//  PostViewController.m
//  POSTSample
//
//  Created by GUAN TONY on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PostViewController.h"

@implementation PostViewController


@synthesize txtUserName;
@synthesize activityIndicator;
@synthesize txtPwd;

-(IBAction)login:(id)sender {
    
	NSString *post = [NSString 
					  stringWithFormat:@"name=%@&password=%@",
					  txtUserName.text, txtPwd.text];
	
	NSData *postData = [post dataUsingEncoding:NSUTF8StringEncoding];
	
	NSURL *webServiceURL = [NSURL URLWithString:@"http://www.51work6.com/training/login.php"];
	NSMutableURLRequest	 *request = [NSMutableURLRequest requestWithURL:webServiceURL];
	[request setHTTPMethod:@"POST"];
	[request setHTTPBody:postData];
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
	if (!connection) {
		NSLog(@"Failed to submit request");
	} else {
		NSLog(@"Request submitted");
	}
	[connection release];
	
	[activityIndicator startAnimating];
	
}

-(IBAction)textFieldDoneEditing:(id)sender {
	[sender resignFirstResponder];	
}


#pragma mark --
#pragma mark NSURLConnection回调方法
- (void)connection:(NSURLConnection *)theConnection didReceiveData:(NSData *)data
{
	resultString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (void)connection:(NSURLConnection *)theConnection didFailWithError:(NSError *)error
{
	UIAlertView *errorAlert = [[UIAlertView alloc]
							   initWithTitle: [error localizedDescription]
							   message: [error localizedFailureReason]
							   delegate:nil
							   cancelButtonTitle:@"OK"
							   otherButtonTitles:nil];
	[errorAlert show];
	[errorAlert release];
	[activityIndicator stopAnimating];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)theConnection
{
	NSString *message;
	if ([resultString isEqual:@"1"]) {
		message = [[NSString alloc] initWithFormat:@"%@", @"登录成功！"];
	} else {
		message = [[NSString alloc] initWithFormat:@"%@", @"登录失败！"];
	}
	
	UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle: @"登录结果"
                          message: message
                          delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil];
	[alert show];
	[alert release];
	[resultString release];
	
	[activityIndicator stopAnimating];
}

- (void)dealloc {
    [super dealloc];
	[txtUserName dealloc];
	[activityIndicator dealloc];
	[txtPwd dealloc];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	txtUserName = nil;
	activityIndicator = nil;
	txtPwd = nil;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
