//
//  SegmentAppDelegate.h
//  Segment
//
//  Created by James Brannan on 6/22/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SegmentViewController;

@interface SegmentAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SegmentViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SegmentViewController *viewController;

@end

