//
//  ProgressViewAppDelegate.m
//  ProgressView
//
//  Created by Abel on 9/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ProgressViewAppDelegate.h"
#import "ProgressViewViewController.h"

@implementation ProgressViewAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
