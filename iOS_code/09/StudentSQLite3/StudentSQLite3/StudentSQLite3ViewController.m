//
//  StudentSQLite3ViewController.m
//  StudentSQLite3
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "StudentSQLite3ViewController.h"

@implementation StudentSQLite3ViewController


@synthesize studentId;
@synthesize studentName;
@synthesize studentClass;

-(NSString*)dataFilePath {
	NSArray *myPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES); 
	NSString *myDocPath = [myPaths objectAtIndex:0];
	NSString *filename = [myDocPath  stringByAppendingPathComponent:DATA_FILE];
	return filename;
}

-(IBAction) save {
	NSString *filename = [self dataFilePath];
	NSLog(@"%@",filename);
	if (sqlite3_open([filename UTF8String], &db) != SQLITE_OK) {
		sqlite3_close(db);
		NSAssert(NO,@"数据库打开失败。");
	} else {
		
		NSString *sqlStr = [NSString stringWithFormat: @"INSERT OR REPLACE INTO %@ (%@, %@, %@) VALUES (?,?,?)", 
							TABLE_NAME, FIELDS_NAME_SID, FIELDS_NAME_SNAME, FIELDS_NAME_SCLASS];
		
		sqlite3_stmt *statement;
		//预处理过程
		if (sqlite3_prepare_v2(db, [sqlStr UTF8String], -1, &statement, NULL) == SQLITE_OK) {
			//绑定参数开始
			sqlite3_bind_text(statement, 1, [studentId.text UTF8String], -1, NULL);
			sqlite3_bind_text(statement, 2, [studentName.text UTF8String], -1, NULL); 
			sqlite3_bind_text(statement, 3, [studentClass.text UTF8String], -1, NULL);
			
			
			//执行插入
			if (sqlite3_step(statement) != SQLITE_DONE) {
				NSAssert(NO, @"插入数据失败。");
			}
		}
		
		sqlite3_finalize(statement);
		sqlite3_close(db);
		
	}
	
	
}

-(IBAction) load {
	NSString *filename = [self dataFilePath];
	NSLog(@"%@",filename);
	if (sqlite3_open([filename UTF8String], &db) != SQLITE_OK) {
		sqlite3_close(db);
		NSAssert(NO,@"数据库打开失败。");
	} else {
		
		NSString *qsql = [NSString stringWithFormat: @"SELECT %@,%@,%@ FROM %@ where %@ = ?", FIELDS_NAME_SID, FIELDS_NAME_SNAME, FIELDS_NAME_SCLASS, TABLE_NAME,FIELDS_NAME_SID];
		
		sqlite3_stmt *statement;
		//预处理过程
		if (sqlite3_prepare_v2(db, [qsql UTF8String], -1, &statement, NULL) == SQLITE_OK) {
			//绑定参数开始
			sqlite3_bind_text(statement, 1, "1000", -1, NULL);
			
			//执行
			while (sqlite3_step(statement) == SQLITE_ROW) { 
				char *field1 = (char *) sqlite3_column_text(statement, 0);
				NSString *field1Str = [[NSString alloc] initWithUTF8String: field1]; 
				studentId.text = field1Str;
				
				char *field2 = (char *) sqlite3_column_text(statement, 1); 
				NSString *field2Str = [[NSString alloc] initWithUTF8String: field2]; 
				studentName.text = field2Str;
				
				char *field3 = (char *) sqlite3_column_text(statement, 2); 
				NSString *field3Str = [[NSString alloc] initWithUTF8String: field3];
				studentClass.text = field3Str;
				
				[field1Str release];
				[field2Str release]; 
				[field3Str release];
			}
		}
		
		sqlite3_finalize(statement);
		sqlite3_close(db);
		
	}	
}

-(IBAction)textFieldDoneEditing:(id)sender {
	
	[sender resignFirstResponder];
	
}

- (void)viewDidLoad {
	NSString *filename = [self dataFilePath];
	NSLog(@"%@",filename);
	if (sqlite3_open([filename UTF8String], &db) != SQLITE_OK) {
		sqlite3_close(db);
		NSAssert(NO,@"数据库打开失败。");
	} else {
		char *err;
		NSString *createSQL = [NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ TEXT PRIMARY KEY, %@ TEXT, %@ TEXT);" ,
							   TABLE_NAME,FIELDS_NAME_SID,FIELDS_NAME_SNAME,FIELDS_NAME_SCLASS];
		if (sqlite3_exec(db,[createSQL UTF8String],NULL,NULL,&err) != SQLITE_OK) {
			sqlite3_close(db);
			NSAssert1(NO, @"建表失败, %@", err);
		}
		sqlite3_close(db);
	}
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[studentId release];
	[studentName release];
	[studentClass release];
    [super dealloc];
}

@end
