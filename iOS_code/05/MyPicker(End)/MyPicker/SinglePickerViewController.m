//
//  SinglePickerViewController.m
//  MyPicker
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SinglePickerViewController.h"

@implementation SinglePickerViewController

@synthesize pickerData;
@synthesize picker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"single";
        self.tabBarItem.image = [UIImage imageNamed:@"singleicon"];
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

- (void)viewDidLoad {
	NSArray *array = [[NSArray alloc] initWithObjects:@"欧洲", 
					  @"南美", @"非洲", @"北美",
					  @"亚洲", @"大洋洲", nil];
	self.pickerData = array;
	[array release];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.picker = nil;
	self.pickerData = nil;
}

- (void)dealloc {
	[picker release];
	[pickerData release];
    [super dealloc];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(IBAction)onClickButton:(id)sender {
	NSInteger row = [picker selectedRowInComponent:0];
	NSString *selected = [pickerData objectAtIndex:row];
	NSString *title = [[NSString alloc] initWithFormat:@"你选择了 %@!", selected];
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title 
                                                    message:@"谢谢你的选择." 
                                                   delegate:nil 
                                          cancelButtonTitle:@"Ok" 
                                          otherButtonTitles:nil];
	[alert show];
	[alert release];
	[title release];
}

#pragma mark 实现协议UIPickerViewDelegate方法
-(NSString *)pickerView:(UIPickerView *)pickerView 
            titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	return [pickerData objectAtIndex:row];
}

#pragma mark 实现协议UIPickerViewDataSource方法
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView 
numberOfRowsInComponent:(NSInteger)component {
	return [pickerData count];
}

@end
