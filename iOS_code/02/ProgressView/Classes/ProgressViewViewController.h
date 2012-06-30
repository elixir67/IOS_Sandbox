//
//  ProgressViewViewController.h
//  ProgressView
//
//  Created by Abel on 9/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressViewViewController : UIViewController {
	IBOutlet UIProgressView *Progress; 
	NSTimer *timer;
}

@property (nonatomic, retain) IBOutlet UIProgressView *Progress; 
@property (nonatomic, assign) NSTimer *timer;
	
-(IBAction)start;

@end
 
