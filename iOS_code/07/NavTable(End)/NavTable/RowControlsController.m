//
//  RowControlsController.m
//  NavTable
//
//  Created by tony on 10-9-13.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RowControlsController.h"


@implementation RowControlsController

@synthesize listData;

-(IBAction)buttonTapped:(id)sender {
	UIButton *senderButton = (UIButton *)sender;
	UITableViewCell *buttonCell = (UITableViewCell *)[senderButton superview];
	
	NSInteger buttonRow = [[self.tableView indexPathForCell:buttonCell] row];
	NSString *rowTitle = [listData objectAtIndex:buttonRow];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"点击Button" 
										message:[NSString stringWithFormat:@"你点击的Button是 %@",rowTitle]
										delegate:self 
										cancelButtonTitle:@"Ok" 
										otherButtonTitles:nil];
	[alert show];
	[alert release];
}

- (void)viewDidLoad {
	NSArray *array = [[NSArray alloc] initWithObjects:@"R2-D2",
                      @"C3PO", @"Tik-Tok", @"Robby", @"Rosie", @"Uniblab",
                      @"Bender", @"Marvin", @"Lt. Commander Data", 
                      @"Evil Brother Lore", @"Optimus Prime", @"Tobor", @"HAL", 
                      @"Orgasmatron", nil];
    self.listData = array;
    [array release];
}


- (void)viewDidUnload {
	self.listData = nil;
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listData count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
									   reuseIdentifier:CellIdentifier] autorelease];
		
		UIImage *buttonUpImage = [UIImage imageNamed:@"button_up.png"];
		UIImage *buttonDownImage = [UIImage imageNamed:@"button_down.png"];
		
		UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
		button.frame = CGRectMake(0.0f, 0.0f, buttonUpImage.size.width, buttonUpImage.size.height);
		[button setBackgroundImage:buttonUpImage forState:UIControlStateNormal];
		[button setBackgroundImage:buttonDownImage forState:UIControlStateHighlighted];
		[button setTitle:@"Tap" forState:UIControlStateNormal];
		[button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
		
		cell.accessoryView = button;
    }

	NSInteger row = [indexPath row];
	NSString *rowTitle = [listData objectAtIndex:row];
	cell.textLabel.text = rowTitle;
	
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSInteger buttonRow = [indexPath row];
	NSString *rowTitle = [listData objectAtIndex:buttonRow];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"点击Row" 
										message:[NSString stringWithFormat:@"你点击的Row是 %@",rowTitle]
										delegate:self 
									    cancelButtonTitle:@"Ok" 
										otherButtonTitles:nil];
	[alert show];
	[alert release];
	
}

- (void)dealloc {
	[listData release];
    [super dealloc];
}


@end

