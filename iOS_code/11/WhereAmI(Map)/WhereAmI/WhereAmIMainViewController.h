//
//  WhereAmIMainViewController.h
//  WhereAmI
//
//  Created by GUAN TONY on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WhereAmIFlipsideViewController.h"
#import <CoreLocation/CoreLocation.h> 
#import <CoreLocation/CLLocationManagerDelegate.h> 

@interface WhereAmIMainViewController : UIViewController <WhereAmIFlipsideViewControllerDelegate,CLLocationManagerDelegate> {
    
    CLLocationManager *locationManager;
    UITextField *longitudeTextField;
    UITextField *latitudeTextField;
    UITextField *altitudeTextField;
    
}

@property(nonatomic, retain) CLLocationManager *locationManager;
@property(nonatomic, retain) IBOutlet UITextField *longitudeTextField;
@property(nonatomic, retain) IBOutlet UITextField *altitudeTextField;
@property(nonatomic, retain) IBOutlet UITextField *latitudeTextField;

- (IBAction)showInfo:(id)sender;

- (IBAction)update;

-(void)reloadData;

@end
