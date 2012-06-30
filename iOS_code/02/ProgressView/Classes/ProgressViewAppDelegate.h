//
//  ProgressViewAppDelegate.h
//  ProgressView
//
//  Created by Abel on 9/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ProgressViewViewController;

@interface ProgressViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ProgressViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ProgressViewViewController *viewController;

@end

