//
//  PostViewController.h
//  POSTSample
//
//  Created by GUAN TONY on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostViewController : UIViewController
{
    UIActivityIndicatorView *activityIndicator;
    UITextField *txtUserName;
    UITextField *txtPwd;
    NSString *resultString;
}

@property (nonatomic, retain) IBOutlet UITextField *txtPwd;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (nonatomic, retain) IBOutlet UITextField *txtUserName;

/*
 * 响应按钮点击
 */
-(IBAction)login:(id)sender;

/*
 * 关闭键盘
 */
-(IBAction)textFieldDoneEditing:(id)sender;
@end

