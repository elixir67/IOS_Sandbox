//
//  HelloWorld_3ViewController.h
//  HelloWorld-3
//
//  Created by tony on 11-4-20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorld_3ViewController : UIViewController {//<UIActionSheetDelegate,UIAlertViewDelegate>{
	UITextField *txtName;
}

@property (nonatomic, retain) IBOutlet UITextField *txtName;
-(IBAction)textFieldDoneEditing:(id)sender;
-(IBAction)backgroundTap:(id)sender;
-(IBAction)testAlert;
-(IBAction)testActionSheet;

@end