//
//  MySettingMainViewController.h
//  MySetting
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MySettingFlipsideViewController.h"

@interface MySettingMainViewController : UIViewController <MySettingFlipsideViewControllerDelegate>
{
    UILabel *username;
}

@property (nonatomic, retain) IBOutlet UILabel  *username;

- (IBAction)showInfo:(id)sender;

@end
