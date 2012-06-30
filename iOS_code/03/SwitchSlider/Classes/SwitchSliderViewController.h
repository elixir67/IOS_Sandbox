//
//  SwitchSliderViewController.h
//  SwitchSlider
//
//  Created by tony on 10-9-1.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchSliderViewController : UIViewController {
	 UISwitch * mySwitch;
}

@property(nonatomic, retain)IBOutlet UISwitch * mySwitch;

-(IBAction) handleSwitch: (id) sender; 
-(IBAction) handleSlider: (id) sender;

@end

