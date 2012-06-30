//
//  DependentPickerViewController.m
//  MyPicker
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DependentPickerViewController.h"

@implementation DependentPickerViewController

@synthesize data;
@synthesize pickerData1,pickerData2;
@synthesize picker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"关联";
        self.tabBarItem.image = [UIImage imageNamed:@"dependenticon"];
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

- (void)dealloc {
    [data release];
    [pickerData1 release];
    [pickerData2 release];
    [picker release];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.data = nil;
    self.pickerData1 = nil;
    self.pickerData2 = nil;
    self.picker = nil;
    
}

-(void)viewDidLoad 
{
	NSBundle *bundle = [NSBundle mainBundle];
	NSString *plistPath = [bundle pathForResource:@"足球队dictionary"  
                                           ofType:@"plist"];
	NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
	self.data = dict;
	[dict release];
	
	NSArray *col1 = [self.data allKeys];
	NSArray *sorted = [col1 sortedArrayUsingSelector:@selector(compare:)];
	self.pickerData1 = sorted;
	
	NSString *seletedCol1 = [self.pickerData1 objectAtIndex:0];
	NSArray *col2 = [self.data objectForKey:seletedCol1];
	self.pickerData2 = col2;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark 实现协议UIPickerViewDataSource方法
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView 
numberOfRowsInComponent:(NSInteger)component {
	if (component == 0) {//选择第一列，“小组”
		return [self.pickerData1 count];
	} else {//选择第二列，“参赛球队”
		return [self.pickerData2 count];
	}
	
}

#pragma mark 实现协议UIPickerViewDelegate方法
-(NSString *)pickerView:(UIPickerView *)pickerView 
			titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	if (component == 0) {//选择第一列，“小组”
		return [self.pickerData1 objectAtIndex:row];
	} else {//选择第二列，“参赛球队”
		return [self.pickerData2 objectAtIndex:row];
	}
}

- (void)pickerView:(UIPickerView *)pickerView 
	  didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	if (component == 0) {
		NSString *selectedCol1 = [self.pickerData1 objectAtIndex:row];
		NSArray *array = [self.data objectForKey:selectedCol1];
		self.pickerData2 = array;
		[self.picker reloadComponent:1];
	}
}

-(IBAction)onClick:(id)sender {
	NSInteger row1 = [picker selectedRowInComponent:0];
	NSInteger row2 = [picker selectedRowInComponent:1];
	NSString *selected1 = [pickerData1 objectAtIndex:row1];
	NSString *selected2 = [pickerData2 objectAtIndex:row2];
	
	NSString *title = [[NSString alloc] initWithFormat:@"你选择了%@的%@队!",
					   selected1,selected2];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title 							        message:@"谢谢你的选择." delegate:nil 
                                          cancelButtonTitle:@"Ok" 
                                          otherButtonTitles:nil];
	[alert show];
	[alert release];
 	[title release];	
}




@end
