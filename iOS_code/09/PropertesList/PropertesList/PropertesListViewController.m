//
//  PropertesListViewController.m
//  PropertesList
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PropertesListViewController.h"

@implementation PropertesListViewController


@synthesize studentId;
@synthesize studentName;
@synthesize studentClass;

-(IBAction) save {
	
	NSArray * myPaths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
	NSString * myDocPath = [myPaths objectAtIndex:0];
	NSString *filename = [myDocPath 
						  stringByAppendingPathComponent:@"properties.plist"];
	
	NSMutableArray *data = [[NSMutableArray alloc]init];
	[data addObject:studentId.text];
	[data addObject:studentName.text];
	[data addObject:studentClass.text];
	[data writeToFile:filename atomically:YES];
    
	[data release];
	
}

-(IBAction) load {
	NSArray * myPaths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
	NSString * myDocPath = [myPaths objectAtIndex:0];
	NSString *filename = [myDocPath 
						  stringByAppendingPathComponent:@"properties.plist"];
	
	if ([[NSFileManager defaultManager] fileExistsAtPath:filename]) {
		NSArray *data = [[NSArray alloc] initWithContentsOfFile:filename];
		studentId.text = [data objectAtIndex:0];
		studentName.text = [data objectAtIndex:1];
		studentClass.text = [data objectAtIndex:2];	
		[data release];
	}
}

-(IBAction)textFieldDoneEditing:(id)sender {
	[sender resignFirstResponder];	
}


- (void)viewDidUnload {
	self.studentId = nil;
	self.studentName = nil;
	self.studentClass = nil;
}


- (void)dealloc {
	[studentId release];
	[studentName release];
	[studentClass release];
    [super dealloc];
}

@end
