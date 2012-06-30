//
//  WhereAmIMainViewController.m
//  WhereAmI
//
//  Created by GUAN TONY on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WhereAmIMainViewController.h"

@implementation WhereAmIMainViewController

@synthesize locationManager;
@synthesize longitudeTextField;
@synthesize latitudeTextField;
@synthesize altitudeTextField;


-(IBAction)goWebMap
{
    CLLocation *lastLocation = [locationManager location];
    if(!lastLocation) 
    {
        UIAlertView *alert;
        alert = [[UIAlertView alloc] 
                 initWithTitle:@"系统错误" 
                 message:@"还没有接收到数据！" 
                 delegate:nil cancelButtonTitle:nil 
                 otherButtonTitles:@"OK", nil];
        
        [alert show];
        [alert release];
        return;
    }
    
    NSString *urlString = [NSString stringWithFormat:
                           @"http://maps.google.com/maps?q=Here+I+Am!@%f,%f", 
                           lastLocation.coordinate.latitude, 
                           lastLocation.coordinate.longitude];
    NSURL *url = [NSURL URLWithString:urlString];
    
    [[UIApplication sharedApplication] openURL:url];
    
}

- (IBAction)update
{
    [self reloadData ];
}

-(void)reloadData
{
    
    self.locationManager = [[[CLLocationManager alloc] init] autorelease];
	self.locationManager.delegate = self;
	self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
	self.locationManager.distanceFilter = 1000.0f;
	[self.locationManager startUpdatingLocation];
}

#pragma mark --
#pragma mark Core Location委托方法用于实现位置的更新
- (void)locationManager:(CLLocationManager *)manager 
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation {
	latitudeTextField.text = [NSString stringWithFormat:@"%3.5f",
							  newLocation.coordinate.latitude];
	longitudeTextField.text = [NSString stringWithFormat:@"%3.5f", 
							   newLocation.coordinate.longitude];    
    altitudeTextField.text = [NSString stringWithFormat:@"%3.5f", 
                              newLocation.altitude];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error 
{ 
    NSLog(@"error = %@",error);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
	[locationManager release];
	[longitudeTextField release];
    [altitudeTextField release];
	[latitudeTextField release];
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    [locationManager stopUpdatingLocation];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(WhereAmIFlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)showInfo:(id)sender
{    
    WhereAmIFlipsideViewController *controller = [[[WhereAmIFlipsideViewController alloc] initWithNibName:@"WhereAmIFlipsideViewController" bundle:nil] autorelease];
    controller.delegate = self;
    controller.lastLocation = [locationManager location];
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

@end
