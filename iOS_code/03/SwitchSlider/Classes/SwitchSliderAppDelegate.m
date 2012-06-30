//
//  SwitchSliderAppDelegate.m
//  SwitchSlider
//
//  Created by tony on 10-9-1.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "SwitchSliderAppDelegate.h"
#import "SwitchSliderViewController.h"

@implementation SwitchSliderAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
