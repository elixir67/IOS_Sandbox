//
//  MutilViewSwitchViewController.h
//  MutilViewSwitch
//
//  Created by tony on 10-9-2.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlueViewController.h"
#import "YellowViewController.h"

@interface MutilViewSwitchViewController : UIViewController {
	YellowViewController *yellowViewController;
	BlueViewController *blueViewController;
}
@property (nonatomic, retain) YellowViewController *yellowViewController;
@property (nonatomic, retain) BlueViewController *blueViewController;

-(IBAction) switchViews:(id)sender;

@end

