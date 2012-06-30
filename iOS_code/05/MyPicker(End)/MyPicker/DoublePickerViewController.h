//
//  DoublePickerViewController.h
//  MyPicker
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoublePickerViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray *pickerData1;
    NSArray *pickerData2;
    UIPickerView  *picker;
}
@property (nonatomic, retain)  NSArray  *pickerData1;
@property (nonatomic, retain)  NSArray  *pickerData2;

@property (nonatomic, retain) IBOutlet  UIPickerView  *picker;

-(IBAction) onClick:(id)sender;

@end
