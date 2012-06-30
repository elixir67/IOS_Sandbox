//
//  Hello_WorldAppDelegate.m
//  Hello World
//
//  Created by tony on 10-8-28.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "Hello_WorldAppDelegate.h"
#import "Hello_WorldViewController.h"

@implementation Hello_WorldAppDelegate

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
