//
//  DisclosureButtonController.m
//  NavTable
//
//  Created by tony on 10-9-12.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DisclosureButtonController.h"
#import "SecondLevelViewController.h"

@implementation DisclosureButtonController

@synthesize listData;
@synthesize childController;

- (void)viewDidLoad {
    NSArray *array = [[NSArray alloc] initWithObjects:@"Toy Story",
                      @"A Bug's Life", @"Toy Story 2", @"Monsters, Inc.", 
                      @"Finding Nemo", @"The Incredibles", @"Cars", 
                      @"Ratatouille", @"WALL-E", @"Up", @"Toy Story 3",
                      @"Cars 2", @"The Bear and the Bow", @"Newt", nil];
    self.listData = array;
    [array release];
	
    [super viewDidLoad];
}

- (void)viewDidUnload {
	self.listData = nil;
	self.rowImage = nil;
}


- (void)dealloc {
	[listData release];
	[rowImage release];
    [super dealloc];
}

#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listData count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView 
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
									   reuseIdentifier:CellIdentifier] autorelease];
    }
    
	NSInteger row = [indexPath row];
	NSString *title = [listData objectAtIndex:row];
	cell.textLabel.text =  title;
	//cell.imageView.image = controller.rowImage;
	cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
	
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (childController == nil) {
		childController = [[DisclosureDetailController alloc] 
						   initWithNibName:@"DisclosureDetailController" 
						   bundle:nil];
	}
	//childController.title = @"DisclosureDetail Button Pressed";
	NSInteger row = [indexPath row];
	NSString *selectedMessage = [listData objectAtIndex:row];
	
	NSString *message = [[NSString alloc] initWithFormat:@"你选择了 %@ 按钮。", selectedMessage];
	childController.message = message;
	childController.title = selectedMessage;
	
	[message release];
	
	[self.navigationController pushViewController:childController animated:YES];
}


@end
