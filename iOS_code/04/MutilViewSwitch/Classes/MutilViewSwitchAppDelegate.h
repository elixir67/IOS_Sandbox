//
//  MutilViewSwitchAppDelegate.h
//  MutilViewSwitch
//
//  Created by tony on 10-9-2.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MutilViewSwitchViewController;

@interface MutilViewSwitchAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MutilViewSwitchViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MutilViewSwitchViewController *viewController;

@end

