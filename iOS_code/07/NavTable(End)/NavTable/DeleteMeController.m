//
//  DeleteMeController.m
//  NavTable
//
//  Created by tony on 10-9-13.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DeleteMeController.h"


@implementation DeleteMeController

@synthesize listData;

-(IBAction)toggleMove {
	
	[self.tableView setEditing:!self.tableView.editing animated:YES];
	
	if (self.tableView.editing) {
		[self.navigationItem.rightBarButtonItem setTitle:@"Done"];
	} else {
		[self.navigationItem.rightBarButtonItem setTitle:@"Move"];
	}
	
}

#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
	
	if (listData == nil) {
		NSString *path = [[NSBundle mainBundle] pathForResource:@"computers" ofType:@"plist"];
		NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];
		
		self.listData = array;
		[array release];
	}
	
	UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithTitle:@"Delete" 
												style:UIBarButtonItemStyleBordered 
												target:self 
												action:@selector(toggleMove)];
	self.navigationItem.rightBarButtonItem = editButton;
	[editButton release];
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [listData count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
									   reuseIdentifier:CellIdentifier] autorelease];
    }
    
    NSInteger row = [indexPath row];
	cell.textLabel.text = [listData objectAtIndex:row];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
		NSInteger row = [indexPath row];
		[self.listData removeObjectAtIndex:row];
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
    }
	
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	self.listData = nil;
}


- (void)dealloc {
	[listData release];
    [super dealloc];
}


@end

