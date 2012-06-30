//
//  ButtonsBackgroundAppDelegate.m
//  ButtonsBackground
//
//  Created by James Brannan on 6/22/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ButtonsBackgroundAppDelegate.h"
#import "ButtonsBackgroundViewController.h"

@implementation ButtonsBackgroundAppDelegate

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
