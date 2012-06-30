//
//  NavTableMasterViewController.m
//  NavTable
//
//  Created by GUAN TONY on 12-2-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NavTableMasterViewController.h"

#import "SecondLevelViewController.h"
#import "DisclosureButtonController.h"
#import "CheckListController.h"
#import "RowControlsController.h"
#import "MoveMeController.h"
#import "DeleteMeController.h"

@implementation NavTableMasterViewController

@synthesize controllers;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Master", @"Master");
    }
    return self;
}
							
- (void)dealloc
{
    [controllers release];
    [super dealloc];
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
	
    self.title = @"First Level";
	NSMutableArray *array = [[NSMutableArray alloc] init];
	
	//增加细节扩展按钮控制器
	DisclosureButtonController *disclosureButtonController = [[DisclosureButtonController alloc] 
                                                              initWithStyle:UITableViewStylePlain];
	
	disclosureButtonController.title = @"Disclosure Buttons";
	disclosureButtonController.rowImage = [UIImage imageNamed:@"disclosureButtonControllerIcon.png"];
	[array addObject:disclosureButtonController];
	[disclosureButtonController release];
	
	//增加check控制器
	CheckListController *checkListController = [[CheckListController alloc] 
                                                initWithStyle:UITableViewStylePlain];
	
	checkListController.title = @"Check One";
	checkListController.rowImage = [UIImage imageNamed:@"checkmarkControllerIcon.png"];
	[array addObject:checkListController];
	[checkListController release];
	
	//增加Row控制器
	RowControlsController *rowControlsController = [[RowControlsController alloc] 
                                                    initWithStyle:UITableViewStylePlain];
	
	rowControlsController.title = @"Row Controls";
	rowControlsController.rowImage = [UIImage imageNamed:@"rowControlsIcon.png"];
	[array addObject:rowControlsController];
	[rowControlsController release];
	
	//增加Move控制器
	MoveMeController *moveMeController = [[MoveMeController alloc] 
                                          initWithStyle:UITableViewStylePlain];
	
	moveMeController.title = @"Move Me";
	moveMeController.rowImage = [UIImage imageNamed:@"moveMeIcon.png"];
	[array addObject:moveMeController];
	[moveMeController release];
	
	//增加Delete控制器
	DeleteMeController *deleteMeController = [[DeleteMeController alloc] 
                                              initWithStyle:UITableViewStylePlain];
	
	deleteMeController.title = @"Delete Me";
	deleteMeController.rowImage = [UIImage imageNamed:@"deleteMeIcon.png"];
	[array addObject:deleteMeController];
	[deleteMeController release];
	
	self.controllers = array;
	[array release];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.controllers count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
									   reuseIdentifier:CellIdentifier] autorelease];
    }
    
	NSInteger row = [indexPath row];
	SecondLevelViewController *controller = [self.controllers objectAtIndex:row];

	cell.textLabel.text = controller.title;
	cell.imageView.image = controller.rowImage;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSInteger row = [indexPath row];
	SecondLevelViewController *nextController = [self.controllers objectAtIndex:row];
	[self.navigationController pushViewController:nextController animated:YES];
}

@end
