//
//  EncodingViewController.m
//  Encoding
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "EncodingViewController.h"

@implementation EncodingViewController


@synthesize studentId;
@synthesize studentName;
@synthesize studentClass;

-(IBAction) save {
	
	NSArray * myPaths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
	NSString * myDocPath = [myPaths objectAtIndex:0];
	NSString *filename = [myDocPath 
						  stringByAppendingPathComponent:@"students.archive"];
    
	NSMutableData * theData = [NSMutableData data];
	
	NSKeyedArchiver * archiver = [[NSKeyedArchiver alloc]
								  initForWritingWithMutableData:theData]; 
	Student *student = [[Student alloc] init];
	
	student.studentId =  studentId.text;
	student.studentName =  studentName.text;
	student.studentClass =  studentClass.text;
	
	[archiver encodeObject:student forKey:@"mystudent"];
	[archiver finishEncoding]; 
	[theData writeToFile:filename atomically:YES];
	
	[archiver release];	
	[student release];
    
}

-(IBAction) load {
    
	NSArray * myPaths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
	NSString * myDocPath = [myPaths objectAtIndex:0];
	NSString *filename = [myDocPath 
						  stringByAppendingPathComponent:@"students.archive"];
	NSData * theData =[NSData dataWithContentsOfFile:filename];
	
	if([theData length] > 0) {
		NSKeyedUnarchiver * archiver = [[NSKeyedUnarchiver alloc]
										initForReadingWithData:theData]; 
		Student *student = [archiver decodeObjectForKey:@"mystudent"];
		[archiver finishDecoding];
		[archiver release];
		
		studentId.text = student.studentId;
		studentName.text = student.studentName;
		studentClass.text = student.studentClass;
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
