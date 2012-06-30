//
//  JsonViewController.m
//  JSONSample
//
//  Created by GUAN TONY on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "JsonViewController.h"

@implementation JsonViewController

@synthesize jsonString;
@synthesize bookList;

- (void)dealloc {
    [jsonString release];
    [bookList release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.bookList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:CellIdentifier] autorelease];
    }
    
    NSInteger row = [indexPath row];
    NSDictionary *dict = [self.bookList objectAtIndex:row];
    
	NSString *bookId = [dict objectForKey:@"bookid"];
    NSString *bookName = [dict objectForKey:@"bookname"];
    
	cell.textLabel.text = bookName;
    cell.detailTextLabel.text = bookId;
    
    return cell;
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSMutableString *jsonStringTemp = [[NSMutableString alloc] initWithCapacity:0];
    self.jsonString = jsonStringTemp;
    [jsonStringTemp release];
    
    NSString *strURL = [NSString stringWithString:@"http://www.51work6.com/training/bookmanager.php"];
	NSURL *url = [NSURL URLWithString:strURL];
	
	NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
	
	NSURLConnection *connection = [[NSURLConnection alloc]
                                   initWithRequest:request    delegate:self];
	
	[connection release];
	[request release];	
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.jsonString = nil;
    self.bookList = nil;
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

#pragma mark- NSURLConnection 回调方法
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    
	NSString *utf8NSString = [[NSString alloc] initWithData:data encoding: NSUTF8StringEncoding];
    [self.jsonString appendString:utf8NSString];
	[utf8NSString release];
    
}


-(void) connection:(NSURLConnection *)connection
  didFailWithError: (NSError *)error {
	UIAlertView *errorAlert = [[UIAlertView alloc]
							   initWithTitle: [error localizedDescription]
							   message: [error localizedFailureReason]
							   delegate:nil
							   cancelButtonTitle:@"OK"
							   otherButtonTitles:nil];
	[errorAlert show];
	[errorAlert release];
}

- (void) connectionDidFinishLoading: (NSURLConnection*) connection {

	//开始解析Json
    id jsonoObj = [self.jsonString JSONValue];
    self.bookList = [jsonoObj objectForKey:@"books"];
    [tableview  reloadData];
}

@end
