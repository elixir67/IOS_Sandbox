//
//  SinglePickerViewController.h
//  MyPicker
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SinglePickerViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource> {
    UIPickerView  *picker;
    NSArray	*pickerData;
}

@property (nonatomic, retain) IBOutlet UIPickerView *picker;
@property (nonatomic, retain)  NSArray	*pickerData;

-(IBAction)onClickButton:(id)sender;

@end