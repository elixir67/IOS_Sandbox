//
//  StudentSQLite3ViewController.h
//  StudentSQLite3
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "sqlite3.h"

#define DATA_FILE @"data.sqlite3"
#define TABLE_NAME @"student"
#define FIELDS_NAME_SID @"studentId" 
#define FIELDS_NAME_SNAME @"studentName" 
#define FIELDS_NAME_SCLASS @"studentClass"

@interface StudentSQLite3ViewController : UIViewController {
    
	UITextField *studentId;
	UITextField *studentName;
	UITextField *studentClass;
	sqlite3 *db;
	
}
@property (nonatomic, retain) IBOutlet UITextField  *studentId;
@property (nonatomic, retain) IBOutlet UITextField  *studentName;
@property (nonatomic, retain) IBOutlet UITextField  *studentClass;

-(IBAction) save;
-(IBAction) load;
-(IBAction)textFieldDoneEditing:(id)sender;
-(NSString *)dataFilePath;

@end

