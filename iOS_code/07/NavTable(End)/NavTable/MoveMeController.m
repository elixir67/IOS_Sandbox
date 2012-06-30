//
//  MoveMeController.m
//  NavTable
//
//  Created by tony on 10-9-13.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MoveMeController.h"


@implementation MoveMeController

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
		NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:
							 @"Eeny", @"Meeny", @"Miney", @"Moe", @"Catch", @"A", 
							 @"Tiger", @"By", @"The", @"Toe", nil];
		self.listData = array;
		[array release];   
	}
	
	UIBarButtonItem *moveButton = [[UIBarButtonItem alloc] 
								   initWithTitle:@"Move" 
								   style:UIBarButtonItemStyleBordered 
								   target:self 
								   action:@selector(toggleMove)];
	self.navigationItem.rightBarButtonItem = moveButton;
	[moveButton release];
	[super viewDidLoad];
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
- (UITableViewCell *)tableView:(UITableView *)tableView 
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
									   reuseIdentifier:CellIdentifier] autorelease];
		//cell.showsReorderControl = YES;
    }
    NSInteger row = [indexPath row];
	cell.textLabel.text = [listData objectAtIndex:row];
    
    return cell;
}


// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView 
	  moveRowAtIndexPath:(NSIndexPath *)fromIndexPath 
	  toIndexPath:(NSIndexPath *)toIndexPath {
	
	NSInteger fromRow = [fromIndexPath row];
	NSInteger toRow = [toIndexPath row];
	
	id object = [listData objectAtIndex:fromRow];//[[listData objectAtIndex:fromRow] retain];
	[listData removeObjectAtIndex:fromRow];
	[listData insertObject:object atIndex:toRow];
	
    //[object release];
	
}


// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}

#pragma mark -
#pragma mark Table view delegate

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView 
		   editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
	return UITableViewCellEditingStyleNone;
}

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    self.listData = nil;
}


- (void)dealloc {
	[listData release];
    [super dealloc];
}


@end

