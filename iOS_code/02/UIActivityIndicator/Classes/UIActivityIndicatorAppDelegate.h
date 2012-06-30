//
//  UIActivityIndicatorAppDelegate.h
//  UIActivityIndicator
//
//  Created by tony on 10-9-1.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIActivityIndicatorViewController;

@interface UIActivityIndicatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UIActivityIndicatorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorViewController *viewController;

@end

