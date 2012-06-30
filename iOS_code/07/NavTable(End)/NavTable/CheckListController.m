//
//  CheckListController.m
//  NavTable
//
//  Created by tony on 10-9-13.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CheckListController.h"


@implementation CheckListController

@synthesize listData;
@synthesize lastIndexPath;

- (void)viewDidLoad {
    NSArray *array = [[NSArray alloc] initWithObjects:@"Who Hash",
                      @"Bubba Gump Shrimp Étouffée", @"Who Pudding", @"Scooby Snacks",
                      @"Everlasting Gobstopper", @"Green Eggs and Ham", @"Soylent Green",
                      @"Hard Tack", @"Lembas Bread",  @"Roast Beast", @"Blancmange", nil];
    self.listData = array;
    [array release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
	self.listData = nil;
	self.lastIndexPath = nil;
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
    }
    
	NSInteger row = [indexPath row];
	
	cell.textLabel.text = [listData objectAtIndex:row];
   
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	int newRow = [indexPath row];

	int oldRow = (lastIndexPath != nil) ? [lastIndexPath row] : -1;
	
	if (newRow != oldRow) {
		UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
		newCell.accessoryType = UITableViewCellAccessoryCheckmark;
		
		UITableViewCell *oldCell = [tableView cellForRowAtIndexPath:lastIndexPath];
		oldCell.accessoryType = UITableViewCellAccessoryNone;
		
		self.lastIndexPath = indexPath;
	}
	
}

- (void)dealloc {
	[listData release];
	[lastIndexPath release];
    [super dealloc];
}


@end

