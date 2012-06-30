//
//  MySettingFlipsideViewController.h
//  MySetting
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MySettingFlipsideViewController;

@protocol MySettingFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(MySettingFlipsideViewController *)controller;
@end

@interface MySettingFlipsideViewController : UIViewController
{
    UILabel *myPSToggleSwitchSpecifier;
	UILabel *myPSSliderSpecifier;
}
@property (nonatomic, retain) IBOutlet UILabel  *myPSToggleSwitchSpecifier;
@property (nonatomic, retain) IBOutlet UILabel  *myPSSliderSpecifier;

@property (assign, nonatomic) IBOutlet id <MySettingFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
