//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SimpleTableViewController.h"

@implementation SimpleTableViewController

@synthesize listImage;
@synthesize listData;

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
	return [listData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
	static NSString *SimpleCellIdentifier = @"SimpleCellIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleCellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:SimpleCellIdentifier] autorelease];
	}
	NSUInteger row = [indexPath row];
	cell.textLabel.text = [listData objectAtIndex:row];
	UIImage *img = [UIImage imageNamed:[listImage objectAtIndex:row]];
	cell.imageView.image = img;
	return cell;
}

- (void)tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSUInteger row = [indexPath row];
	NSString *rowValue = [listData objectAtIndex:row];
	
	NSString *message = [[NSString alloc] initWithFormat:@"你选择了%@队。", rowValue];
	UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"行选择" 
                                                   message:message 
                                                  delegate:self 
                                         cancelButtonTitle:@"Ok" 
                                         otherButtonTitles:nil];
	[alert show];
	[alert release];
	[message release];
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    [listImage release];
    [listData release];
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
	
	NSArray *array = [[NSArray alloc] initWithObjects:@"A1-南非",@"A2-墨西哥",
					  @"B1-阿根廷",@"B2-尼日利亚",@"C1-英格兰",@"C2-美国",
					  @"D1-德国",@"D2-澳大利亚",@"E1-荷兰",@"E2-丹麦",
					  @"G1-巴西",@"G2-朝鲜",@"H1-西班牙",@"H2-瑞士",nil];
	
	NSArray *images = [[NSArray alloc] initWithObjects:@"SouthAfrica.png",@"Mexico.png",
					   @"Argentina.png",@"Nigeria.png",@"England.png",@"USA.png",
					   @"Germany.png",@"Australia.png",@"Holland.png",@"Denmark.png", 
					   @"Brazil.png",@"NorthKorea.png",@"Spain.png",@"Switzerland.png",nil];
	
	self.listData = array;
	self.listImage = images;
	[array release];
	[images release];
	
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.listImage = nil;
    self.listData = nil;
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
