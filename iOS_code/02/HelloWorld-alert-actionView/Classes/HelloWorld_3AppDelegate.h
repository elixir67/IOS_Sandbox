//
//  HelloWorld_3AppDelegate.h
//  HelloWorld-3
//
//  Created by tony on 11-4-20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloWorld_3ViewController;

@interface HelloWorld_3AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HelloWorld_3ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HelloWorld_3ViewController *viewController;

@end

