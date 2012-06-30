//
//  SwitchSliderAppDelegate.h
//  SwitchSlider
//
//  Created by tony on 10-9-1.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchSliderViewController;

@interface SwitchSliderAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SwitchSliderViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SwitchSliderViewController *viewController;

@end

