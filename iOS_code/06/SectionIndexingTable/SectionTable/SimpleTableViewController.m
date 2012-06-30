//
//  SimpleTableViewController.m
//  SectionTable
//
//  Created by GUAN TONY on 12-2-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SimpleTableViewController.h"

@implementation SimpleTableViewController

@synthesize teams,teamsname;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    [teamsname release];
    [teams release];
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSBundle *bundle = [NSBundle mainBundle];
	NSString *filePath = [bundle pathForResource:@"足球队dictionary"
                                          ofType:@"plist"];
	NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:filePath];
	self.teams = dict;
	[dict release];	
	self.teamsname = [[teams allKeys] sortedArrayUsingSelector:@selector(compare:)];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.teamsname = nil;
    self.teams = nil;
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

#pragma mark --UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *name = [teamsname objectAtIndex:section];
	NSArray *team = [teams objectForKey:name];
	return [team count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return [teamsname count];	
}

- (NSString *)tableView:(UITableView *)tableView 
titleForHeaderInSection:(NSInteger)section {
	NSString *name = [teamsname objectAtIndex:section];
	return name;
}


- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger section = [indexPath section];
	NSUInteger row = [indexPath row];
	NSString *name= [teamsname objectAtIndex:section];
	NSArray *team = [teams objectForKey:name];
	
	static NSString *CellIdentifier = @"CellIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:CellIdentifier] autorelease];
	}
    
	cell.textLabel.text = [team objectAtIndex:row];
	return cell;

}

#pragma mark --UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSUInteger section = [indexPath section];
	NSUInteger row = [indexPath row];
	NSString *name = [teamsname objectAtIndex:section];
	NSArray *team = [teams objectForKey:name];	
	NSString *selectedteam = [team objectAtIndex:row];
	
	NSString *message = [[NSString alloc] initWithFormat:@"你选择了%@队。", 
						 selectedteam];
	UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"行选择" 
                                                   message:message 
                                                  delegate:self 
                                         cancelButtonTitle:@"Ok" 
                                         otherButtonTitles:nil];
	[message release];
	[alert show];
	[alert release];
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(NSArray *) sectionIndexTitlesForTableView: (UITableView *) tableView {
    return teamsname;
}


@end
