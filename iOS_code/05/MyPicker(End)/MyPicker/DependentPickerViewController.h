//
//  DependentPickerViewController.h
//  MyPicker
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DependentPickerViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSDictionary *data;
    NSArray *pickerData1;
    NSArray *pickerData2;
    UIPickerView  *pickerView;
}

@property (nonatomic, retain)  NSDictionary  *data;
@property (nonatomic, retain)  NSArray  *pickerData1;
@property (nonatomic, retain)  NSArray  *pickerData2;
@property (nonatomic, retain) IBOutlet  UIPickerView  *picker;

-(IBAction)onClick:(id)sender;

@end
