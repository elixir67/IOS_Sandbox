//
//  ToolBarAppDelegate.h
//  ToolBar
//
//  Created by tony on 10-9-2.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToolBarViewController;

@interface ToolBarAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ToolBarViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ToolBarViewController *viewController;

@end

