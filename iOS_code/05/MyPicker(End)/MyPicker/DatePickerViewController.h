//
//  DatePickerViewController.h
//  MyPicker
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatePickerViewController : UIViewController {
    IBOutlet UIDatePicker *datePicker;
}

@property (nonatomic, retain)  UIDatePicker *datePicker;

-(IBAction)onClickButton:(id)sender;

@end
