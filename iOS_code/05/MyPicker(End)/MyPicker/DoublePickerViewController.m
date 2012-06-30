//
//  DoublePickerViewController.m
//  MyPicker
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DoublePickerViewController.h"

@implementation DoublePickerViewController

@synthesize pickerData1,pickerData2,picker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Double";
        self.tabBarItem.image = [UIImage imageNamed:@"doubleicon"];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *array1 = [[NSArray alloc] initWithObjects:@"欧洲", 
					   @"南美", @"非洲", @"北美",
					   @"亚洲", @"大洋洲", nil];
	self.pickerData1 = array1;
	[array1 release];
    
	NSArray *array2 = [[NSArray alloc] initWithObjects:@"足球", 
					   @"篮球", @"羽毛球", @"乒乓球", nil];
	self.pickerData2 = array2;
	[array2 release];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.picker = nil;
    self.pickerData1 = nil;
    self.pickerData2 = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [picker release];
    [pickerData1 release];
    [pickerData2 release];
    [super dealloc];
}

#pragma mark--数据源协议方法
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return [pickerData1 count];
    } else {
        return [pickerData2 count];
    } 
}

#pragma mark--委托协议方法
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return [pickerData1 objectAtIndex:row];
    } else {
        return [pickerData2 objectAtIndex:row];
    } 
}

-(IBAction) onClick:(id)sender 
{
    NSInteger row1 = [picker selectedRowInComponent:0];
    NSInteger row2 = [picker selectedRowInComponent:1];
	NSString *selected1 = [pickerData1 objectAtIndex:row1];
	NSString *selected2 = [pickerData2 objectAtIndex:row2];
	
	NSString *title = [[NSString alloc] initWithFormat:@"你选择了 %@的%@项目!", selected1,selected2];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title 
                                                    message:@"谢谢你的选择."delegate:nil  cancelButtonTitle:@"Ok" 
                                          otherButtonTitles:nil];
    [alert show];
    [alert release];
    [selected1 release];
    [selected2 release];
    [title release];
}

@end
