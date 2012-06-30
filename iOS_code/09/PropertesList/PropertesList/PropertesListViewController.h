//
//  PropertesListViewController.h
//  PropertesList
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PropertesListViewController : UIViewController{
    UITextField *studentId;
    UITextField *studentName;
    UITextField *studentClass;
}
@property (nonatomic, retain) IBOutlet UITextField  *studentId;
@property (nonatomic, retain) IBOutlet UITextField  *studentName;
@property (nonatomic, retain) IBOutlet UITextField  *studentClass;

-(IBAction) save;
-(IBAction) load;
-(IBAction)textFieldDoneEditing:(id)sender;

@end