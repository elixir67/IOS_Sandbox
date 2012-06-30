//
//  UIActivityIndicatorAppDelegate.m
//  UIActivityIndicator
//
//  Created by tony on 10-9-1.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "UIActivityIndicatorAppDelegate.h"
#import "UIActivityIndicatorViewController.h"

@implementation UIActivityIndicatorAppDelegate

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
