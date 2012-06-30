//
//  WhereAmIFlipsideViewController.h
//  WhereAmI
//
//  Created by GUAN TONY on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h> 
#import <MapKit/MapKit.h>
#import "MapLocation.h"

@class WhereAmIFlipsideViewController;

@protocol WhereAmIFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(WhereAmIFlipsideViewController *)controller;
@end

@interface WhereAmIFlipsideViewController : UIViewController
<MKMapViewDelegate,MKReverseGeocoderDelegate>
{
    CLLocation *lastLocation;
	IBOutlet MKMapView   *mapView;
}

@property (nonatomic, retain) CLLocation *lastLocation;
@property (nonatomic, retain)  MKMapView *mapView;

@property (assign, nonatomic) IBOutlet id <WhereAmIFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

-(IBAction)search:(id)sender;

@end
