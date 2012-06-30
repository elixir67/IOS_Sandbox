//
//  UIProgressAppDelegate.h
//  UIProgress
//
//  Created by tony on 10-9-1.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIProgressViewController;

@interface UIProgressAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UIProgressViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIProgressViewController *viewController;

@end

