//
//  ButtonsBackgroundAppDelegate.h
//  ButtonsBackground
//
//  Created by James Brannan on 6/22/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ButtonsBackgroundViewController;

@interface ButtonsBackgroundAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ButtonsBackgroundViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ButtonsBackgroundViewController *viewController;

@end

